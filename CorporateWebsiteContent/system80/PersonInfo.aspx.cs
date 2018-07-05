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
public partial class Admin_PersonInfo : System.Web.UI.Page
{
    DAL db = new DAL();
    DAL dl = new DAL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //if (Session["username"] == null)
            //{
            //    Response.Write("<script>alert('对不起，您是非法登陆！');parent.location.href='Login.aspx'</script>");
            //}
            if (Request.QueryString["action"] == null)
            {
                Response.Write("<script>alert('对不起，您是非法登陆！');parent.location.href='Login.aspx'</script>");
            }
            else
            {
                if (Request.QueryString["action"].ToString() == "add")
                {
                    Panel2.Visible = true;
                    Panel1.Visible = false;
                    InfoBind();
                }
                else
                {
                    Panel1.Visible = true;
                    Panel2.Visible = false;
                    BindData();
                }
            }

        }

    }
    public void InfoBind()
    {
        this.DataGrid1 .DataSource =dl.GetDataSet("select * from ck_Admin order by Id desc", "ck_Admin");
        DataGrid1.DataKeyField = "Id";
        DataGrid1.DataBind();
    }
    public void BindData()
    {
        DAL dl = new DAL();
        DataTable dt = new DataTable();
        string str = "select * from ck_Admin where AdminName='" + Session["username"].ToString() + "'";
        dt = dl.GetDataSet(str, "ck_Admin");
        TextBox1.Text = dt.Rows[0][1].ToString();
        //TextBox2.Text = dt.Rows[0][2].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        dl.ExecuteSQL("update ck_Admin set AdminName='" + TextBox1.Text.Trim() + "',AdminPass='" + DAL.Md5(TextBox2.Text.Trim()) + "' where AdminName='" + Session["username"].ToString() + "'");
        Response.Write("<script>alert('保存成功！');location.href='PersonInfo.aspx?action=add'</script>");

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        dl.ExecuteSQL("insert into ck_Admin(AdminName,AdminPass)values('" + TextBox3.Text.Trim() + "','" + DAL.Md5(TextBox4.Text.Trim()) + "')");
        Label1.Text = "添加成功！";
        InfoBind();

    }
    protected void DataGrid1_DeleteCommand(object source, DataGridCommandEventArgs e)
    {
        try
        {
            string delid = DataGrid1.DataKeys[e.Item.ItemIndex].ToString();
            dl.ExecuteSQL("delete from ck_Admin where Id=" + Convert.ToInt32(delid) + "");
            InfoBind();
        }
        catch (OleDbException er)
        {
            Page.RegisterStartupScript("mm", "<script>alert('删除失败！')</script>");
        }

    }
}
