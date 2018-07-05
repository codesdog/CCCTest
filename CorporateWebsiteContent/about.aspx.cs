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

public partial class about : System.Web.UI.Page
{
    DAL dl = new DAL();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
               
                dt = dl.GetDataSet("select * from CK_Lxwm where lxClassId=1", "CK_lxwm");
                Label1.Text = dt.Rows[0][4].ToString();
                lbl_title.Text = dt.Rows[0][1].ToString();
                lbl_con.Text = dt.Rows[0][2].ToString();
            }
        }
    public void webBind()
    {

        dt = dl.GetDataSet("select * from ck_webconfig", "ck_webconfig");

        HtmlMeta hm = new HtmlMeta();
        hm.Name = "keywords";
        hm.Content = dt.Rows[0][3].ToString();
        Page.Header.Controls.Add(hm);
        //
        HtmlMeta hm1 = new HtmlMeta();
        hm1.Name = "description";
        hm1.Content = dt.Rows[0][6].ToString();//5_1_a_s_p_x
        Page.Header.Controls.Add(hm1);
        Page.Title = dt.Rows[0][1].ToString() + "--网站首页--" + dt.Rows[0][2].ToString();
    }
}
