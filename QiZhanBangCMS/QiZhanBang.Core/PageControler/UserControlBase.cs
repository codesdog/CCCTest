using System;
using System.Collections.Generic;
using System.Text;
using System.Web;
using System.Data;

using QiZhanBang.Core.Business;
using QiZhanBang.Core.Factory;
using QiZhanBang.Core.Model;

namespace QiZhanBang.Core.PageControler
{
    public class UserControlBase : System.Web.UI.UserControl
    {
        //tpl=<a href="{0}" target="_blank">{1}</a>
        public string getlinks(int categoryid ,string tpl)
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
