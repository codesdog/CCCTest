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
public partial class system80_zhaopinlist : System.Web.UI.Page
{
    string str = "";
    OleDbConnection myconn = DAL.Creation();
    DAL db = new DAL();
    DAL dl = new DAL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind();
            NewsBindCount();
        }
    }
    public void NewsBindCount()
    {
        myconn.Open();
        string str = "select count(Id) from ck_Recruitment";
        OleDbCommand cmd = new OleDbCommand(str, myconn);

        AspNetPager1.RecordCount = (int)cmd.ExecuteScalar();
        myconn.Close();
    }
    public void bind()
    {
        OleDbDataAdapter Oda = new OleDbDataAdapter("select * from ck_Recruitment order by Id DESC", myconn);
        DataSet ds = new DataSet();
        Oda.Fill(ds, AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1), AspNetPager1.PageSize, "ck_Recruitment");
        GridView1.DataKeyNames = new string[] { "Id" };
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void AspNetPager1_PageChanging(object src, Wuqi.Webdiyer.PageChangingEventArgs e)
    {
        AspNetPager1.CurrentPageIndex = e.NewPageIndex;
        bind();
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
        {
            CheckBox cbox = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
            if (cbox.Checked == true)
            {

                string sqlstr = "delete from ck_Recruitment where Id=" + Convert.ToInt32(GridView1.DataKeys[i].Value) + "";
                dl.ExecuteSQL(sqlstr);

            }
        }
        bind();
        NewsBindCount();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        CheckBox2.Checked = false;
        for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
        {
            CheckBox cbox = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
            cbox.Checked = false;
        }
    }
}
