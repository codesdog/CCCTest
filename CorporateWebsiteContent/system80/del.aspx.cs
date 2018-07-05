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
using System.Data.OleDb;
public partial class Admin_del : System.Web.UI.Page
{
    DAL dl = new DAL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null || Session["username"].ToString() == "")
        {
            JScript.AlertAndRedirect("对不起，您是非法登录！", "login.aspx", this.Page);

        }
        if (!IsPostBack)
        {
            string str=Request .QueryString ["action"];
            if (str == "del")
            {
                string delid = Request.QueryString["Id"].ToString();
                dl.ExecuteSQL("delete from ck_Admin where Id=" + Convert.ToInt32(delid) + "");
                Response.Redirect("PersonInfo.aspx?action=add");
            }
            if (str == "gg")
            {
                string id = Request.QueryString["Id"];
                dl.ExecuteSQL("delete from ck_Bulletin where Id=" + Convert.ToInt32(id) + "");
                Response.Write("<script>alert('删除成功！');location.href='GongGao.aspx?action=list'</script>");
            }
        }
    }
}
