using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.OleDb;
using QiZhanBang.Core.Common;
using QiZhanBang.Core.Model;

namespace QiZhanBang.Core.Factory
{
    public class ChannelFactory
    {
        public static void Add(Channel info)
        {
            string sql = @"INSERT INTO ecms_channel ( 
                            [channelname] ,
                            [channeldesc] ,
                            [orderid] ,
                            [channeltype] ,
                            [specialtype] ) VALUES (@channelname,@channeldesc,@orderid,@channeltype,@specialtype)" ;

            OleDbParameter[] prams = { 
                OleDbHelper.MakeInParam("@channelname" , OleDbType.VarChar , 50 ,info.channelname) ,
                OleDbHelper.MakeInParam("@channeldesc" , OleDbType.VarChar , 50 ,info.channeldesc) ,
                OleDbHelper.MakeInParam("@orderid" , OleDbType.Integer , 4 ,info.orderid) ,
                OleDbHelper.MakeInParam("@channeltype" , OleDbType.VarChar , 50 ,info.channeltype) ,
                OleDbHelper.MakeInParam("@specialtype" , OleDbType.VarChar ,50 ,info.specialtype) 
            };

            OleDbHelper.ExecuteNonQuery(sql, prams);
        }

        public static void Delete(int channelid)
        {
            string sql = "delete from ecms_channel where channelid=" + channelid ;

            OleDbHelper.ExecuteNonQuery(sql);
        }

        public static void Update(Channel info)
        {
            string sql = @"update ecms_channel set 
                            [channelname] = @channelname,
                            [channeldesc] = @channeldesc,
                            [orderid] = @orderid,
                            [channeltype] = @channeltype,
                            [specialtype] = @specialtype where [channelid] = @channelid";

            OleDbParameter[] prams = { 
                OleDbHelper.MakeInParam("@channelname" , OleDbType.VarChar , 50 ,info.channelname) ,
                OleDbHelper.MakeInParam("@channeldesc" , OleDbType.VarChar , 50 ,info.channeldesc) ,
                OleDbHelper.MakeInParam("@orderid" , OleDbType.Integer , 4 ,info.orderid) ,
                OleDbHelper.MakeInParam("@channeltype" , OleDbType.VarChar , 50 ,info.channeltype) ,
                OleDbHelper.MakeInParam("@specialtype" , OleDbType.VarChar ,50 ,info.specialtype) ,
                OleDbHelper.MakeInParam("@channelid" , OleDbType.Integer , 4 ,info.channelid)
            };

            OleDbHelper.ExecuteNonQuery(sql, prams);
        }

        public static Channel Get(int channelid)
        {
            string sql = "select * from ecms_channel where channelid=" + channelid ;

            DataTable dt = OleDbHelper.ExecuteDataset(sql).Tables[0];
            Channel info = null;

            if (dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];

                info = new Channel();
                info.channeldesc = dr["channeldesc"].ToString();
                info.channelid = Int32.Parse( dr["channelid"].ToString() ) ;
                info.channelname = dr["channelname"].ToString();
                info.channeltype = dr["channeltype"].ToString();
                info.orderid = Int32.Parse( dr["orderid"].ToString() );
                info.specialtype = dr["specialtype"].ToString();
            }

            return info ;
        }

        public static DataTable GetAll()
        {
            string sql = "select * from ecms_channel order by channelid desc" ;

            DataTable dt = OleDbHelper.ExecuteDataset(sql).Tables[0];

            return dt ;
        }
    }
}
