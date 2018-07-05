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
public partial class english_AllProducts : System.Web.UI.Page
{
    DAL dl = new DAL();
    OleDbConnection mc = DAL.Creation();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
                dt = dl.GetDataSet("select * from ck_webconfig", "ck_webconfig");

                HtmlMeta hm = new HtmlMeta();
                hm.Name = "keywords";
                hm.Content = dt.Rows[0][3].ToString();
                Page.Header.Controls.Add(hm);
                //
                HtmlMeta hm1 = new HtmlMeta();
                hm1.Name = "description";
                hm1.Content = dt.Rows[0][6].ToString();
                Page.Header.Controls.Add(hm1);
                Page.Title = dt.Rows[0][1].ToString() + "--ProductCenter--" + dt.Rows[0][2].ToString();
            
            //dt = dl.GetDataSet("select * from ck_Products where flag='ch' order by Id desc", "ck_Products");

            //显示分类产品
            bind1();
            bind2();

        }
    }
    public void bind1()
    {
        OleDbCommand cmd = new OleDbCommand("select count(Id) from ck_Products where flag='en'", mc);
        mc.Open();
        AspNetPager1.RecordCount = (int)cmd.ExecuteScalar();
        mc.Close();
    }
    public void bind2()
    {

        OleDbDataAdapter oda = new OleDbDataAdapter("select * from ck_Products where flag='en' order by Id desc", mc);
        DataSet ds = new DataSet();
        oda.Fill(ds, AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1), AspNetPager1.PageSize, "ck_Products");
        dl_pro.DataSource = ds;
        dl_pro.DataBind();

    }
}