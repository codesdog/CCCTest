using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

public partial class system80_AddNews : System.Web.UI.Page
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
            //TextBox2.Text = DateTime.Now.Date.ToString("yyyy-MM-dd");//
            //TextBox2.Text = DateTime.Now.ToString();
            if (Request.QueryString["action"] == null || Request.QueryString["action"].ToString() == "")
            {
                JScript.AlertAndRedirect("对不起，您未登录系统！！", "login.aspx", this.Page);
            }
            else
            {
                string strRc = Request.QueryString["action"].ToString();
                if (strRc == "AddNews")
                {
                   this.plAddNews.Visible = true;
                    this.plNewsClass.Visible = false;
                    DLclassbind();
                }
                if (strRc == "NewsClass")
                {
                   this.plNewsClass.Visible = true;
                   this.plAddNews.Visible = false;
                   bindNewsClass();
                }
            }
        }
    }
    public void DLclassbind()
    {

        dlNewsClass.DataSource = dl.GetDataSet("select * from CK_NewsClass order by NewsClassId desc", "CK_NewsClass");
        dlNewsClass.DataValueField = "NewsClassId";
        dlNewsClass.DataTextField = "NewsClassName";
        dlNewsClass.DataBind();
    }
    protected void  Button4_Click1(object sender, EventArgs e)
    {
      
        dl.ExecuteSQL("insert into CK_NewsClass(NewsClassName,flag) values('" + TextBox4.Text.Trim() + "','" + DropDownList1.SelectedValue.ToString() + "')");
        JScript.AlertAndRedirect("操作成功！", "AddNews.aspx?action=NewsClass", this.Page);
        bindNewsClass();

    }
    public void bindNewsClass()
    {
        DataGrid1.DataSource = dl.GetDataSet("select * from CK_NewsClass order by NewsClassId desc", "CK_NewsClass");
        this.DataGrid1.DataKeyField = "NewsClassId";
        DataGrid1.DataBind();
    }
    protected void DataGrid1_CancelCommand(object source, DataGridCommandEventArgs e)
    {
        DataGrid1.EditItemIndex = -1;
        bindNewsClass();
    }
    protected void DataGrid1_EditCommand(object source, DataGridCommandEventArgs e)
    {
        DataGrid1.EditItemIndex = e.Item.ItemIndex;
        bindNewsClass();
    }
    protected void DataGrid1_UpdateCommand(object source, DataGridCommandEventArgs e)
    {
        string id = DataGrid1.DataKeys[e.Item.ItemIndex].ToString();
        string strName = ((TextBox)e.Item.Cells[1].Controls[0]).Text;
        string sqlstr = "update CK_NewsClass set NewsClassName='" + strName + "' where NewsClassId=" + Convert.ToInt32(id) + "";
        dl.ExecuteSQL(sqlstr);
        DataGrid1.EditItemIndex = -1;
        JScript.AlertAndRedirect("操作成功！！", "AddNews.aspx?action=NewsClass", this.Page);
    }
    protected void DataGrid1_DeleteCommand(object source, DataGridCommandEventArgs e)
    {
        string id = DataGrid1.DataKeys[e.Item.ItemIndex].ToString();
        dl.ExecuteSQL("delete from CK_NewsClass where NewsClassId=" + Convert.ToInt32(id) + "");
        JScript.AlertAndRedirect("操作成功！！", "AddNews.aspx?action=NewsClass", this.Page);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        dl.ExecuteSQL("insert into CK_News(NewsTitle,NewsContent,NewsAuthor,NewsClassId,NewsClassName,flag) values('" + TextBox1.Text.Trim() + "','" + FCKeditor1.Value.Replace("'", "").Replace ("\'","").Trim() + "','" + TextBox3.Text.Trim() + "','" + dlNewsClass.SelectedValue.Trim() + "','" + dlNewsClass.SelectedItem.Text + "','" + dlFlag.SelectedValue.Trim() + "')");
        JScript.AlertAndRedirect("操作成功！！", "AddNews.aspx?action=AddNews", this.Page);
        TextBox1.Text = "";
        FCKeditor1.Value = "";

    }
}
