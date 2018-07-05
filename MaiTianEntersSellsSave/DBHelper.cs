using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.OleDb;
using System.Configuration;

namespace HDManagementSoft
{
    class DBHelper
    {
        public static OleDbConnection conn = null;
        public static OleDbCommand cmd = null;
        public static OleDbDataReader odr = null;
        public static string dbconstr = ConfigurationManager.ConnectionStrings["PMConnectionString"].ToString();
        //数据库连接
        public static OleDbConnection Connection
        {
            get
            {
                if (conn == null)
                {
                    conn = new OleDbConnection(dbconstr);
                    conn.Open();
                }
                else if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                else if (conn.State == ConnectionState.Broken)
                {
                    conn.Close();
                    conn.Open();
                }
                return conn;
            }
        }

        /// <summary>
        /// 执行无参查询
        /// </summary>
        /// <param name="safeole"></param>
        /// <returns></returns>
        public static int ExecuteCommand(string safeole)
        {
            OleDbCommand cmd = new OleDbCommand(safeole,Connection);
            int result = cmd.ExecuteNonQuery();
            return result;
        }
        /// <summary>
        /// 执行有参的查询
        /// </summary>
        /// <param name="ole"></param>
        /// <param name="values"></param>
        /// <returns></returns>
        public static int ExecuteCommand(string ole, params OleDbParameter[] values)
        {
            OleDbCommand cmd = new OleDbCommand(ole, Connection);
            cmd.Parameters.AddRange(values);
            return cmd.ExecuteNonQuery();
        }
        /// <summary>
        /// 执行无参语句，并返回执行记录
        /// </summary>
        /// <param name="safeole"></param>
        /// <returns></returns>
        public static int GetScalar(string safeole)
        {
            OleDbCommand cmd = new OleDbCommand(safeole, Connection);
            int result = Convert.ToInt32(cmd.ExecuteScalar());
            return result;
        }
        /// <summary>
        /// 执行带参的语句，并返回执行记录
        /// </summary>
        /// <param name="ole"></param>
        /// <param name="values"></param>
        /// <returns></returns>
        public static int GetScalar(string ole, params OleDbParameter[] values)
        {
            OleDbCommand cmd = new OleDbCommand(ole, Connection);
            cmd.Parameters.AddRange(values);
            int result = Convert.ToInt32(cmd.ExecuteScalar());
            return result;
        }
        /// <summary>
        /// 执行无参语句，并返回oledatareader
        /// </summary>
        /// <param name="safeole"></param>
        /// <returns></returns>
        public static OleDbDataReader GetReader(string safeole)
        {
            OleDbCommand cmd = new OleDbCommand(safeole, Connection);
            OleDbDataReader reader = cmd.ExecuteReader();
            return reader;
        }

        /// <summary>
        /// 执行有参语句，并返回OleDBDataReader
        /// </summary>
        public static OleDbDataReader GetReader(string sql, params OleDbParameter[] values)
        {
            OleDbCommand cmd = new OleDbCommand(sql, Connection);
            cmd.Parameters.AddRange(values);
            OleDbDataReader reader = cmd.ExecuteReader();
            return reader;

        }

        public static DataTable GetDataSet(string safeSql)
        {
            DataSet ds = new DataSet();
            OleDbCommand cmd = new OleDbCommand(safeSql, Connection);
            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            da.Fill(ds);
            conn.Close();
            return ds.Tables[0];
        }

        public static DataTable GetDataSet(string sql, params OleDbParameter[] values)
        {
            DataSet ds = new DataSet();
            OleDbCommand cmd = new OleDbCommand (sql, Connection);
            cmd.Parameters.AddRange(values);
            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            da.Fill(ds);
            conn.Close();
            return ds.Tables[0];
        }
    }
}
