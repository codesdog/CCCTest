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
    public partial class ViewNews : System.Web.UI.Page
    {
        public string keytitle, myurl, mytitle, keycontent, lbl_Author, lbl_AddTime, lbl_ReadCount;
        protected void Page_Load(object sender, EventArgs e)
        {
            pageload();
        }
        private void pageload()
        {
            if (!IsPostBack)
            {
                
                string strqry = "Select  * From T_News where id=" + Request.QueryString["id"];
                DataRow drw = DBFun.GetDataRow(strqry);
                if (drw == null)
                {
                    keycontent = "该新闻已删除或不存在！";
                    return;
                }
                strqry = "Update T_News Set Readcount=readcount+1 where id=" + Request.QueryString["id"];
                DBFun.ExecuteSql(strqry);
                keytitle  = drw["title"].ToString();
                lbl_Author = drw["author"].ToString();
                lbl_AddTime = drw["Addtime"].ToString();
                lbl_ReadCount = drw["readcount"].ToString();
                keycontent = drw["contents"].ToString();
                mytitle = drw["Newstype"].ToString();
                myurl = "News.aspx?id=" + drw["Newstypeid"].ToString();
            }
        }
    }
}