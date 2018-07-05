using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.OleDb;
using QiZhanBang.Core.Common;
using QiZhanBang.Core.Model;

namespace QiZhanBang.Core.Factory
{
    public class ProductCategoryFactory
    {
        public static void Add(ProductCategory info)
        {
            string sql = @"INSERT INTO ecms_productcategory ( 
                            [channelid] ,
                            [channelname] ,
                            [categoryname] ,
                            [categoryname1] ,
                            [categoryname2] ,
                            [orderid] ,
                            [parentid] ) VALUES (@channelid,@channelname,@categoryname,@categoryname1,@categoryname2,@orderid,@parentid)";


            OleDbParameter[] prams = { 
                OleDbHelper.MakeInParam("@channelid" , OleDbType.Integer , 4 ,info.channelid) ,
                OleDbHelper.MakeInParam("@channelname" , OleDbType.VarChar , 50 ,info.channelname) ,
                OleDbHelper.MakeInParam("@categoryname" , OleDbType.VarChar , 50 ,info.categoryname) ,
                OleDbHelper.MakeInParam("@categoryname1" , OleDbType.VarChar , 50 ,info.categoryname1) ,
                OleDbHelper.MakeInParam("@categoryname2" , OleDbType.VarChar , 50 ,info.categoryname2) ,
                OleDbHelper.MakeInParam("@orderid" , OleDbType.Integer , 4 ,info.orderid) ,
                OleDbHelper.MakeInParam("@parentid" , OleDbType.Integer ,4 ,info.parentid) 
            };

            OleDbHelper.ExecuteNonQuery(sql, prams);
        }

        public static void Delete(int categoryid)
        {
            string sql = "delete from ecms_productcategory where categoryid = " + categoryid;
            OleDbHelper.ExecuteNonQuery(sql);
        }

        public static void Update(ProductCategory info)
        {
            string sql = @"update ecms_articlecategory set 
                            [channelid] = @channelid,
                            [channelname] = @channelname,
                            [categoryname] = @categoryname,
                            [categoryname1] = @categoryname1,
                            [categoryname2] = @categoryname2,
                            [orderid] = @orderid,
                            [parentid] = @parentid where [categoryid] = @categoryid";

            OleDbParameter[] prams = { 
                OleDbHelper.MakeInParam("@channelid" , OleDbType.Integer , 4 ,info.channelid) ,
                OleDbHelper.MakeInParam("@channelname" , OleDbType.VarChar , 50 ,info.channelname) ,
                OleDbHelper.MakeInParam("@categoryname" , OleDbType.VarChar , 50 ,info.categoryname) ,
                OleDbHelper.MakeInParam("@categoryname1" , OleDbType.VarChar , 50 ,info.categoryname1) ,
                OleDbHelper.MakeInParam("@categoryname2" , OleDbType.VarChar , 50 ,info.categoryname2) ,
                OleDbHelper.MakeInParam("@orderid" , OleDbType.Integer , 4 ,info.orderid) ,
                OleDbHelper.MakeInParam("@parentid" , OleDbType.Integer ,4 ,info.parentid) ,
                OleDbHelper.MakeInParam("@categoryid" , OleDbType.Integer ,4 ,info.categoryid) 
            };

            OleDbHelper.ExecuteNonQuery(sql, prams);
        }

        public static ProductCategory Get(int categoryid)
        {
            string sql = "select * from ecms_productcategory where categoryid=" + categoryid;
            ProductCategory info = null;

            DataTable dt = OleDbHelper.ExecuteDataset(sql).Tables[0];
            if (dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0] ;

                info = new ProductCategory();
                info.categoryid = Int32.Parse( dr["categoryid"].ToString() );
                info.categoryname = dr["categoryname"].ToString();
                info.categoryname1 = dr["categoryname1"].ToString();
                info.categoryname2 = dr["categoryname2"].ToString();
                info.channelid = Int32.Parse(  dr["channelid"].ToString() );
                info.channelname = dr["channelname"].ToString();
                info.orderid = Int32.Parse(  dr["orderid"].ToString() );
                info.parentid = Int32.Parse( dr["parentid"].ToString() );
            }

            return info;
        }

        public static DataTable GetAll(int channelid)
        {
            string sql = "select * from ecms_productcategory where channelid=" + channelid + " order by orderid asc";


            DataTable dt = OleDbHelper.ExecuteDataset(sql).Tables[0];

            return dt;
        }
    }
}
