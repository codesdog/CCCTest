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
using System.Data.OleDb;
public partial class system80_ProductList : System.Web.UI.Page
{
    string str = "";
    OleDbConnection myconn = DAL.Creation();
    DAL db = new DAL();
    DAL dl = new DAL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["action"] == null || Request.QueryString["action"].ToString() == "")
            {
                JScript.AlertAndRedirect("操作非法!", "login.aspx", this.Page);
            }
            else
            {
                str = Request.QueryString["action"];
                if (str == "list")
                {
                    list.Visible = true;
                    cat.Visible = false;
                    bind();
                    NewsBindCount();
                }
                else if (str == "cat")
                {
                    list.Visible = false;
                    cat.Visible = true;
                    bindCat();

                }
            }
        }
    }
    public void bindCat()
    {
        DataGrid1.DataSource = dl.GetDataSet("select * from ck_ProClass order by ProClassId desc", "ck_ProClass");
        DataGrid1.DataKeyField = "ProClassId";
        DataGrid1.DataBind();
    }
    public void NewsBindCount()
    {
        myconn.Open();
        string str = "select count(Id) from ck_Products";
        OleDbCommand cmd = new OleDbCommand(str, myconn);

        AspNetPager1.RecordCount = (int)cmd.ExecuteScalar();
        myconn.Close();
    }
    public void bind()
    {
        OleDbDataAdapter Oda = new OleDbDataAdapter("select * from ck_Products order by Id DESC", myconn);
        DataSet ds = new DataSet();
        Oda.Fill(ds, AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1), AspNetPager1.PageSize, "ck_Products");
        GridView1.DataKeyNames = new string[] { "Id" };
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "")
        {
            JScript.AlertAndRedirect("类别名不能为空！", "ProductList.aspx?action=cat", this.Page);
        }
        else
        {
            str = "ch";
            dl.ExecuteSQL("insert into ck_ProClass(ProClassName,flag) values('" + TextBox1.Text.Trim() + "','" + str + "')");
            JScript.AlertAndRedirect("操作成功！", "ProductList.aspx?action=cat", this.Page);
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text == "")
        {
            JScript.AlertAndRedirect("Products Category is not null ！", "ProductList.aspx?action=cat", this.Page);
        }
        else
        {
            str = "en";
            dl.ExecuteSQL("insert into ck_ProClass(ProClassName,flag) values('" + TextBox2.Text.Trim() + "','" + str + "')");
            JScript.AlertAndRedirect("Operation is Ok！", "ProductList.aspx?action=cat", this.Page);
        }
    }
    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {
        for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
        {
            CheckBox cbox = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
            if (CheckBox2.Checked == true)
            {
                cbox.Checked = true;
            }
            else
            {
                cbox.Checked = false;
            }
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
        {
            CheckBox cbox = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
            if (cbox.Checked == true)
            {

                string sqlstr = "delete from ck_Products where Id=" + Convert.ToInt32(GridView1.DataKeys[i].Value) + "";
                dl.ExecuteSQL(sqlstr);

            }
        }
        bind();
        NewsBindCount();

    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        CheckBox2.Checked = false;
        for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
        {
            CheckBox cbox = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
            cbox.Checked = false;
        }
    }
    protected void AspNetPager1_PageChanging(object src, Wuqi.Webdiyer.PageChangingEventArgs e)
    {
        AspNetPager1.CurrentPageIndex = e.NewPageIndex;
        bind();
    }
    protected void DataGrid1_DeleteCommand(object source, DataGridCommandEventArgs e)
    {
        string delid=DataGrid1 .DataKeys[e.Item .ItemIndex ].ToString ();
        dl.ExecuteSQL("delete from ck_ProClass where ProClassId=" + Convert.ToInt32(delid) + "");
        JScript.AlertAndRedirect("删除成功！", "Productlist.aspx?action=cat", this.Page);
        bindCat();
    }
    protected void DataGrid1_CancelCommand(object source, DataGridCommandEventArgs e)
    {
        DataGrid1.EditItemIndex = -1;
        bindCat();
    }
    protected void DataGrid1_EditCommand(object source, DataGridCommandEventArgs e)
    {
        DataGrid1.EditItemIndex = e.Item.ItemIndex;
        bindCat();
    }
    protected void DataGrid1_UpdateCommand(object source, DataGridCommandEventArgs e)
    {
        string delid = DataGrid1.DataKeys[e.Item.ItemIndex].ToString();
        string txtname = ((TextBox)e.Item.Cells[1].Controls[0]).Text;
        string txtFlag = ((TextBox)e.Item.Cells[2].Controls[0]).Text;
        dl.ExecuteSQL("update ck_ProClass  set ProClassName='" + txtname + "',flag='" + txtFlag + "' where ProClassId=" + Convert.ToInt32(delid) + "");
        JScript.AlertAndRedirect("操作成功！", "Productlist.aspx?action=cat", this.Page);
    }
}
