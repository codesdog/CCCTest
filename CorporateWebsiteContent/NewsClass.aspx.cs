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
public partial class NewsClass : System.Web.UI.Page
{
    DAL dl = new DAL();
    OleDbConnection mc = DAL.Creation();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind1();
            bind2();
            DataTable dt = new DataTable();
            string STRID = Request.QueryString["id"];
            string str = "select * from ck_News where  NewsClassId=" + Convert.ToInt32(STRID) + " and flag='ch' ";
            dt = dl.GetDataSet(str, "ck_News");
            Label1.Text = dt.Rows[0][6].ToString();


        }
    }
    public void bind1()
    {
        string STRID = Request.QueryString["id"];
        OleDbCommand cmd = new OleDbCommand("select count(NewsClassId) from ck_News where NewsClassId="+Convert .ToInt32(STRID)+" and flag='ch'", mc);
        mc.Open();
        AspNetPager1.RecordCount = (int)cmd.ExecuteScalar();
        mc.Close();
    }
    public void bind2()
    {
        string STRID = Request.QueryString["id"];
        OleDbDataAdapter oda = new OleDbDataAdapter("select * from ck_News where  NewsClassId=" + Convert.ToInt32(STRID) + " and flag='ch' order by NewsId desc", mc);
        DataSet ds = new DataSet();
        oda.Fill(ds, AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1), AspNetPager1.PageSize, "ck_Products");
        rp_news.DataSource = ds;
        rp_news.DataBind();

    }
    protected void AspNetPager1_PageChanging(object src, Wuqi.Webdiyer.PageChangingEventArgs e)
    {
        AspNetPager1.CurrentPageIndex = e.NewPageIndex;
        bind2();
    }
}
