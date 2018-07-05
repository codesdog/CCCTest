using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.OleDb;

namespace 东方日出大酒店
{
    class db
    {
        /// <summary>
        /// 数据库连接
        /// </summary>
        private  static string conicution
        {

            get
            {
                string C_conn = "Provider = Microsoft.ACE.OLEDB.12.0; Data Source =" + Application.StartupPath + "\\mydata.accdb";
                return C_conn;
            }

        }


        /// <summary>
        /// 添加,删除,修改
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public static int  My_sql(string sql)
        {
            OleDbConnection conn=null;
            try
            {
                string str = conicution;
                conn = new OleDbConnection(str);
                conn.Open();

                OleDbCommand db = new OleDbCommand(sql, conn);
                db.ExecuteNonQuery();
               
                return 1;
            }

            catch { return -1; }
            finally
            {
                conn.Close();
                conn.Dispose();
            }

        }
     /// <summary>
     /// 返回要显示的一张数据表
     /// </summary>
     /// <param name="sql"></param>
     /// <returns></returns>
        public static DataTable tables(string sql)
        {
            OleDbConnection conn = null;
            
            try
            {
                string str = conicution;
                 conn = new OleDbConnection(str);
                conn.Open();
                OleDbDataAdapter mydb = new OleDbDataAdapter(sql, conn);
                DataTable dt = new DataTable();
                mydb.Fill(dt);
                return dt;
            }
            catch (Exception e)
            {
                throw new Exception(e.Message, e);
            }
            finally
            {
                conn.Close();
                conn.Dispose();
            }

        }
        /// <summary>
        /// 从左截取串  scatitle  的 cid个字符   
        /// </summary>
        /// <param name="scatitle"></param>
        /// <param name="cid"></param>
        /// <returns></returns>
        public static string getleft(string scatitle, int cid)
        {
            string rtn = "";
            if (scatitle.Trim().Length > cid)
            {
                rtn = scatitle.Substring(0, cid) + "...";
            }
            else
            {
                rtn = scatitle;
            }
            return rtn;
        }
        /// <summary>
        /// 过滤非法字符
        /// </summary>
        /// <param name="inputStr"></param>
        /// <returns></returns>
        public static string cutBadStr(string inputStr)
        {
            inputStr = inputStr.ToLower().Replace(",", "");
            inputStr = inputStr.ToLower().Replace("<", "");
            inputStr = inputStr.ToLower().Replace(">", "");
            inputStr = inputStr.ToLower().Replace("%", "");
            inputStr = inputStr.ToLower().Replace(".", "");
            inputStr = inputStr.ToLower().Replace(":", "");
            inputStr = inputStr.ToLower().Replace("#", "");
            inputStr = inputStr.ToLower().Replace("&", "");
            inputStr = inputStr.ToLower().Replace("$", "");
            inputStr = inputStr.ToLower().Replace("^", "");
            inputStr = inputStr.ToLower().Replace("*", "");
            inputStr = inputStr.ToLower().Replace("`", "");
            inputStr = inputStr.ToLower().Replace(" ", "");
            inputStr = inputStr.ToLower().Replace("~", "");
            inputStr = inputStr.ToLower().Replace("or", "");
            inputStr = inputStr.ToLower().Replace("and", "");
            inputStr = inputStr.ToLower().Replace("'", "");
            return inputStr;

        }
        /// <summary>
        /// 说明：留言时按照标准形式显示留言格式；即格式化文本
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static string FormatString(string str)
        {
            str = str.Replace(" ", "&nbsp;&nbsp");
            str = str.Replace("<", "&lt;");
            str = str.Replace(">", "&glt;");
            str = str.Replace('\n'.ToString(), "<br>");
            return str;
        }
       
        ///   <summary>   
        ///   判断是否为数字   
        ///   </summary>   
        ///   <param   name="myObj">传递的参数</param>   
        ///   <returns>返回真假值</returns>   
        public static bool isNumber(Object myObj)
        {
            try
            {
                int i = Convert.ToInt32(myObj);
                return (true);
            }
            catch
            {
                return (false);
            }
        }   
    }
}
