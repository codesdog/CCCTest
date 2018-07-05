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

public partial class feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "否";
        string str2 = "ch";
        DAL dl = new DAL();
        dl.ExecuteSQL("insert into ck_feedback(title,content,author,phone,address,a_email,QQ,beizhu,flag,fg) values('" + TextBox1.Text.Trim() + "','" + TextBox3.Text.Trim() + "','" + TextBox2.Text.Trim() + "','" + TextBox4.Text.Trim() + "','" + TextBox8.Text.Trim() + "','" + TextBox5.Text.Trim() + "','" + TextBox6.Text.Trim() + "','" + TextBox7.Text.Trim() + "','"+str+"','"+str2+"')");
        JScript.AlertAndRedirect("提交成功，管理员审核后，才会显示！", "feedback.aspx", this.Page);
    }
}
