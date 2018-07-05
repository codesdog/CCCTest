using System;
using System.Collections.Generic;
using System.Text;
using System.Web;
using QiZhanBang.Core.Model;
using QiZhanBang.Core.Factory;
using QiZhanBang.Core.Common;

namespace QiZhanBang.Core.Business
{
    public class Security
    {
        public static bool Login(string username, string password, out string tips)
        {
            Member info = MemberFactory.Get(username);
            if (info == null)
            {
                tips = "此用户不存在！";
                return false;
            }

            if (info.userpwd != Utils.MD5(password))
            {
                tips = "密码不正确！";
                return false;
            }

            WriteUserCookie(info, 0);
            tips = "登陆成功！";
            return true;
        }

        public static LoginMember Check()
        {
            HttpCookie cookie = HttpContext.Current.Request.Cookies[SiteConfig.Instance().CookieName];

            if (cookie == null)
            {
                return null;
            }


            int uid = 0;
            int usertype = 1;
            Int32.TryParse(cookie.Values["uid"].Trim(), out uid);
            Int32.TryParse(cookie.Values["usertype"].Trim(), out usertype);
            string username = HttpUtility.UrlDecode(cookie.Values["username"].Trim());
            string auth = cookie.Values["auth"].Trim();

            if (uid == 0 || username == string.Empty || auth == string.Empty)
                return null;

            if (auth != BuildAuthCode(uid, username, usertype))
                return null;

            return new LoginMember(uid, username, usertype);
        }

        //检查是否是超级管理员，不是则跳转到登陆页
        public static void CheckAdministerAndRedirect()
        {
            LoginMember info = Security.Check();
            if (info == null)
            {
                HttpContext.Current.Response.Redirect("adminlogin.aspx");
                HttpContext.Current.Response.End();
            }

            if (!info.IsAdministrator)
            {
                HttpContext.Current.Response.Redirect("adminlogin.aspx");
                HttpContext.Current.Response.End();
            }

        }

        public static void Logout()
        {
            HttpCookie cookie = HttpContext.Current.Request.Cookies[SiteConfig.Instance().CookieName];
            cookie.Values["uid"] = string.Empty;
            cookie.Values["username"] = string.Empty;
            cookie.Values["usertype"] = string.Empty;
            cookie.Values["auth"] = string.Empty;
            cookie.Values["expires"] = string.Empty;

            cookie.Expires = DateTime.Now.AddYears(-1);
            cookie.Domain = SiteConfig.Instance().CookieDomain;

            HttpContext.Current.Response.AppendCookie(cookie);
        }


        protected static void WriteUserCookie(Member info, int expires)
        {
            HttpCookie cookie = new HttpCookie(SiteConfig.Instance().CookieName);
            cookie.Values["uid"] = info.uid.ToString();
            cookie.Values["username"] = HttpUtility.UrlEncode(info.username);
            cookie.Values["usertype"] = info.usertype.ToString();
            cookie.Values["auth"] = BuildAuthCode(info.uid, info.username, info.usertype);
            cookie.Values["expires"] = expires.ToString();

            if (expires > 0)
            {
                cookie.Expires = DateTime.Now.AddMinutes(expires);
            }

            cookie.Domain = SiteConfig.Instance().CookieDomain.Trim();
            HttpContext.Current.Response.AppendCookie(cookie);
        }

        protected static string BuildAuthCode(int uid, string username, int usertype)
        {
            return Utils.MD5(uid + username + usertype + SiteConfig.Instance().CookieEncryptionSalt);
        }
    }

    public class LoginMember
    {
        private int _uid = 0;
        private string _username = string.Empty;
        private int _usertype = 1;

        public LoginMember(int uid, string username, int usertype)
        {
            this.uid = uid;
            this.username = username;
            this.usertype = usertype;
        }

        public int uid
        {
            get { return _uid; }
            set { _uid = value; }
        }

        public string username
        {
            get { return _username; }
            set { _username = value; }
        }

        /// <summary>
        /// 1 表示创始人；2表示网站管理员；3表示信息管理员 ；10以上表示其他用户
        /// </summary>
        public int usertype
        {
            get { return _usertype; }
            set { _usertype = value; }
        }

        /// <summary>
        /// 是否管理员
        /// </summary>
        public bool IsAdministrator
        {
            get
            {
                if (this.usertype >= 1 && this.usertype <= 3)
                    return true;

                return false;
            }
        }
    }
}
