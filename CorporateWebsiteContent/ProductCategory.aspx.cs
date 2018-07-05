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
public partial class ProductCategory : System.Web.UI.Page
{
    DAL dl = new DAL();
    OleDbConnection mc = DAL.Creation();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["id"] == null || Request.QueryString["id"].ToString() == "")
            {
                JScript.AlertAndRedirect("非法操作！", "index.aspx", this.Page);
            }
            else
            {
                string strid = Request.QueryString["id"];
              
                DataTable dt = new DataTable();
                dt = dl.GetDataSet("select * from ck_Products where ProClassId=" + Convert.ToInt32(strid) + "", "ck_Products");
                Label1.Text = dt.Rows[0][7].ToString();
                //显示分类产品
                bind1();
                bind2();
               
            }
        }
    }
    public void bind1()
    {
        string strid = Request.QueryString["id"];
        OleDbCommand cmd = new OleDbCommand("select count(ProClassId) from ck_Products where ProClassId=" + Convert.ToInt32(strid) + "", mc);
        mc.Open();
        AspNetPager1.RecordCount = (int)cmd.ExecuteScalar();
        mc.Close();
    }
    public void bind2()
    {
        string strid = Request.QueryString["id"];
        OleDbDataAdapter oda = new OleDbDataAdapter("select * from ck_Products where ProClassId=" + Convert.ToInt32(strid) + " order by Id desc", mc);
        DataSet ds = new DataSet();
        oda .Fill (ds,AspNetPager1 .PageSize *(AspNetPager1 .CurrentPageIndex -1),AspNetPager1 .PageSize,"ck_Products");
        dl_pro.DataSource = ds;
        dl_pro.DataBind();

    }
    protected void AspNetPager1_PageChanging(object src, Wuqi.Webdiyer.PageChangingEventArgs e)
    {
        AspNetPager1.CurrentPageIndex = e.NewPageIndex;
        bind2();
    }
}
