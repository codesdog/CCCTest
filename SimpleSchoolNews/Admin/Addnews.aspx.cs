using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Admin_Addnews : System.Web.UI.Page
{
    CommonClass CC = new CommonClass();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        CC.ExecSQL("INSERT INTO tb_News( Title, Content, Style, Type, IssueDate)VALUES ('" + this.txtNewsTitle.Text.Trim() + "', '" + this.txtNewsContent.Text.Trim() + "', '" + this.labTitle.Text.Trim() + "', '" + this.ddlNewsType.SelectedValue.ToString() + "', '" + DateTime.Now.ToString("yyyy-MM-dd") + "')");
        //调用CommonClass类的MessageBox方法，弹出提示框，提示用户添加成功
        Response.Write(CC.MessageBox("添加成功！"));
        Response.AddHeader("Refresh", "0"); 
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        this.txtNewsContent.Text = "";
        this.txtNewsTitle.Text = "";
    }
}
