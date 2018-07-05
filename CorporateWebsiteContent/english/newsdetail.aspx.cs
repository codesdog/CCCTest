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

public partial class newsdetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string strid = Request.QueryString["id"];
            DAL dl = new DAL();
            DataTable dt = new DataTable();
            dt = dl.GetDataSet("select * from ck_News where NewsId=" + Convert.ToInt32(strid) + "", "ck_News");
            lbl_con.Text = dt.Rows[0][2].ToString();
            lbl_title.Text = dt.Rows[0][1].ToString();
            Label2.Text = dt.Rows[0][3].ToString();
            Label3.Text = dt.Rows[0][4].ToString();
        }
    }
}
