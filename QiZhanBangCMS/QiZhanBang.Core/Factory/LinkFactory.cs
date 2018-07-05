using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.OleDb;
using QiZhanBang.Core.Common;
using QiZhanBang.Core.Model;

namespace QiZhanBang.Core.Factory
{
    public class LinkFactory
    {
        public static void Add(Link info)
        {
            string sql = @"INSERT INTO ecms_link ( 
                            [linkname] ,
                            [linkurl] ,
                            [orderno] ,
                            [createtime] ,
                            [includepic] ,
                            [categoryid] ) VALUES (@linkname,@linkurl,@orderno,@createtime,@includepic,@categoryid)";

            OleDbParameter[] prams = { 
                OleDbHelper.MakeInParam("@linkname" , OleDbType.VarChar , 50 ,info.linkname) ,
                OleDbHelper.MakeInParam("@linkurl" , OleDbType.VarChar , 50 ,info.linkurl) ,
                OleDbHelper.MakeInParam("@orderno" , OleDbType.Integer , 4 ,info.orderno) ,
                OleDbHelper.MakeInParam("@createtime" , OleDbType.Date , 8 ,info.createtime) ,
                OleDbHelper.MakeInParam("@includepic" , OleDbType.VarChar , 50 ,info.includepic) ,
                OleDbHelper.MakeInParam("@categoryid" , OleDbType.Integer , 4 ,info.categoryid)
            };

            OleDbHelper.ExecuteNonQuery(sql, prams);
        }

        public static void Delete(int linkid)
        {
            string sql = "delete from ecms_link where linkid=" + linkid ;
            OleDbHelper.ExecuteNonQuery(sql);
        }

        public static void Update(Link info)
        {
            string sql = @"update ecms_link set 
                            [linkname] = @linkname,
                            [linkurl] = @linkurl,
                            [orderno] = @orderno,
                            [createtime] = @createtime,
                            [includepic] = @includepic,
                            [categoryid] = @categoryid where [linkid] = @linkid";

            OleDbParameter[] prams = { 
                OleDbHelper.MakeInParam("@linkname" , OleDbType.VarChar , 50 ,info.linkname) ,
                OleDbHelper.MakeInParam("@linkurl" , OleDbType.VarChar , 50 ,info.linkurl) ,
                OleDbHelper.MakeInParam("@orderno" , OleDbType.Integer , 4 ,info.orderno) ,
                OleDbHelper.MakeInParam("@createtime" , OleDbType.Date , 8 ,info.createtime) ,
                OleDbHelper.MakeInParam("@includepic" , OleDbType.VarChar , 50 ,info.includepic) ,
                OleDbHelper.MakeInParam("@categoryid" , OleDbType.Integer , 4 ,info.categoryid),
                OleDbHelper.MakeInParam("@linkid" , OleDbType.Integer , 4 ,info.linkid)
            };

            OleDbHelper.ExecuteNonQuery(sql, prams) ;
        }

        public static Link Get(int linkid)
        {
            string sql = "select * from ecms_link where [linkid] = " + linkid ;

            Link info = null;

            DataTable dt = OleDbHelper.ExecuteDataset(sql).Tables[0];
            if (dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];

                info = new Link();
                info.categoryid = Int32.Parse(dr["categoryid"].ToString());
                info.createtime = DateTime.Parse( dr["createtime"].ToString());
                info.includepic = dr["includepic"].ToString();
                info.linkid = Int32.Parse(dr["linkid"].ToString());
                info.linkname = dr["linkname"].ToString();
                info.linkurl = dr["linkurl"].ToString();
                info.orderno = Int32.Parse(dr["orderno"].ToString());
            }

            return info;
        }

        public static DataTable GetList(int categoryid)
        {
            string sql = "select * from [ecms_link] where categoryid=" + categoryid + " order by orderno asc";

            DataTable dt = OleDbHelper.ExecuteDataset(sql).Tables[0];

            return dt;
        }
    }
}
