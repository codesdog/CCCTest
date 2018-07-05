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

public partial class system80_News_AddChNews : System.Web.UI.Page
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
            bindNewsClass();
        }
    }
    public void bindNewsClass()
    {
        DropDownList1.DataSource = dl.GetDataSet("select * from ck_NewsClass where flag='ch'", "ck_NewsClass");
        DropDownList1.DataValueField = "NewsClassId";
        DropDownList1.DataTextField = "NewsClassName";
        DropDownList1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text =="")
        {
            JScript.AlertAndRedirect("标题不能为空！", "AddChNews.aspx", this.Page);
        }
        else
        {
            string str = "ch";
            dl.ExecuteSQL("insert into ck_News(NewsTitle,NewsContent,NewsAuthor,NewsClassId,NewsClassName,flag) values('" + TextBox1.Text.Trim() + "','" + FCKeditor1.Value.Replace("'", "").Replace("\'", "").Trim() + "','" + TextBox2.Text.Trim() + "','" + DropDownList1.SelectedValue.Trim() + "','" + DropDownList1.SelectedItem.Text + "','" + str + "')");
            JScript.AlertAndRedirect("提交成功！", "AddChNews.aspx", this.Page);
        }
    }
}
