using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.OleDb;
using QiZhanBang.Core.Common;
using QiZhanBang.Core.Model;

namespace QiZhanBang.Core.Factory
{
    public class SinglePageFactory
    {
        public static void Add(SinglePage info)
        {
            string sql = @"INSERT INTO ecms_singlepage ( 
                            [serialno] ,
                            [title] ,
                            [content] ) VALUES (@serialno,@title,@content)" ;

            OleDbParameter[] prams = { 
                OleDbHelper.MakeInParam("@serialno" , OleDbType.VarChar , 50 ,info.serialno) ,
                OleDbHelper.MakeInParam("@title" , OleDbType.VarChar , 50 ,info.title) ,
                OleDbHelper.MakeInParam("@content" , OleDbType.VarChar , info.content.Length ,info.content)
            };

            OleDbHelper.ExecuteNonQuery(sql, prams);
        }

        public static void Delete(int pageid)
        {
            string sql = "delete from ecms_singlepage where pageid=" + pageid ;
            OleDbHelper.ExecuteNonQuery(sql);
        }

        public static void Update(SinglePage info)
        {
            string sql = @"update ecms_singlepage set 
                            [serialno] = @serialno,
                            [title] = @title,
                            [content] = @content where [pageid] = @pageid" ;

            OleDbParameter[] prams = { 
                OleDbHelper.MakeInParam("@serialno" , OleDbType.VarChar , 50 ,info.serialno) ,
                OleDbHelper.MakeInParam("@title" , OleDbType.VarChar , 50 ,info.title) ,
                OleDbHelper.MakeInParam("@content" , OleDbType.VarChar , info.content.Length ,info.content),
                OleDbHelper.MakeInParam("@pageid" , OleDbType.Integer , 4 ,info.pageid)
            };

            OleDbHelper.ExecuteNonQuery(sql, prams);
        }

        public static SinglePage Get(int pageid)
        {
            string sql = "select * from ecms_singlepage where [pageid] = " + pageid;

            SinglePage info = null;

            DataTable dt = OleDbHelper.ExecuteDataset(sql).Tables[0];
            if (dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];

                info = new SinglePage();
                info.serialno = dr["serialno"].ToString();
                info.pageid = Int32.Parse(dr["pageid"].ToString());
                info.title = dr["title"].ToString();
                info.content = dr["content"].ToString();
            }

            return info;
        }

        public static SinglePage Get(string serialno)
        {
            string sql = "select * from ecms_singlepage where [serialno] = '" + serialno + "'";

            SinglePage info = null;

            DataTable dt = OleDbHelper.ExecuteDataset(sql).Tables[0];
            if (dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];

                info = new SinglePage();
                info.serialno = dr["serialno"].ToString();
                info.pageid = Int32.Parse(dr["pageid"].ToString());
                info.title = dr["title"].ToString();
                info.content = dr["content"].ToString();
            }

            return info;
        }

        public static DataTable GetAll()
        {
            string sql = "select * from [ecms_singlepage]  order by pageid asc";

            DataTable dt = OleDbHelper.ExecuteDataset(sql).Tables[0];

            return dt;
        }
    }
}
