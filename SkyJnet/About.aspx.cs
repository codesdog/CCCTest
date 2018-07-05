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
    public partial class About : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bindpage();
        }
        private void bindpage()
        {
             if (!IsPostBack)
            {
                
                string strqry;
                LeftContents.strqryp = "Select * From T_About order by id asc";
                LeftContents.strfieldp = "AboutType";
                LeftContents.strurlp = "About.aspx?id=";
                LeftContents.strmytitlep = "关于我们";

                if (Request.QueryString.Count == 0)
                {
                    strqry = "Select top 1 * From T_About ";
                }
                else
                {
                    strqry = string.Format("Select * From T_About where id={0} order by id desc", Request.QueryString["id"]);
                }
                DataRow drw = DBFun.GetDataRow(strqry);
                if (drw == null)
                {
                    lbl_Contents.Text = "请在后台修改内容！";
                    Master.Page.Title = Application["siteName"].ToString() + " - 关于我们";
                    return;
                }
                
                lbl_Contents.Text = drw["contents"].ToString();
                lbl_Title.Text = drw["Abouttype"].ToString();
                
            }
        }
        protected string GetLimitChar(string strChar, int intLength)
        {
            //取得自定义长度的字符串
            if (strChar.Length > intLength)
            { return strChar.Substring(0, intLength); }
            else
            { return strChar; }

        }

    }
}