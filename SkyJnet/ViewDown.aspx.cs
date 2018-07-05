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
    public partial class ViewDown : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                  
            string strqry = "";
            
            strqry = "Select * From T_Softclass order by id desc";
            DataView dv;
            dv = DBFun.GetDataView(strqry);
            rp_DownClass.DataSource = dv;
            rp_DownClass.DataBind();

            strqry = "Select  * From T_Soft where id=" + Request.QueryString["id"];
            DataRow drw = DBFun.GetDataRow(strqry);
            if (drw == null)
            {
                lbl_intro.Text = "文件已删除或不存在！";
                return;
            }
            lbl_filename.Text = drw["softname"].ToString();
            lbl_filesize.Text = drw["Softsize"].ToString();
            lbl_addtime.Text = drw["addtime"].ToString();
            lbl_classname.Text = drw["classname"].ToString();
            lbl_downcount.Text = drw["downcount"].ToString();
            lbl_intro.Text = drw["intro"].ToString();            
            ltl_softpic.Text = drw["softPic"].ToString();
            if (drw["downurl2"].ToString() != "")
                pan_down2.Visible = true;
            lbl_NavPath.Text = "<a href='download.aspx'> 下载 </a> >> <a href='download.aspx?classid=" + drw["classid"].ToString() + "'>"
                + drw["classname"].ToString() + "</a> >> " + lbl_filename.Text;
            Master.Page.Title = Application["siteName"].ToString() + " - " + lbl_filename.Text ;
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