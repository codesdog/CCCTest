
using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Threading;
using System.Data.OleDb;
using System.Data.SqlClient;

namespace xuanke

{
  // ���ݿ�ӿ���
	public class DataBase
	{
		//˽�б��������ݿ�����
		protected OleDbConnection Connection;
        protected string ConnectionString;
        
		//���캯��
		public DataBase()
		{
            ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connStr"].ConnectionString;

        
        
        }
		
		//���������������ݿ�����
		private void Open()
        {
		  //�ж����ݿ������Ƿ����
			if (Connection == null)
			{
			  //�����ڣ��½�����
				Connection = new OleDbConnection(ConnectionString);
				Connection.Open();
			}
			else
			{
			  //���ڣ��ж��Ƿ��ڹر�״̬
			  if (Connection.State.Equals(ConnectionState.Closed))
				  Connection.Open();    //���Ӵ��ڹر�״̬�����´�
			}
		}

		//���з������ر����ݿ�����
		public void Close() 
		{
			if (Connection.State.Equals(ConnectionState.Open))
			{
				Connection.Close();     //���Ӵ��ڴ�״̬���ر�����
			}
		}

        /// <summary>
		/// �����������ͷŷ��й���Դ
		/// </summary>
		~DataBase()
		{
			try
			{
				if (Connection != null)
					Connection.Close();
			}
			catch{}
			try
			{
				Dispose();
			}
			catch{}
		}

		//���з������ͷ���Դ
		public void Dispose()
		{
			if (Connection != null)		// ȷ�����ӱ��ر�
			{
				Connection.Dispose();
				Connection = null;
			}
		}		

