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

public partial class about2 : System.Web.UI.Page
{
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
                string str = Request.QueryString["id"].ToString();
                DAL dl = new DAL();
                DataTable dt = new DataTable();
                dt = dl.GetDataSet("select * from CK_Lxwm where lxClassId=" + Convert.ToInt32(str) + "", "CK_lxwm");
                Label1.Text = dt.Rows[0][4].ToString();
                lbl_title.Text = dt.Rows[0][1].ToString();
                lbl_con.Text = dt.Rows[0][2].ToString();
            }
        }
    }
}
