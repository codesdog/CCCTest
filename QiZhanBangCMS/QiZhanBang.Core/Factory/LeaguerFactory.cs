using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.OleDb;
using QiZhanBang.Core.Common;
using QiZhanBang.Core.Model;

namespace QiZhanBang.Core.Factory
{
    public class LeaguerFactory
    {
        public static void Add(Leaguer info)
        {
            string sql = @"INSERT INTO ecms_leaguer ( 
                            [leaguername] ,
                            [avatar] ,
                            [orderno] ,
                            [resume]) VALUES (@leaguername,@avatar,@orderno,@resume)";

            OleDbParameter[] prams = { 
                OleDbHelper.MakeInParam("@leaguername" , OleDbType.VarChar , 50 ,info.leaguername) ,
                OleDbHelper.MakeInParam("@avatar" , OleDbType.VarChar , 250 ,info.avatar) ,
                OleDbHelper.MakeInParam("@orderno" , OleDbType.Integer , 4 ,info.orderno) ,
                OleDbHelper.MakeInParam("@resume" , OleDbType.VarChar , 0 ,info.resume)
            };

            OleDbHelper.ExecuteNonQuery(sql, prams);
        }

        public static void Delete(int leaguerid)
        {
            string sql = "delete from ecms_leaguer where leaguerid=" + leaguerid;
            OleDbHelper.ExecuteNonQuery(sql);
        }

        public static void Update(Leaguer info)
        {
            string sql = @"update ecms_leaguer set 
                            [leaguername] = @leaguername,
                            [avatar] = @avatar,
                            [orderno] = @orderno,
                            [resume] = @resume
                           where [leaguerid] = @leaguerid";

            OleDbParameter[] prams = { 
                OleDbHelper.MakeInParam("@leaguername" , OleDbType.VarChar , 50 ,info.leaguername) ,
                OleDbHelper.MakeInParam("@avatar" , OleDbType.VarChar , 250 ,info.avatar) ,
                OleDbHelper.MakeInParam("@orderno" , OleDbType.Integer , 4 ,info.orderno) ,
                OleDbHelper.MakeInParam("@resume" , OleDbType.VarChar , 0 ,info.resume),
                OleDbHelper.MakeInParam("@leaguerid" , OleDbType.Integer , 4 ,info.leaguerid)
            };

            OleDbHelper.ExecuteNonQuery(sql, prams);
        }

        public static Leaguer Get(int leaguerid)
        {
            string sql = "select * from ecms_leaguer where [leaguerid] = " + leaguerid;

            Leaguer info = null;

            DataTable dt = OleDbHelper.ExecuteDataset(sql).Tables[0];
            if (dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];

                info = new Leaguer();
                info.leaguername = dr["leaguername"].ToString();
                info.avatar = dr["avatar"].ToString();
                info.leaguerid = Int32.Parse(dr["leaguerid"].ToString());
                info.resume = dr["resume"].ToString();
                info.orderno = Int32.Parse(dr["orderno"].ToString());
            }

            return info;
        }

        public static DataTable GetList()
        {
            string sql = "select * from [ecms_leaguer] order by orderno asc";

            DataTable dt = OleDbHelper.ExecuteDataset(sql).Tables[0];

            return dt;
        }
    }
}