		//���з���������OleDb��䣬�����Ƿ��ѯ����¼
		public bool GetRecord(string XOleDbString)
		{
            Open();
            OleDbDataAdapter adapter = new OleDbDataAdapter(XOleDbString, Connection);
            DataSet dataset = new DataSet();
            adapter.Fill(dataset);
            Close();

            if (dataset.Tables[0].Rows.Count > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}

		//���з���������OleDb����õ�����ֵ
		//OleDbString�ĸ�ʽ��select count(*) from XXX where ...
		//                 select max(XXX) from YYY where ...
		public int GetRecordCount(string XOleDbString)
		{
            string SCount;

			Open();
			OleDbCommand Cmd = new OleDbCommand(XOleDbString,Connection);
            SCount = Cmd.ExecuteScalar().ToString().Trim();
            if (SCount=="")
            SCount="0";
			Close();
			return Convert.ToInt32(SCount);
		}
       

		//���з���������XWhere�������ݱ�XTableName�е�ĳЩ��¼
		//XTableName--����
		//XHT--��ϣ����Ϊ�ֶ�����ֵΪ�ֶ�ֵ		
			

        //˽�з��������һ���������ô洢���̵�OleDbCommand
        //���룺
        //      ProcName - �洢������
        //      Params   - �������ô洢���̵Ĳ�����
        private OleDbCommand CreateCommand(string ProcName, OleDbParameter[] Prams) 
        {
          Open();
          OleDbCommand Cmd = new OleDbCommand(ProcName, Connection);
       

          if (Prams != null) 
          {
            foreach (OleDbParameter Parameter in Prams)
              Cmd.Parameters.Add(Parameter);
          }

          return Cmd;
        }

        //���з�����ʵ����һ�����ڵ��ô洢���̵Ĳ���
        //���룺
        //      ParamName - ��������
        //      DbType		- ��������
        //      Size			- ������С
        //			Direction - ���ݷ���
        //			Value			- ֵ
      

        //���з��������ô洢����(������)
        //���룺
        //      ProcName - �洢������
        //      Params   - �������ô洢���̵Ĳ�����
        //�����
        //      ��Update��Insert��Delete��������Ӱ�쵽���������������Ϊ-1
        public int RunProc(string ProcName, OleDbParameter[] Params) 
        {
          int Count = -1;
          OleDbCommand Cmd = CreateCommand(ProcName, Params);
          Count = Cmd.ExecuteNonQuery();
          Close();
          return Count;
        }

        //���з��������ô洢����(��������)
        //���룺
        //			ProcName�洢������
		    //�����
        //			��ִ�н����OleDbDataReader����
		    //ע�⣺ʹ�ú��������OleDbDataReader.Close()����
        public OleDbDataReader RunProcGetReader(string ProcName) 
        {
          OleDbCommand Cmd = CreateCommand(ProcName, null);
          return Cmd.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
        }

		//���з��������ô洢����(������)
		//���룺
		//			ProcName - �洢������
		//      Params	 - �洢������Ҫ�Ĳ���
		//�����
		//			��ִ�н����OleDbDataReader����
		//ע�⣺ʹ�ú��������OleDbDataReader.Close()����
        public OleDbDataReader RunProcGetReader(string ProcName, OleDbParameter[] Params) 
        {
          OleDbCommand Cmd = CreateCommand(ProcName, Params);
          return Cmd.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
        }

        //���з��������ô洢����(������)
        //���룺
        //		ProcName - �洢������
        //      Params	 - �洢������Ҫ�Ĳ���
        //�����
        //			��ִ�н����OleDbDataReader����
        //ע�⣺ʹ�ú��������OleDbDataReader.Close()����
        public int RunProcGetCount(string ProcName, OleDbParameter[] Params)
        {
            OleDbCommand Cmd = CreateCommand(ProcName, Params);            
            string SCount;
            if (Cmd.ExecuteScalar() == null)
            {
                SCount = "";
            }
            else
            {
                SCount = Cmd.ExecuteScalar().ToString().Trim();
            }
           
            if (SCount == "")
                SCount = "0";
            Close();
            return Convert.ToInt32(SCount);
        }

        //���з��������ô洢����(��������)
        //���룺
        //			ProcName�洢������
        //�����
        //			��ִ�н����DataSet����    
        public DataSet GetDataSet(string ProcName)
        {
            Open();
            OleDbDataAdapter adapter = new OleDbDataAdapter(ProcName, Connection);
            DataSet dataset = new DataSet();
            adapter.Fill(dataset);
            Close();
            return dataset;
        }

        //���з��������ô洢����(��������)
        //���룺
        //			ProcName�洢������
        //�����
        //			��ִ�н����DataSet����    
        public DataSet GetDataSet(string ProcName, OleDbParameter[] Params)
        {
            Open();
            OleDbCommand Cmd = CreateCommand(ProcName, Params);
            OleDbDataAdapter adapter = new OleDbDataAdapter(Cmd);
            DataSet dataset = new DataSet();
            adapter.Fill(dataset);
            Close();
            return dataset;
        }
        //���з���������OleDb��䣬����һ��������ݼ�
        public DataSet GetDataSetOleDb(string XOleDbString)
        {
            Open();
            OleDbDataAdapter Adapter = new OleDbDataAdapter(XOleDbString, Connection);
            DataSet Ds = new DataSet();
            Adapter.Fill(Ds);
            Close();
            return Ds;
        }
        //���з���������OleDb��䣬�����¼
        public int Insert(string XOleDbString)
        {
            int Count = 0;
            Open();
            OleDbCommand cmd = new OleDbCommand(XOleDbString, Connection);


            try
            {

                Count = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
              //  throw new Exception(ex.Message);
              
               // Response.Write("<script>alert('" + ex.Message + "��')</script>");
            }  
         
            Close();
            return Count;            
        }
        //���з���������OleDb��䣬�����¼���������ɵ�ID��
        public int GetIDInsert(string XOleDbString)
        {
            int Count = -1;
            Open();
            OleDbCommand cmd = new OleDbCommand(XOleDbString, Connection);
            Count = Convert.ToInt32(cmd.ExecuteScalar().ToString().Trim());
            Close();
            return Count;
        }       
        /// ���з�������ȡ���ݣ�����һ��DataRow��
        public DataRow GetDataRow(String OleDbString)
        {
            DataSet dataset = GetDataSet(OleDbString);
            dataset.CaseSensitive = false;
            if (dataset.Tables[0].Rows.Count > 0)
            {
                return dataset.Tables[0].Rows[0];
            }
            else
            {
                return null;
            }
        }
        /// <summary>
        /// ���з���������һ�����ݱ�
        /// </summary>
        /// <param name="TableName">����</param>
        /// <param name="Cols">��������ֵΪ�ֶ�����ֵΪ�ֶ�ֵ</param>
        /// <param name="Where">Where�Ӿ�</param>
        /// <returns>�Ƿ�ɹ�</returns>
        
        public bool ExecuteOleDb(String[] OleDbStrings)
        {
            bool success = true;
            Open();
            OleDbCommand cmd = new OleDbCommand();
            OleDbTransaction trans = Connection.BeginTransaction();
            cmd.Connection = Connection;
            cmd.Transaction = trans;

            int i = 0;
            try
            {
                foreach (String str in OleDbStrings)
                {
                    cmd.CommandText = str;
                    cmd.ExecuteNonQuery();
                    i++;
                }
                trans.Commit();
            }
            catch
            {                
                success = false;
                Close();
                trans.Rollback();
            }
            finally
            {
                Close();
            }
            return success;
        }
        /// <summary>
        /// ���з�������ȡ���ݣ�����һ��DataTable��
        /// </summary>
        /// <param name="OleDbString">OleDb���</param>
        /// <returns>DataTable</returns>
        public DataTable GetDataTable(String OleDbString)
        {
            DataSet dataset = GetDataSet(OleDbString);
            dataset.CaseSensitive = false;
            return dataset.Tables[0];
        }
	}
}
