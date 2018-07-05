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

public partial class left : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["username"] == null)
            {
                Response.Write("<script>alert('对不起，您是非法登陆！');parent.location.href='Login.aspx'</script>");
            }
            else
            {
               Label1 .Text  = Session["username"].ToString();
            }
        }
    }
    protected void lb1_Click(object sender, EventArgs e)
    {
        //Response.Write("<script>alert('确认退出吗？');window.parent.href='Login.aspx'</script>");
        //Response.Redirect("Login.aspx");
        ////Response.Write ("<script>alert('确认？');window.parent.href='login.aspx'</script>");
        Session.Clear();
        Session.Abandon();
        Response.Write("<script>alert('您已成功退出!!');parent.location.href='Login.aspx'</script>"); 
       
    }
}
