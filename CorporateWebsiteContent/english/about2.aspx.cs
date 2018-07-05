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

public partial class english_about2 : System.Web.UI.Page
{
    DAL dl = new DAL();
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
                Page.Title = dt.Rows[0][1].ToString() + "--OnlineFeedback--" + dt.Rows[0][2].ToString();
           
            if (Request.QueryString["id"] == null || Request.QueryString["id"].ToString() == "")
            {
                JScript.AlertAndRedirect("非法操作！", "index.aspx", this.Page);

            }
            else
            {
                string str = Request.QueryString["id"].ToString();
              
                dt = dl.GetDataSet("select * from CK_Lxwm where lxClassId=" + Convert.ToInt32(str) + "", "CK_lxwm");
                Label1.Text = dt.Rows[0][4].ToString();
                lbl_title.Text = dt.Rows[0][1].ToString();
                lbl_con.Text = dt.Rows[0][2].ToString();
            }
        }
    }
}
