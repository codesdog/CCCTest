
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
  // 数据库接口类
	public class DataBase
	{
		//私有变量，数据库连接
		protected OleDbConnection Connection;
        protected string ConnectionString;
        
		//构造函数
		public DataBase()
		{
            ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connStr"].ConnectionString;

        
        
        }
		
		//保护方法，打开数据库连接
		private void Open()
        {
		  //判断数据库连接是否存在
			if (Connection == null)
			{
			  //不存在，新建并打开
				Connection = new OleDbConnection(ConnectionString);
				Connection.Open();
			}
			else
			{
			  //存在，判断是否处于关闭状态
			  if (Connection.State.Equals(ConnectionState.Closed))
				  Connection.Open();    //连接处于关闭状态，重新打开
			}
		}

		//公有方法，关闭数据库连接
		public void Close() 
		{
			if (Connection.State.Equals(ConnectionState.Open))
			{
				Connection.Close();     //连接处于打开状态，关闭连接
			}
		}

        /// <summary>
		/// 析构函数，释放非托管资源
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

		//公有方法，释放资源
		public void Dispose()
		{
			if (Connection != null)		// 确保连接被关闭
			{
				Connection.Dispose();
				Connection = null;
			}
		}		

		//公有方法，根据OleDb语句，返回是否查询到记录
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

		//公有方法，返回OleDb语句获得的数据值
		//OleDbString的格式：select count(*) from XXX where ...
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
       

		//公有方法，根据XWhere更新数据表XTableName中的某些纪录
		//XTableName--表名
		//XHT--哈希表，键为字段名，值为字段值		
			

        //私有方法，获得一个用来调用存储过程的OleDbCommand
        //输入：
        //      ProcName - 存储过程名
        //      Params   - 用来调用存储过程的参数表
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

        //公有方法，实例化一个用于调用存储过程的参数
        //输入：
        //      ParamName - 参数名称
        //      DbType		- 参数类型
        //      Size			- 参数大小
        //			Direction - 传递方向
        //			Value			- 值
      

        //公有方法，调用存储过程(带参数)
        //输入：
        //      ProcName - 存储过程名
        //      Params   - 用来调用存储过程的参数表
        //输出：
        //      对Update、Insert、Delete操作返回影响到的行数，其他情况为-1
        public int RunProc(string ProcName, OleDbParameter[] Params) 
        {
          int Count = -1;
          OleDbCommand Cmd = CreateCommand(ProcName, Params);
          Count = Cmd.ExecuteNonQuery();
          Close();
          return Count;
        }

        //公有方法，调用存储过程(不带参数)
        //输入：
        //			ProcName存储过程名
		    //输出：
        //			将执行结果以OleDbDataReader返回
		    //注意：使用后主意调用OleDbDataReader.Close()方法
        public OleDbDataReader RunProcGetReader(string ProcName) 
        {
          OleDbCommand Cmd = CreateCommand(ProcName, null);
          return Cmd.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
        }

		//公有方法，调用存储过程(带参数)
		//输入：
		//			ProcName - 存储过程名
		//      Params	 - 存储过程需要的参数
		//输出：
		//			将执行结果以OleDbDataReader返回
		//注意：使用后主意调用OleDbDataReader.Close()方法
        public OleDbDataReader RunProcGetReader(string ProcName, OleDbParameter[] Params) 
        {
          OleDbCommand Cmd = CreateCommand(ProcName, Params);
          return Cmd.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
        }

        //公有方法，调用存储过程(带参数)
        //输入：
        //		ProcName - 存储过程名
        //      Params	 - 存储过程需要的参数
        //输出：
        //			将执行结果以OleDbDataReader返回
        //注意：使用后主意调用OleDbDataReader.Close()方法
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

        //公有方法，调用存储过程(不带参数)
        //输入：
        //			ProcName存储过程名
        //输出：
        //			将执行结果以DataSet返回    
        public DataSet GetDataSet(string ProcName)
        {
            Open();
            OleDbDataAdapter adapter = new OleDbDataAdapter(ProcName, Connection);
            DataSet dataset = new DataSet();
            adapter.Fill(dataset);
            Close();
            return dataset;
        }

        //公有方法，调用存储过程(不带参数)
        //输入：
        //			ProcName存储过程名
        //输出：
        //			将执行结果以DataSet返回    
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
        //公有方法，根据OleDb语句，返回一个结果数据集
        public DataSet GetDataSetOleDb(string XOleDbString)
        {
            Open();
            OleDbDataAdapter Adapter = new OleDbDataAdapter(XOleDbString, Connection);
            DataSet Ds = new DataSet();
            Adapter.Fill(Ds);
            Close();
            return Ds;
        }
        //公有方法，根据OleDb语句，插入记录
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
              
               // Response.Write("<script>alert('" + ex.Message + "！')</script>");
            }  
         
            Close();
            return Count;            
        }
        //公有方法，根据OleDb语句，插入记录并返回生成的ID号
        public int GetIDInsert(string XOleDbString)
        {
            int Count = -1;
            Open();
            OleDbCommand cmd = new OleDbCommand(XOleDbString, Connection);
            Count = Convert.ToInt32(cmd.ExecuteScalar().ToString().Trim());
            Close();
            return Count;
        }       
        /// 公有方法，获取数据，返回一个DataRow。
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
        /// 公有方法，更新一个数据表。
        /// </summary>
        /// <param name="TableName">表名</param>
        /// <param name="Cols">哈西表，键值为字段名，值为字段值</param>
        /// <param name="Where">Where子句</param>
        /// <returns>是否成功</returns>
        
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
        /// 公有方法，获取数据，返回一个DataTable。
        /// </summary>
        /// <param name="OleDbString">OleDb语句</param>
        /// <returns>DataTable</returns>
        public DataTable GetDataTable(String OleDbString)
        {
            DataSet dataset = GetDataSet(OleDbString);
            dataset.CaseSensitive = false;
            return dataset.Tables[0];
        }
	}
}
