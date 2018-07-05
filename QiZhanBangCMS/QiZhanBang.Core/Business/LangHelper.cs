using System;
using System.Collections.Generic;
using System.Text;
using System.Web;

using QiZhanBang.Core.Common;
namespace QiZhanBang.Core.Business
{
    /// <summary>
    /// 网站语言操作类(中文繁体(zh) | 美国英语(en) | 德国德语(de))
    /// </summary>
    public class LangHelper
    {
        private static string defaultLang = "de";

        public static void SaveLang(string lang)
        {
            HttpCookie cookie = new HttpCookie(SiteConfig.Instance().CookieName);
            cookie.Values["lang"] = lang;
            cookie.Expires = DateTime.Now.AddMonths(1);

            cookie.Domain = SiteConfig.Instance().CookieDomain.Trim();
            HttpContext.Current.Response.AppendCookie(cookie);
        }

        public static string GetLang()
        {
            HttpCookie cookie = HttpContext.Current.Request.Cookies[SiteConfig.Instance().CookieName];

            if (cookie == null)
            {
                return defaultLang ;
            }

            string lang = cookie.Values["lang"];

            if (string.IsNullOrEmpty(lang))
                return defaultLang;

            return lang;
        }

        public static string GetCurrentLangName()
        {
            string lang = GetLang();

            switch (lang)
            {
                case "en":
                    return "English";

                case "zh":
                    return "繁體中文";

                default:
                    return "Deutsch";
            }
        }
    }
}
