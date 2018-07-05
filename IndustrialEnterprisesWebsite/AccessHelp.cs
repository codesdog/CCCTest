using System;
using System.Configuration;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Text;
using System.Collections;


namespace dbAccessHelp
{
    /// <summary>
    /// AccessHelper 的摘要说明
    /// Access数据库数据访问公共类
    /// </summary>
    public class AccessHelper
    {
        //数据库连接串
       // private static readonly string connectionString = System.Configuration.ConfigurationSettings.AppSettings["access_con"] + System.Web.HttpContext.Current.Server.MapPath(System.Configuration.ConfigurationSettings.AppSettings["access_path"]) + ";";
        public static readonly string connectionString = ConfigurationManager.ConnectionStrings["mydb"].ToString();
        #region 数据库连接对象操作
        /// <summary> 
        /// 打开数据库连接 
        /// </summary> 
        private static OleDbConnection OpenConnection()
        {
            try
            {
                OleDbConnection conn = new OleDbConnection(connectionString);
                conn.Open();
                return conn;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        /// <summary>
        /// 关闭数据库连接释放资源
        /// </summary>
        /// <param name="Conn">数据库连接对象</param>
        public static void DisposeConnection(OleDbConnection Conn)
        {
            if (Conn != null)
            {
                Conn.Close();
                Conn.Dispose();
            }
        }

        #endregion

        /// <summary>
        /// 连接数据库
        /// </summary>
        /// <returns>返回OleDbConnection对象</returns>
        public static OleDbConnection GetCon()
        {
            return new OleDbConnection(connectionString);
        }
        #region SQL操作语句
        /// <summary>
        /// 执行SQL语句
        /// </summary>
        ///<param name="cmdstr">SQL语句</param>
        /// <returns>返回值为int型：成功返1，失败返回0</returns>
        public int sqlEx(string cmdstr)
        {
            OleDbConnection con = GetCon();//连接数据库
            con.Open();//打开连接
            OleDbCommand cmd = new OleDbCommand(cmdstr, con);
            try
            {
                cmd.ExecuteNonQuery();//执行SQL 语句并返回受影响的行数
                return 1;//成功返回１
            }
            catch (Exception e)
            {
                return 0;//失败返回０
            }
            finally
            {
                con.Dispose();//释放连接对象资源
            }
        }
        /// <summary>
        /// 执行Sql查询语句 
        /// </summary>
        /// <param name="strSQL">传入的Sql语句</param>
        /// <returns>返回受影响的行数</returns>
        public static int ExecuteSql(string strSQL)
        {
            try
            {
                OleDbConnection conn = OpenConnection();
                OleDbCommand comm = new OleDbCommand(strSQL, conn);
                int val = comm.ExecuteNonQuery();

                DisposeConnection(conn);
                return val;

            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
        }

        /// <summary>
        /// 执行Sql查询语句,同时进行事务处理
        /// </summary>
        /// <param name="strSQL">传入的Sql语句</param>
        /// <returns>返回受影响的行数</returns>
        public static int ExecuteSqlWithTransaction(string strSQL)
        {
            OleDbTransaction  trans;
            OleDbConnection conn = OpenConnection();
            OleDbCommand comm = new OleDbCommand(strSQL, conn);

            trans = conn.BeginTransaction();
            comm.Transaction = trans;

            try
            {
                int val = comm.ExecuteNonQuery();
                trans.Commit();

                DisposeConnection(conn);
                trans.Dispose();
                return val;
            }
            catch (Exception ex)
            {
                trans.Rollback();
                throw new Exception(ex.Message);
            }
        }
        /// <summary>
        /// 执行带参数sql语句
        /// </summary>
        /// <param name="strSql">存储过程名</param>
        /// <param name="parameters">参数集合</param>
        /// <returns>返回受影响的行数</returns>
        public static int ExecuteSqlWithParms(string strSql, OleDbParameter[] parameters)
        {
            try
            {
                OleDbConnection conn = OpenConnection();
                OleDbCommand comm = new OleDbCommand();
                comm.Connection = conn;

                for (int i = 0; i < parameters.Length; i++)
                {
                    comm.Parameters.Add(parameters[i]);
                }
                comm.CommandType = CommandType.Text;
                comm.CommandText = strSql;
                int val = comm.ExecuteNonQuery();

                DisposeConnection(conn);
                return val;

            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
        }

        #endregion

        #region 数据查询

        /// <summary>
        /// 执行Sql查询语句并返回第一行的第一条记录,返回值为object 使用时需要拆箱操作 -> Unbox 
        /// 例如string userName = (string)ExecuteScalar("select userName from users");
        /// </summary>
        /// <param name="strSQL">传入的Sql语句</param>
        /// <returns>object 返回值</returns>
        public static object ExecuteScalar(string strSQL)
        {
            object obj = new object();
            try
            {
                OleDbConnection conn = OpenConnection();
                OleDbCommand comm = new OleDbCommand(strSQL, conn);
                obj = comm.ExecuteScalar();

                DisposeConnection(conn);
                return obj;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }

        }

        /// <summary>
        /// 返回指定Sql语句的OleDbDataReader，请注意，在使用后请关闭本对象，同时将自动调用closeConnection()来关闭数据库连接 
        /// </summary>
        /// <param name="strSQL">传入的Sql语句</param>
        /// <returns>OleDbDataReader对象</returns>
        public static OleDbDataReader getDataReader(string strSQL)
        {
            OleDbDataReader dr = null;
            OleDbConnection conn = OpenConnection();
            try
            {

                OleDbCommand comm = new OleDbCommand(strSQL, conn);
                dr = comm.ExecuteReader(CommandBehavior.CloseConnection);

                return dr;
            }
            catch (Exception ex)
            {
                if (dr != null && !dr.IsClosed)
                    dr.Close();
                DisposeConnection(conn);
                throw new Exception(ex.Message);
            }

        }

        /// <summary>
        /// 返回指定Sql语句的DataTable
        /// </summary>
        /// <param name="strSQL">传入的Sql语句</param>
        /// <returns>DataTable</returns>
        public static DataTable getDataTable(string strSQL)
        {
            try
            {
                OleDbConnection conn = OpenConnection();
                OleDbCommand comm = new OleDbCommand(strSQL, conn);
                OleDbDataAdapter da = new OleDbDataAdapter(comm);
                DataTable table = new DataTable();
                da.Fill(table);

                DisposeConnection(conn);
                return table;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        /// <summary>
        /// 执行带参数sql语句并返回数据表
        /// </summary>
        /// <param name="strSql">sql语句</param>
        /// <param name="parameters">SqlParameterCollection 输入参数</param>
        /// <returns>dataTable</returns>
        public static DataTable getDataTable(string strSql, OleDbParameter[] parameters)
        {
            OleDbDataAdapter da = new OleDbDataAdapter();
            DataTable datatable = new DataTable();
            try
            {
                OleDbConnection conn = OpenConnection();
                OleDbCommand comm = new OleDbCommand();
                comm.Connection = conn;
                comm.Parameters.Clear();
                comm.CommandType = CommandType.Text;
                comm.CommandText = strSql;

                for (int i = 0; i < parameters.Length; i++)
                {
                    comm.Parameters.Add(parameters[i]);
                }

                da.SelectCommand = comm;
                da.Fill(datatable);

                DisposeConnection(conn);
                return datatable;
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
        }

 
        /// <summary> 
        /// 返回指定Sql语句的DataSet 
        /// </summary> 
        /// <param name="strSQL">传入的Sql语句</param> 
        /// <returns>DataSet</returns> 
        public static DataSet getDataSet(string strSQL)
        {
            DataSet ds = new DataSet();
            OleDbDataAdapter da = new OleDbDataAdapter();
            try
            {
                OleDbConnection conn = OpenConnection();
                OleDbCommand comm = new OleDbCommand(strSQL, conn);
                comm.CommandType = CommandType.Text;
                da.SelectCommand = comm;
                da.Fill(ds);

                DisposeConnection(conn);
                return ds;
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
        }


        /// <summary>
        /// 是否存在值
        /// </summary>
        /// <param name="strSQL"></param>
        /// <returns></returns>
        public static bool isExists(string strSQL)
        {
            try
            {
                OleDbConnection conn = OpenConnection();
                OleDbCommand comm = new OleDbCommand(strSQL, conn);
                OleDbDataReader dr = comm.ExecuteReader();

                if (dr.HasRows) return true;

                DisposeConnection(conn);
                return false;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }

        }

        /// <summary>
        /// 获得该键值在指定表是否存在
        /// </summary>
        /// <param name="tableName">表名</param>
        /// <param name="fieldName">字段名</param>
        /// <param name="value">值</param>
        /// <returns>>是/否</returns>
        public static bool getExistValue(string tableName, string fieldName, object value)
        {
            string Execstr = "select count(*) from {0} where {1}={2}";

            //目标值
            string destobject = null;
            if (value is string)
            {
                destobject = "'" + value.ToString() + "'";
            }
            else if (value is int)
            {
                destobject = value.ToString();
            }
            else if (value is DateTime)
            {
                destobject = "cast(" + value.ToString() + " as smalldatetime)";
            }
            else
                throw new ArgumentException("该类型值未被支持！");
            //格式化字符串
            Execstr = string.Format(Execstr, tableName, fieldName, destobject);

            object obj = ExecuteScalar(Execstr);

            //返回结果
            return ((int)obj) > 0 ? true : false;
        }
        #endregion

    }
}