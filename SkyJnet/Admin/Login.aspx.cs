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
    public partial class Admin_Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            pageload();
        }
        private void pageload()
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["Action"] == "quit")
                {
                    Session["Admin"] = "No";
                    Response.Write("<script>window.close();</script>");
                }
            }
        }
        protected void btn_Ok_Click(object sender, EventArgs e)
        {
            //登录
            string pwd = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(tb_Pwd.Text, "MD5");
            string strqry = string.Format("Select * From T_Admin where Userid='{0}' and UserPwd='{1}'", tb_Id.Text,pwd );
            if (DBFun.SearchTable(strqry))
            {
                Session["Admin"] = "yes";
                Response.Redirect("admin_Index.aspx");
            }
            else
            {   
                
                Response.Write("<script>alert('帐号或密码错误！');</script>");
            }
           
            // 下载于www.51aspx.com
        }
       
}
}