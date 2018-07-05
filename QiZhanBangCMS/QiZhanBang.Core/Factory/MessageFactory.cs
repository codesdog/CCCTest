using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.OleDb;
using QiZhanBang.Core.Common;
using QiZhanBang.Core.Model;

namespace QiZhanBang.Core.Factory
{
    public class MessageFactory
    {
        public static void Add(Message info)
        {
            string sql = @"INSERT INTO ecms_message ( 
                            [poster] ,
                            [email] ,
                            [content],[reply],[ischecked]) VALUES (@poster,@email,@content,@reply,@ischecked)";

            OleDbParameter[] prams = { 
                OleDbHelper.MakeInParam("@poster" , OleDbType.VarChar , 50 ,info.poster) ,
                OleDbHelper.MakeInParam("@email" , OleDbType.VarChar , 50 ,info.email) ,
                OleDbHelper.MakeInParam("@content" , OleDbType.VarChar , info.content.Length ,info.content),
                OleDbHelper.MakeInParam("@reply" , OleDbType.VarChar , info.content.Length ,info.reply),
                OleDbHelper.MakeInParam("@ischecked" , OleDbType.Boolean , 1 ,info.ischecked)
            };

            OleDbHelper.ExecuteNonQuery(sql, prams);
        }

        public static void Delete(int messageid)
        {
            string sql = "delete from ecms_message where messageid=" + messageid;
            OleDbHelper.ExecuteNonQuery(sql);
        }

        public static void Update(Message info)
        {
            string sql = @"update ecms_message set 
                            [poster] = @poster,
                            [email] = @email,
                            [content] = @content,
                            [reply] = @reply,[ischecked]=@ischecked where [messageid] = @messageid";

            OleDbParameter[] prams = { 
                OleDbHelper.MakeInParam("@poster" , OleDbType.VarChar , 50 ,info.poster) ,
                OleDbHelper.MakeInParam("@email" , OleDbType.VarChar , 50 ,info.email) ,
                OleDbHelper.MakeInParam("@content" , OleDbType.VarChar , info.content.Length ,info.content),
                OleDbHelper.MakeInParam("@reply" , OleDbType.VarChar , info.content.Length ,info.reply),
                OleDbHelper.MakeInParam("@ischecked" , OleDbType.Boolean , 1 ,info.ischecked),
                OleDbHelper.MakeInParam("@messageid" , OleDbType.Integer , 4 ,info.messageid)
            };

            OleDbHelper.ExecuteNonQuery(sql, prams);
        }

        public static Message Get(int messageid)
        {
            string sql = "select * from ecms_message where [messageid] = " + messageid;

            Message info = null;

            DataTable dt = OleDbHelper.ExecuteDataset(sql).Tables[0];
            if (dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];

                info = new Message();
                info.poster = dr["poster"].ToString() ;
                info.email = dr["email"].ToString();
                info.messageid = Int32.Parse(dr["messageid"].ToString()) ;
                info.content = dr["content"].ToString() ;
                info.reply = dr["reply"].ToString() ;
                info.ischecked = Boolean.Parse( dr["ischecked"].ToString() );
                info.createdate = DateTime.Parse( dr["createdate"].ToString() );
            }

            return info;
        }

        public static DataTable GetList(string whereSql)
        {
            string sql = "select * from [ecms_message] order by messageid desc";  //
            if (whereSql != string.Empty)
            {
                sql = "select * from [ecms_message] where " + whereSql + " order by messageid desc";
            }

            DataTable dt = OleDbHelper.ExecuteDataset(sql).Tables[0];

            return dt;
        }

        public static DataTable GetList(int pageSize, int pageIndex, string whereSql, out int totalcount)
        {
            DataTable dt = GetList(whereSql);
            totalcount = dt.Rows.Count;

            DataTable newdt = dt.Clone();

            int startindex = (pageIndex - 1) * pageSize;
            int endindex = startindex + pageSize - 1;

            if (endindex >= totalcount)
                endindex = totalcount - 1;

            for (int i = startindex; i <= endindex; i++)
            {
                newdt.ImportRow(dt.Rows[i]);
            }

            return newdt;

        }
    }
}
