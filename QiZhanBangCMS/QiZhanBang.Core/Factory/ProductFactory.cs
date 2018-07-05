using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.OleDb;
using QiZhanBang.Core.Common;
using QiZhanBang.Core.Model;

namespace QiZhanBang.Core.Factory
{
    public class ProductFactory
    {
        public static void Add(Product info)
        {
            string sql = @"INSERT INTO ecms_product ( 
                            [productname] ,
                            [includepicpath] ,
                            [iscommend],
                            [productcode] ,
                            [description] ,
                            [specification] ,
                            [salecount] ,
                            [hits] ,
                            [price],categoryid,channelid,createtime,[language] ) VALUES (@productname,@includepicpath,@iscommend,@productcode,@description,@specification,@salecount,@hits,@price,@categoryid,@channelid,@createtime,@language)";

            OleDbParameter[] prams = { 
                OleDbHelper.MakeInParam("@productname" , OleDbType.VarChar , 50 ,info.productname) ,
                OleDbHelper.MakeInParam("@includepicpath" , OleDbType.VarChar , 50 ,info.includepicpath) ,
                OleDbHelper.MakeInParam("@iscommend",OleDbType.Boolean , 1 ,info.iscommend) ,
                OleDbHelper.MakeInParam("@productcode" , OleDbType.VarChar , 50 ,info.productcode) ,
                OleDbHelper.MakeInParam("@description" , OleDbType.VarChar , 0 ,info.description) ,
                OleDbHelper.MakeInParam("@specification" , OleDbType.VarChar , 0 ,info.specification) ,
                OleDbHelper.MakeInParam("@salecount" , OleDbType.Integer , 4 ,info.salecount) ,
                OleDbHelper.MakeInParam("@hits" , OleDbType.Integer , 4 ,info.hits),
                OleDbHelper.MakeInParam("@price" , OleDbType.Decimal , 8 ,info.price),
                OleDbHelper.MakeInParam("@categoryid" , OleDbType.Integer , 4 ,info.categoryid),
                OleDbHelper.MakeInParam("@channelid" , OleDbType.Integer , 4 ,info.channelid),
                OleDbHelper.MakeInParam("@createtime" , OleDbType.Date , 8 ,info.createtime) ,
                OleDbHelper.MakeInParam("@language" , OleDbType.VarChar , 10 ,info.language) 
            };

            OleDbHelper.ExecuteNonQuery(sql, prams);
        }

        public static void Delete(int productid)
        {
            string sql = "delete from ecms_product where productid=" + productid;
            OleDbHelper.ExecuteNonQuery(sql);
        }

        public static void UpdateHits(int productid)
        {
            string sql = "UPDATE ecms_product set hits=hits+1 where productid=" + productid;
            OleDbHelper.ExecuteNonQuery(sql);
        }

        public static void Update(Product info)
        {
            string sql = @"UPDATE ecms_product set 
                            [productname]=@productname ,
                            [includepicpath]=@includepicpath ,
                            [iscommend] = @iscommend ,
                            [productcode]=@productcode ,
                            [description]=@description ,
                            [specification]=@specification ,
                            [salecount]=@salecount ,
                            [hits]=@hits ,
                            [price]=@price,categoryid=@categoryid,channelid=@channelid,createtime=@createtime,[language]=@language WHERE [productid] = @productid";

            OleDbParameter[] prams = { 
                OleDbHelper.MakeInParam("@productname" , OleDbType.VarChar , 50 ,info.productname) ,
                OleDbHelper.MakeInParam("@includepicpath" , OleDbType.VarChar , 50 ,info.includepicpath) ,
                OleDbHelper.MakeInParam("@iscommend",OleDbType.Boolean , 1 ,info.iscommend) ,
                OleDbHelper.MakeInParam("@productcode" , OleDbType.VarChar , 50 ,info.productcode) ,
                OleDbHelper.MakeInParam("@description" , OleDbType.VarChar , 0 ,info.description) ,
                OleDbHelper.MakeInParam("@specification" , OleDbType.VarChar , 0 ,info.specification) ,
                OleDbHelper.MakeInParam("@salecount" , OleDbType.Integer , 4 ,info.salecount) ,
                OleDbHelper.MakeInParam("@hits" , OleDbType.Integer , 4 ,info.hits),
                OleDbHelper.MakeInParam("@price" , OleDbType.Decimal , 8 ,info.price),
                OleDbHelper.MakeInParam("@categoryid" , OleDbType.Integer , 4 ,info.categoryid),
                OleDbHelper.MakeInParam("@channelid" , OleDbType.Integer , 4 ,info.channelid),
                OleDbHelper.MakeInParam("@createtime" , OleDbType.Date , 8 ,info.createtime) ,
                OleDbHelper.MakeInParam("@language" , OleDbType.VarChar , 10 ,info.language) ,
                OleDbHelper.MakeInParam("@productid" , OleDbType.Integer , 4 ,info.productid)
            };

            OleDbHelper.ExecuteNonQuery(sql,prams);
        }

        public static Product Get(int productid) 
        {
            string sql = "select * from [ecms_product] where productid=" + productid;

            Product info = null;
            DataTable dt = OleDbHelper.ExecuteDataset(sql).Tables[0];

            if (dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];

                info = new Product();
                info.productid = Int32.Parse(dr["productid"].ToString());
                info.productname = dr["productname"].ToString();
                info.includepicpath = dr["includepicpath"].ToString();
                info.productcode = dr["productcode"].ToString();
                info.description = dr["description"].ToString();
                info.specification = dr["specification"].ToString();
                info.salecount = Int32.Parse(dr["salecount"].ToString());

                info.hits = Int32.Parse(dr["hits"].ToString());
                info.price = Decimal.Parse( dr["price"].ToString() );
                info.categoryid = Int32.Parse(dr["categoryid"].ToString());

                info.channelid = Int32.Parse(dr["channelid"].ToString());
                info.createtime = DateTime.Parse( dr["createtime"].ToString() );

                info.language = dr["language"].ToString();
                info.iscommend = Boolean.Parse( dr["iscommend"].ToString() ) ;
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
            string sql = "select top " + count.ToString() + " * from [ecms_product] order by productid desc";  //
            if (whereSql != string.Empty)
            {
                sql = "select top " + count.ToString() + " * from [ecms_product] where " + whereSql + " order by productid desc";
            }

            DataTable dt = OleDbHelper.ExecuteDataset(sql).Tables[0];

            return dt;
        }

        public static DataTable GetList(string whereSql)
        {
            string sql = "select * from [ecms_product] order by productid desc";  //
            if (whereSql != string.Empty)
            {
                sql = "select * from [ecms_product] where " + whereSql + " order by productid desc";
            }

            DataTable dt = OleDbHelper.ExecuteDataset(sql).Tables[0];

            return dt;
        }

    }
}
