using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.OleDb;
using QiZhanBang.Core.Common;
using QiZhanBang.Core.Model;

namespace QiZhanBang.Core.Factory
{
    public class LinkCategoryFactory
    {
        public static void Add(LinkCategory info)
        {
            string sql = @"INSERT INTO ecms_linkcategory ( 
                            [categoryname] ,
                            [linktype] ) VALUES (@categoryname,@linktype)";

            OleDbParameter[] prams = { 
                OleDbHelper.MakeInParam("@categoryname" , OleDbType.VarChar , 50 ,info.categoryname) ,
                OleDbHelper.MakeInParam("@linktype" , OleDbType.VarChar , 50 ,info.linktype) 
            };

            OleDbHelper.ExecuteNonQuery(sql, prams);
        }

        public static void Delete(int categoryid)
        {
            string sql = "delete from ecms_linkcategory where categoryid=" + categoryid.ToString() ;
            OleDbHelper.ExecuteNonQuery(sql);
        }

        public static void Update(LinkCategory info)
        {
            string sql = @"update ecms_linkcategory set 
                            [categoryname] = @categoryname,
                            [linktype] = @linktype where categoryid=@categoryid" ;

            OleDbParameter[] prams = { 
                OleDbHelper.MakeInParam("@categoryname" , OleDbType.VarChar , 50 ,info.categoryname) ,
                OleDbHelper.MakeInParam("@linktype" , OleDbType.VarChar , 50 ,info.linktype) ,
                OleDbHelper.MakeInParam("@categoryid" , OleDbType.Integer ,4 ,info.categoryid) 
            };

            OleDbHelper.ExecuteNonQuery(sql, prams);
        }

        public static LinkCategory Get(int categoryid)
        {
            string sql = "select * from ecms_linkcategory where categoryid=" + categoryid;

            LinkCategory info = null;

            DataTable dt = OleDbHelper.ExecuteDataset(sql).Tables[0];
            if (dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];

                info = new LinkCategory();
                info.categoryid = Int32.Parse(dr["categoryid"].ToString());
                info.categoryname = dr["categoryname"].ToString();
                info.linktype = dr["linktype"].ToString();                
            }

            return info;
        }

        public static DataTable GetAll()
        {
            string sql = "select * from ecms_linkcategory order by categoryid asc";

            DataTable dt = OleDbHelper.ExecuteDataset(sql).Tables[0];

            return dt;
        }

    }
}
