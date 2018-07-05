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

public partial class english_showproducts : System.Web.UI.Page
{
    DAL dl = new DAL();
    protected string imgurl = "";
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
                dt = dl.GetDataSet("select * from ck_Products where Id=" + Convert.ToInt32(strid) + "", "ck_Products");
                Label1.Text = dt.Rows[0][7].ToString();
                Label3.Text = dt.Rows[0][1].ToString();
                Label2.Text = dt.Rows[0][1].ToString();
                imgurl = dt.Rows[0][3].ToString();
                Label4.Text = dt.Rows[0][2].ToString();
                lblauthor.Text = dt.Rows[0][5].ToString();
                lbl_Time.Text = dt.Rows[0][4].ToString();
            }
        }
    }
}
