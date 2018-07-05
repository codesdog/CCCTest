using System;
using System.Collections.Generic;
using System.Text;
using System.Xml;

namespace QiZhanBang.Core.Common
{
    public class SiteConfig
    {
        private static SiteConfig config = null;
        private static string configFilePath = System.Web.HttpContext.Current.Server.MapPath("~/config/siteconfig.config");
        private static DateTime configFileModifyDate = DateTime.Now; //配置文件最后一次修改时间

        static SiteConfig()
        {
            LoadConfig();
        }

        public static SiteConfig Instance()
        {
            //如果当前配置文件的修改时间小于上次的修改时间，则认为配置文件已经被修改，需重新加载
            if (configFileModifyDate < System.IO.File.GetLastWriteTime(configFilePath))
                LoadConfig();

            return config;
        }

        #region ==属性字段==
        private string _sitedomain = "http://www.ecms.com/";
        /// <summary>
        /// 网站域名
        /// </summary>
        public string SiteDomain
        {
            get
            {
                if (_sitedomain.EndsWith("/"))
                    return _sitedomain;

                return _sitedomain + "/";
            }
            set { _sitedomain = value; }
        }

        private string _DBPath = "";
        /// <summary>
        /// 数据库链接字符串
        /// </summary>
        public string DBPath
        {
            get { return _DBPath; }
            set { _DBPath = value; }
        }

        private string _filesuffix = ".html";
        /// <summary>
        /// 文件后缀
        /// </summary>
        public string FileSuffix
        {
            get { return _filesuffix; }
            set { _filesuffix = value; }
        }

        private string _cookiedomain = ".ecms.com";
        /// <summary>
        /// 写入Cookies的Domain
        /// </summary>
        public string CookieDomain
        {
            get { return _cookiedomain; }
            set { _cookiedomain = value; }
        }

        private string _cookiename = "ecms";
        /// <summary>
        /// 写入Cookies的名字
        /// </summary>
        public string CookieName
        {
            get { return _cookiename; }
            set { _cookiename = value; }
        }

        private int _watermarktype = 0;
        /// <summary>
        /// 水印类型(0,表示不使用，1表示文本 ,2表示图片)
        /// </summary>
        public int WatermarkType
        {
            get { return _watermarktype; }
            set { _watermarktype = value; }
        }

        private string _watermarktext = string.Empty;
        /// <summary>
        /// 水印文本(如果类型文本，则为水印的字符文本，如果类型是图片，则为水印图片的文件名字)
        /// </summary>
        public string WatermarkText
        {
            get { return _watermarktext; }
            set { _watermarktext = value; }
        }

        private int _watermarkstatus = 9;
        /// <summary>
        /// 图片附件添加水印 0=不使用 1=左上 2=中上 3=右上 4=左中 5=中中 6=右中 7=左下 8=中下 9=右下
        /// </summary>
        public int WatermarkStatus
        {
            get { return _watermarkstatus; }
            set { _watermarkstatus = value; }
        }

        private string _cookieencryptionsalt = string.Empty;
        /// <summary>
        /// Cookie信息加密附加字符
        /// </summary>
        public string CookieEncryptionSalt
        {
            get { return _cookieencryptionsalt; }
            set { _cookieencryptionsalt = value; }
        }

        private string _backendauthenticatecode = string.Empty;
        /// <summary>
        /// 后台登录认证码,注意：区分大小写
        /// </summary>
        public string BackendAuthenticateCode
        {
            get { return _backendauthenticatecode; }
            set { _backendauthenticatecode = value; }
        }
        #endregion

        /// <summary>
        /// 加载配置信息
        /// </summary>
        public static void LoadConfig()
        {

            config = new SiteConfig();

            #region ==Load Config Logic==
            config = new SiteConfig();
            XmlDocument doc = new XmlDocument();
            doc.Load(configFilePath);

            XmlNode node = null;
            node = doc.SelectSingleNode("//siteconfig/sitedomain");
            if (node != null)
            {
                config.SiteDomain = node.InnerText.Trim();
            }

            node = doc.SelectSingleNode("//siteconfig/dbpath");
            if (node != null)
            {
                config.DBPath = node.InnerText.Trim();
            }

            node = doc.SelectSingleNode("//siteconfig/filesuffix");
            if (node != null)
            {
                config.FileSuffix = node.InnerText.Trim();
            }

            node = doc.SelectSingleNode("//siteconfig/cookiedomain");
            if (node != null)
            {
                config.CookieDomain = node.InnerText.Trim();
            }


            node = doc.SelectSingleNode("//siteconfig/cookiename");
            if (node != null)
            {
                config.CookieName = node.InnerText.Trim();
            }

            node = doc.SelectSingleNode("//siteconfig/cookieencryptionsalt");
            if (node != null)
            {
                config.CookieEncryptionSalt = node.InnerText.Trim();
            }

            node = doc.SelectSingleNode("//siteconfig/backendauthenticatecode");
            if (node != null)
            {
                config.BackendAuthenticateCode = node.InnerText.Trim();
            }

            configFileModifyDate = DateTime.Now;
            #endregion
        }
    }
}
