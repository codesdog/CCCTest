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

public partial class Admin_Addusers : System.Web.UI.Page
{
    CommonClass CC = new CommonClass();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        CC.ExecSQL("INSERT INTO tb_User(userName, PassKey)VALUES ('" + this.TextBox1.Text.Trim() + "', '" + this.TextBox2.Text.Trim() + "')");
        //调用CommonClass类的MessageBox方法，弹出提示框，提示用户添加成功
        Response.Write(CC.MessageBox("添加成功！"));
        Response.AddHeader("Refresh", "0"); 
    }
}
