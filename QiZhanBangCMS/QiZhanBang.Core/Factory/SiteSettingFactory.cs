using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.OleDb;
using QiZhanBang.Core.Common;
using QiZhanBang.Core.Model;

namespace QiZhanBang.Core.Factory
{
    public class SiteSettingFactory
    {
        public static void Add(string settingKey , string settingValue)
        {
            string sql = @"INSERT INTO ecms_sitesetting ( 
                            [settingkey] ,
                            [settingvalue] ) VALUES (@settingkey,@settingvalue)";

            OleDbParameter[] prams = { 
                OleDbHelper.MakeInParam("@settingkey" , OleDbType.VarChar , 200 ,settingKey) ,
                OleDbHelper.MakeInParam("@settingvalue" , OleDbType.VarChar , 0 ,settingValue)
            };

            OleDbHelper.ExecuteNonQuery(sql, prams);
        }

        public static void Delete(int settingid)
        {
            string sql = "delete from ecms_sitesetting where settingid=" + settingid;
            OleDbHelper.ExecuteNonQuery(sql);
        }

        public static void Update(int settingid, string settingValue)
        {
            string sql = @"update ecms_sitesetting set 
                            [settingvalue] = @settingvalue where [settingid] = @settingid";

            OleDbParameter[] prams = { 
                OleDbHelper.MakeInParam("@settingvalue" , OleDbType.VarChar , 0 ,settingValue),
                OleDbHelper.MakeInParam("@settingid" , OleDbType.Integer , 4 ,settingid)
            };

            OleDbHelper.ExecuteNonQuery(sql, prams);
        }

        public static bool Exists(string settingKey)
        {
            string sql = @"SELECT count(*) FROM ecms_sitesetting WHERE [settingkey] = @settingkey";

            OleDbParameter[] prams = { 
                OleDbHelper.MakeInParam("@settingkey" , OleDbType.VarChar , 200 ,settingKey)
            };

            int count = Int32.Parse( OleDbHelper.ExecuteNonQuery(sql,prams).ToString() ) ;

            if (count > 0)
                return true;

            return false;
        }

        public static string Get(string settingKey)
        {
            string sql = @"SELECT * FROM ecms_sitesetting WHERE [settingkey] = @settingkey";
            OleDbParameter[] prams = { 
                OleDbHelper.MakeInParam("@settingkey" , OleDbType.VarChar , 200 ,settingKey)
            };

            DataTable dt = OleDbHelper.ExecuteDataset(sql, prams).Tables[0];
            if (dt.Rows.Count > 0)
                return dt.Rows[0]["settingvalue"].ToString() ;

            return string.Empty;
        }

        public static DataTable GetAll()
        {
            string sql = "select * from [ecms_sitesetting]  order by settingid asc";

            DataTable dt = OleDbHelper.ExecuteDataset(sql).Tables[0];

            return dt;
        }
    }
}
