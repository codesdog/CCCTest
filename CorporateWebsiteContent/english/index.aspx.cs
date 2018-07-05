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

public partial class english_index : System.Web.UI.Page
{
    DAL dl = new DAL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind6();
            bind1();
            bind2();
            DataTable dt = new DataTable();
            dt = dl.GetDataSet("select * from ck_lxwm where lxid=4", "ck_lxwm");
            Label1.Text = dt.Rows[0][2].ToString().Substring(0, 300) + "........&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='about.aspx?id=7' title='查看更多详细介绍'>查看更多介绍</a>";
        }
    }
    public void bind6()
    {
        DLproduct.DataSource = dl.GetDataSet("select * from ck_Products  where flag='en'", "ck_Products");
        DLproduct.DataBind();
    }
    public void bind1()
    {
        DataList1.DataSource = dl.GetDataSet("select top 7 ck_News.* from ck_News WHERE NewsClassId=6 and flag='en' order by NewsId desc", "ck_News");
        DataList1.DataBind();
    }
    public string CutString(string content)
    {
        if (content.Length > 25)
        {
            return content.Substring(0, 25) + "...";
        }
        else
        {
            return content;
        }
    }
    public void bind2()
    {
        DataList2.DataSource = dl.GetDataSet("select top 7 ck_News.* from ck_News WHERE NewsClassId=12 and flag='en'order by NewsId desc", "ck_News");
        DataList2.DataBind();
    }
}
