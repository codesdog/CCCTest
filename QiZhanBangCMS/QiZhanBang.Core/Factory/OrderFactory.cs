using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.OleDb;
using QiZhanBang.Core.Common;
using QiZhanBang.Core.Model;

namespace QiZhanBang.Core.Factory
{
    public class OrderFactory
    {
        public static void Add(Order info)
        {
            string sql = @"INSERT INTO ecms_order ([productid] ,[productname] ,[buycount] ,[customername],[tel],[address],[createtime]) VALUES (@productid ,@productname ,@buycount ,@customername,@tel,@address,@createtime)";

            OleDbParameter[] prams = { 
                OleDbHelper.MakeInParam("@productid" , OleDbType.Integer , 4 ,info.productid),
                OleDbHelper.MakeInParam("@productname" , OleDbType.VarChar , 50 ,info.productname) ,
                OleDbHelper.MakeInParam("@buycount" , OleDbType.Integer , 4 ,info.buycount),
                OleDbHelper.MakeInParam("@customername" , OleDbType.VarChar , 50 ,info.customername) ,
                OleDbHelper.MakeInParam("@tel" , OleDbType.VarChar , 50 ,info.tel) ,
                OleDbHelper.MakeInParam("@address" , OleDbType.VarChar , 50 ,info.address) ,
                OleDbHelper.MakeInParam("@createtime" , OleDbType.Date , 8 ,info.createtime) 
            };

            OleDbHelper.ExecuteNonQuery(sql, prams);
        }

        //public static void Delete(int productid)
        //{
        //    string sql = "delete from ecms_product where productid=" + productid;
        //    OleDbHelper.ExecuteNonQuery(sql);
        //}

        public static Order Get(int orderid)
        {
            string sql = "select * from [ecms_order] where orderid=" + orderid;

            Order info = null;
            DataTable dt = OleDbHelper.ExecuteDataset(sql).Tables[0];

            if (dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];

                info = new Order();
                info.orderid = Int32.Parse(dr["orderid"].ToString());
                info.productid = Int32.Parse(dr["productid"].ToString());
                info.productname = dr["productname"].ToString();
                info.buycount = Int32.Parse(dr["buycount"].ToString());
                info.customername = dr["customername"].ToString();
                info.tel = dr["tel"].ToString();
                info.address = dr["address"].ToString();
                info.createtime = DateTime.Parse( dr["createtime"].ToString() );
            }

            return info;
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

        public static DataTable GetList(int count, string whereSql)
        {
            string sql = "select top " + count.ToString() + " * from [ecms_order] order by orderid desc";  //
            if (whereSql != string.Empty)
            {
                sql = "select top " + count.ToString() + " * from [ecms_order] where " + whereSql + " order by orderid desc";
            }

            DataTable dt = OleDbHelper.ExecuteDataset(sql).Tables[0];

            return dt;
        }

        public static DataTable GetList(string whereSql)
        {
            string sql = "select * from [ecms_order] order by orderid desc";  //
            if (whereSql != string.Empty)
            {
                sql = "select * from [ecms_order] where " + whereSql + " order by orderid desc";
            }

            DataTable dt = OleDbHelper.ExecuteDataset(sql).Tables[0];

            return dt;
        }
    }
}
