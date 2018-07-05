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

public partial class system80_abt : System.Web.UI.Page
{
    DAL dl = new DAL();
    string str = "";
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"]== null || Session["username"].ToString() == "")
        {
            JScript.AlertAndRedirect("对不起，您是非法登录！", "login.aspx", this.Page);
           
        }
        if (!IsPostBack)
        {
            string reac = Request.QueryString["action"];
            if (reac == "mod")
            {
                Button1.Visible = false;
                Button2.Visible = true;
                string strid = Request.QueryString["id"];
                dt = dl.GetDataSet("select * from ck_lxwm where lxid=" + Convert.ToInt32(strid) + "", "ck_lxwm");
                TextBox1.Text = dt.Rows[0][1].ToString();
                FCKeditor1.Value = dt.Rows[0][2].ToString();
                DropDownList1.Visible = false;
                DropDownList2.Visible = false;
                Label1.Visible = false;
                Label2.Visible = false;
               

            }
            else
            {
                Button2.Visible = false;
                Button1.Visible = true;
                dropbind();
            }
        }
    }
    public void dropbind()
    {
        DropDownList1.DataSource = dl.GetDataSet("select * from CK_lxwmClass", "CK_lxwmClass");
        DropDownList1.DataValueField = "lxClassId";
        DropDownList1.DataTextField = "lxClassName";
        DropDownList1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        dl.ExecuteSQL("insert into CK_Lxwm(lxTitle,lxContent,lxClassId,lxClassName,flag) values('" + TextBox1.Text.Trim() + "','" + FCKeditor1.Value.Replace("'", "").Replace("\'", "").Trim() + "','" + DropDownList1.SelectedValue.Trim() + "','" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedValue.Trim() + "')");
        JScript.AlertAndRedirect("操作成功！", "add_about.aspx?action=list", this.Page);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string strid = Request.QueryString["id"];
        dl.ExecuteSQL("update ck_lxwm set lxContent='" + FCKeditor1.Value.Replace("'", "").Replace("\'", "").Trim() + "' where lxid=" + Convert.ToInt32(strid) + "");
        JScript.AlertAndRedirect("操作成功！", "add_about.aspx?action=list", this.Page);
    }
}
