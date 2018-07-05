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

public partial class rs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DAL dl = new DAL();
            DataTable dt = new DataTable();
            dt=dl .GetDataSet ("select * from ck_Recruitment where Id="+Convert .ToInt32(Request .QueryString ["id"])+"","ck_Recruitment");

            Label2.Text = dt.Rows[0][1].ToString();
            Label3.Text = dt.Rows[0][4].ToString();
            Label4.Text = dt.Rows[0][6].ToString();
            Label5.Text = dt.Rows[0][2].ToString();
            Label6.Text = dt.Rows[0][3].ToString();
            Label7.Text = dt.Rows[0][5].ToString();
            Label8.Text = dt.Rows[0][7].ToString();
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string strid=Request .QueryString ["id"].ToString ();
        Response.Redirect("yinpin.aspx?id=" + Convert.ToInt32(strid) + "");
    }
}
