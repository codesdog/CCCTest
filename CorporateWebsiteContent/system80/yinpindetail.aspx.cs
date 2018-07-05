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

public partial class system80_yinpindetail : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    DAL dl = new DAL();
    string str = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind1();
        }
    }
    public void bind1()
    {
        string Id=Request .QueryString ["id"];
        str = "select * from ck_Member where Id=" + Convert.ToInt32(Id) + "";
        dt = dl.GetDataSet(str, "ck_Member");
        //str = "select * from  ck_Recruitment where Id=" + Convert.ToInt32(Id) + "";
        //dt = dl.GetDataSet(str, "ck_Recruitment");
        Label1.Text = dt.Rows[0][1].ToString();
        Label2.Text = dt.Rows[0][3].ToString();
        Label3.Text=dt .Rows[0][5].ToString ();
        Label4.Text=dt .Rows[0][6].ToString ();
        Label5.Text = dt.Rows[0][12].ToString();
        Label6.Text = dt.Rows[0][7].ToString();
        Label7.Text = dt.Rows[0][8].ToString();
        Label8.Text = dt.Rows[0][9].ToString();
        Label9.Text = dt.Rows[0][10].ToString();
        Label10.Text = dt.Rows[0][11].ToString();
        str = dt.Rows[0][13].ToString();
        if (str == "ch")
        {
            Label11.Text = "应聘来源于：中文网站！";
        }
        if (str == "en")
        {
            Label11.Text = "应聘来源于：英文网站！";
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string Id = Request.QueryString["id"];
        dl.ExecuteSQL("delete from ck_Member where Id=" + Convert.ToInt32(Id) + "");
        JScript.AlertAndRedirect("删除成功！", "yinpin.aspx", this.Page);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("yinpin.aspx");
    }
}
