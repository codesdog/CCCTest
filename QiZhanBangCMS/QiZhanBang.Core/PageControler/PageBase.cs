using System;
using System.Collections.Generic;
using System.Text;
using System.Web;
using System.Data ;

using QiZhanBang.Core.Business;
using QiZhanBang.Core.Factory;
using QiZhanBang.Core.Common;
using QiZhanBang.Core.Model;
namespace QiZhanBang.Core.PageControler
{
    public class WebPageBase : System.Web.UI.Page
    {
        //获取文章
        public DataTable getarticle(int channelid, int categoryid, int pagesize, string listurl, out string pagerhtml)
        {
            string whereSql = " ischecked=true";
            if (channelid > 0)
            {
                whereSql += " and channelid=" + channelid ;
            }

            if (categoryid > 0)
            {
                whereSql += " and categoryid=" + categoryid;
            }

            int pageindex = HYRequest.GetInt("p", 1);

            int totalcount = 0;

            DataTable dt = ArticleFactory.GetList(pagesize, pageindex, whereSql, out totalcount);
            pagerhtml = Utils.BuildPager(totalcount, pagesize, pageindex, "?p="); //url = news.aspx?p={0}
            return dt;
        }

        //获取单页内容
        public string getpage(string pageno)
        {
            SinglePage p = SinglePageFactory.Get(pageno);
            if (p != null)
                return p.content;

            return string.Empty;
        }

        //tpl=<a href="{0}" target="_blank">{1}</a>
        public string getlinks(int categoryid, string tpl)
        {
            StringBuilder sb = new StringBuilder();
            DataTable links = LinkFactory.GetList(categoryid);

            foreach (DataRow dr in links.Rows)
            {
                sb.AppendFormat(tpl, dr["linkurl"].ToString(), dr["linkname"].ToString());
            }

            return sb.ToString();
        }

        public string getsetting(string settingKey)
        {
            return SiteSettingFactory.Get(settingKey);
        }
    }

}
