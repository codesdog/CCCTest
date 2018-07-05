using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace Jackone
{
   public class UserInfoService
    {
       public static bool CheckUserExist(UserInfo _Userinfo)
        {
            bool result = false;

            try
            {
                string StrSql = "SELECT * FROM UserInfo WHERE UserName='@UserName' AND PassWord='@PassWord'";
                List<SqlParameter> Params = new List<SqlParameter>();
                SqlParameter para= new SqlParameter("@UserName", Function.CType2SqlType(_Userinfo.UserName.GetType()));
                para.Value = _Userinfo.UserName;
                Params.Add(para);
                para = new SqlParameter("@PassWord", Function.CType2SqlType(_Userinfo.PassWord.GetType()));
                para.Value = _Userinfo.PassWord;
                Params.Add(para);
               
                DataTable info = SqlHelper.QueryTable(CommandType.Text, StrSql, Params.ToArray());
                if (info.Rows.Count > 0)
                    result = true;
            }
            catch 
            {
            }
            return result;
        }

       /// <summary>
       /// 查询所有管理员
       /// </summary>
       /// <returns></returns>
       public static List<UserInfo> SelectAllUser()
       {
           List<UserInfo> list = new List<UserInfo>();
           string StrSql = "SELECT * FROM UserInfo";

           DataTable info = SqlHelper.QueryTable(CommandType.Text, StrSql);

           foreach (DataRow dr in info.Rows)
           {
               UserInfo ai = new UserInfo
               {
                   Uid = Convert.ToInt32(dr["Uid"]),
                   UserName = dr["UserName"].ToString(),
                   IsSysAdmin = Convert.ToInt32(dr["IsSysAdmin"])
               };
               list.Add(ai);
           }
           return list;
       }

       /// <summary>
       /// 新增用户
       /// </summary>
       /// <param name="ui"></param>
       public static void InsertUserInfo(UserInfo ui)
       {
           string StrSql = @"
 INSERT INTO UserInfo (UserName,Password,IsSysAdmin) Values (@UserName,@Password,@IsSysAdmin)
";
           List<SqlParameter> Params = new List<SqlParameter>();
           SqlParameter para = new SqlParameter("@UserName", Function.CType2SqlType(ui.UserName.GetType()));
           para.Value = ui.UserName;
           Params.Add(para);
           para = new SqlParameter("@PassWord", Function.CType2SqlType(ui.PassWord.GetType()));
           para.Value = ui.PassWord;
           Params.Add(para);
            para = new SqlParameter("@IsSysAdmin", Function.CType2SqlType(ui.IsSysAdmin.GetType()));
           para.Value = ui.IsSysAdmin;
           Params.Add(para);

           SqlHelper.ExecuteNonQuery(CommandType.Text,StrSql,Params.ToArray());
       }

       /// <summary>
       /// 
       /// </summary>
       /// <param name="ui"></param>
       public static void UpdateUserInfo(UserInfo ui)
       {
            string StrSql = @"
 UPDATE UserInfo SET PassWord=@Password WHERE UserName=@UserName;
";
           List<SqlParameter> Params = new List<SqlParameter>();
           SqlParameter para = new SqlParameter("@UserName", Function.CType2SqlType(ui.UserName.GetType()));
           para.Value = ui.UserName;
           Params.Add(para);
           para = new SqlParameter("@PassWord", Function.CType2SqlType(ui.PassWord.GetType()));
           para.Value = ui.PassWord;
           Params.Add(para);

           SqlHelper.ExecuteNonQuery(CommandType.Text, StrSql, Params.ToArray());
       }

       /// <summary>
       /// 
       /// </summary>
       /// <param name="Uid"></param>
       public static void DeleteUserInfo(string UserName)
       {
           string StrSql = @"
 DELETE UserInfo  WHERE UserName=@UserName;
";
           List<SqlParameter> Params = new List<SqlParameter>();
           SqlParameter para = new SqlParameter("@UserName", SqlDbType.NVarChar);
           para.Value = UserName;
           Params.Add(para);
         
           SqlHelper.ExecuteNonQuery(CommandType.Text, StrSql, Params.ToArray());
       }


    }
}
