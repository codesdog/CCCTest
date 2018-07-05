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
using System.Collections;
namespace Web
{
    public partial class Default : System.Web.UI.Page
    {
        public string strcorpintro;//公司简介
        protected void Page_Load(object sender, EventArgs e)
        {
            pageload();
        }
        protected void pageload()
        {
            //绑定页面内容
            if (!IsPostBack)
            {
                //公司新闻
                string strqry = "Select top 5 * From T_News where Newstypeid=1 order by id desc";
                DataView dv = DBFun.GetDataView(strqry);
                rp_News1.DataSource = dv;
                rp_News1.DataBind();
            }
        }
        // 下载于www.51aspx.com
        protected string cutstr(string strChar, int intLength)
        {
            //取得自定义长度的字符串
            if (strChar.Length > intLength)
            { return strChar.Substring(0, intLength); }
            else
            { return strChar; }

        }

        protected void rp_News1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            // 下载于www.51aspx.com
        }
}
}