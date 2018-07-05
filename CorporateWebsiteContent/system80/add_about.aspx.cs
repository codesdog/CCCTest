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

public partial class system80_add_about : System.Web.UI.Page
{
    DAL dl = new DAL();
    string str = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null || Session["username"].ToString() == "")
        {
            JScript.AlertAndRedirect("对不起，您是非法登录！", "login.aspx", this.Page);

        }
        if (!IsPostBack)
        {
            string reac = Request.QueryString["action"];
            if (reac == "add")
            {
                lxwmclass.Visible = true;
                bind1();
                lx.Visible = false;
            }
            if (reac == "list")
            {
                lx.Visible = true;
                lxwmclass.Visible = false;
                bind2();
            }
        }
    }
    public void bind1()
    {
        DataGrid1.DataSource = dl.GetDataSet("select * from CK_lxwmClass order by lxClassId desc", "CK_lxwmClass");
        DataGrid1.DataKeyField = "lxClassId";
        DataGrid1.DataBind();
    }
    public void bind2()
    {
        DataGrid2.DataSource = dl.GetDataSet("select * from CK_Lxwm order by lxid desc", "CK_Lxwm");
        DataGrid2.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         str = "ch";
        dl.ExecuteSQL("insert into CK_lxwmClass(lxClassName,flag) values('" + TextBox1.Text.Trim() + "','" + str + "')");
        JScript.AlertAndRedirect("操作成功！", "add_about.aspx?action=add", this.Page);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        str = "en";
        dl.ExecuteSQL("insert into CK_lxwmClass(lxClassName,flag) values('" + TextBox2.Text.Trim() + "','" + str + "')");
        JScript.AlertAndRedirect("操作成功！", "add_about.aspx?action=add", this.Page);
    }
    protected void DataGrid1_CancelCommand(object source, DataGridCommandEventArgs e)
    {
        DataGrid1.EditItemIndex = -1;
        bind1();
    }
    protected void DataGrid1_DeleteCommand(object source, DataGridCommandEventArgs e)
    {
        string delid=DataGrid1 .DataKeys[e.Item .ItemIndex].ToString ();
        dl.ExecuteSQL("delete from CK_lxwmClass where lxClassId=" + Convert.ToInt32(delid) + "");
        JScript.AlertAndRedirect("操作成功！", "add_about.aspx?action=add", this.Page);
    }
    protected void DataGrid1_EditCommand(object source, DataGridCommandEventArgs e)
    {
        DataGrid1.EditItemIndex = e.Item.ItemIndex;
        bind1();
    }
    protected void DataGrid1_UpdateCommand(object source, DataGridCommandEventArgs e)
    {
        string delid = DataGrid1.DataKeys[e.Item.ItemIndex].ToString();
        string txtname = ((TextBox)e.Item.Cells[1].Controls[0]).Text;
        dl.ExecuteSQL("update CK_lxwmClass set lxClassName='" + txtname + "' where lxClassId=" + Convert.ToInt32(delid) + "");
        JScript.AlertAndRedirect("操作成功！", "add_about.aspx?action=add", this.Page);
    }
}
