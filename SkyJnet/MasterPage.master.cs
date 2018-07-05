using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
namespace Web
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {

        public string pagetitle, keywords, description,copyright;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            pageload();
        }
        private void pageload()
        {

            if (Application["AppSet"] == null)
            {
                DataRow drw = DBFun.GetDataRow("Select * From T_Setup");
                
                Application["SiteUrl"]= drw["Url"].ToString();
                Application["SiteKey"]= drw["WebKeys"].ToString();
                Application["SiteDes"]= drw["WebDes"].ToString();
                Application["CopyRight"]= drw["CopyRight"].ToString();
                Application["SiteName"] = drw["name"].ToString();                
                string[] contact = drw["contact"].ToString().Split(',');
                Application["contact"] = contact;
                Application["AppSet"] = "yes";

            }
            if (!IsPostBack)
            {
                if (Application["AppSet"] != null)
                {
                    keywords = Application["SiteKey"].ToString();
                    description = Application["SiteDes"].ToString();
                    copyright = Application["CopyRight"].ToString();
                    pagetitle = Application["SiteName"].ToString();
                }
            }
        }
       
    }
}