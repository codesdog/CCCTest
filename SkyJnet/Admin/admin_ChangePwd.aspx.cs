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
namespace Web.Admin
{
    public partial class ChangePwd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //加载
            if (!IsPostBack)
            {
                CommFun.IsAdmin(); 
            }
        }

        // 下载于www.51aspx.com
       

      
        protected void btn_Ok_Click(object sender, EventArgs e)
        {
            //操作
            string pwd = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(tb_OldPwd.Text, "MD5");
            string strqry = "Select * From T_Admin where UserPwd='" + pwd + "'";
            if (!DBFun.SearchTable(strqry))
            {
                Response.Write("<script>alert('原密码输入不正确！');</script>");
                ltl_Msg.Text = "原密码输入不正确！";
                return;
            }
            pwd = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(tb_NewPwd.Text, "MD5");
            strqry = "update T_Admin Set UserPwd='" + pwd + "'";
            if (DBFun.ExecuteUpdate(strqry))
            {
                Response.Write("<script>alert('修改密码成功！');</script>");
                ltl_Msg.Text = "修改密码成功！";
            }

        }
        
    }
}