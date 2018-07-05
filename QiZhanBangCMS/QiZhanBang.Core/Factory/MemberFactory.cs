using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.OleDb;
using QiZhanBang.Core.Common;
using QiZhanBang.Core.Model;
namespace QiZhanBang.Core.Factory
{
    public class MemberFactory
    {
        public static void Add(Member info)
        {
            string sql = @"INSERT INTO ecms_member ( 
                            [username] ,
                            [userpwd] ,
                            [email] ,
                            [tel] ,
                            [createdate] ,
                            [usertype] ,
                            [lastlogindate] ,
                            [lastloginip] ) VALUES (@username,@userpwd,@email,@tel,@createdate,@usertype,@lastlogindate,@lastloginip)";


            OleDbParameter[] prams = { 
                OleDbHelper.MakeInParam("@username" , OleDbType.VarChar , 50 ,info.username) ,
                OleDbHelper.MakeInParam("@userpwd" , OleDbType.VarChar , 50 ,info.userpwd) ,
                OleDbHelper.MakeInParam("@email" , OleDbType.VarChar , 100 ,info.email) ,
                OleDbHelper.MakeInParam("@tel" , OleDbType.VarChar , 50 ,info.tel) ,
                OleDbHelper.MakeInParam("@createdate" , OleDbType.Date ,8 ,info.createdate) ,
                OleDbHelper.MakeInParam("@usertype" , OleDbType.Integer , 4 ,info.usertype) ,
                OleDbHelper.MakeInParam("@lastlogindate" , OleDbType.Date ,8 ,info.lastlogindate) ,
                OleDbHelper.MakeInParam("@lastloginip" , OleDbType.VarChar ,50 ,info.lastloginip) 
            };

            OleDbHelper.ExecuteNonQuery(sql, prams) ;
        }

        public static void Delete(int uid)
        {
            string sql = "delete from ecms_member where uid=" + uid.ToString() ;

            OleDbHelper.ExecuteNonQuery(sql);
        }

        public static void Update(Member info)
        {
            string sql = @"update ecms_member set 
                            [username] = @username,
                            [userpwd] = @userpwd,
                            [email] = @email,
                            [tel] = @tel,
                            [createdate] = @createdate,
                            [usertype] = @usertype,
                            [lastlogindate] = @lastlogindate,
                            [lastloginip] = @lastloginip where [uid] = @uid";

            OleDbParameter[] prams = { 
                OleDbHelper.MakeInParam("@username" , OleDbType.VarChar , 50 ,info.username) ,
                OleDbHelper.MakeInParam("@userpwd" , OleDbType.VarChar , 50 ,info.userpwd) ,
                OleDbHelper.MakeInParam("@email" , OleDbType.VarChar , 100 ,info.email) ,
                OleDbHelper.MakeInParam("@tel" , OleDbType.VarChar , 50 ,info.tel) ,
                OleDbHelper.MakeInParam("@createdate" , OleDbType.Date ,8 ,info.createdate) ,
                OleDbHelper.MakeInParam("@usertype" , OleDbType.Integer , 4 ,info.usertype) ,
                OleDbHelper.MakeInParam("@lastlogindate" , OleDbType.Date ,8 ,info.lastlogindate) ,
                OleDbHelper.MakeInParam("@lastloginip" , OleDbType.VarChar ,50 ,info.lastloginip) ,
                OleDbHelper.MakeInParam("@uid" , OleDbType.Integer , 4 ,info.uid) 
            };

            OleDbHelper.ExecuteNonQuery(sql, prams);
        }

        public static Member Get(int uid)
        {
            string sql = "select * from ecms_member where uid=" + uid;
            DataTable dt = OleDbHelper.ExecuteDataset(sql).Tables[0] ;

            Member info = null;
            if (dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];

                info = new Member();
                info.createdate = DateTime.Parse( dr["createdate"].ToString() ) ;
                info.email = dr["email"].ToString();
                info.lastlogindate = DateTime.Parse(dr["lastlogindate"].ToString());
                info.lastloginip = dr["lastloginip"].ToString();
                info.tel = dr["tel"].ToString();
                info.uid = Int32.Parse(  dr["uid"].ToString() );
                info.username = dr["username"].ToString() ;
                info.userpwd = dr["userpwd"].ToString();
                info.usertype = Int32.Parse( dr["usertype"].ToString() );
            }

            return info ;
        }

        public static Member Get(string username)
        {
            string sql = "select * from ecms_member where username='" + username + "'";
            DataTable dt = OleDbHelper.ExecuteDataset(sql).Tables[0];

            Member info = null;
            if (dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];

                info = new Member();
                info.createdate = DateTime.Parse(dr["createdate"].ToString());
                info.email = dr["email"].ToString();
                info.lastlogindate = DateTime.Parse(dr["lastlogindate"].ToString());
                info.lastloginip = dr["lastloginip"].ToString();
                info.tel = dr["tel"].ToString();
                info.uid = Int32.Parse(dr["uid"].ToString());
                info.username = dr["username"].ToString();
                info.userpwd = dr["userpwd"].ToString();
                info.usertype = Int32.Parse(dr["usertype"].ToString());
            }

            return info;
        }

        public static DataTable GetAll()
        {
            return OleDbHelper.ExecuteDataset("select * from ecms_member order by uid desc").Tables[0];
        }

        public static DataTable GetList(int pageIndex, int pageSize)
        {
            string sql = "";
            if (pageIndex == 1)
            {
                sql = string.Format("select top {0} * from ecms_member order by uid desc",pageSize) ;
            }
            else
            {
                sql = string.Format("select top {0} from ecms_member where uid not in (select top {1} uid from ecms_member order by uid desc) order by uid desc" ,pageSize , pageSize * (pageIndex -1)) ;
            }

            DataTable dt = OleDbHelper.ExecuteDataset(sql).Tables[0];
            return dt;
        }

    }
}
