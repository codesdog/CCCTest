using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class com_top : System.Web.UI.UserControl
{
    DAL dl = new DAL();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            webBind();
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
        hm1.Content = dt.Rows[0][6].ToString();
        Page.Header.Controls.Add(hm1);
        Page.Title = dt.Rows[0][1].ToString() + "--网站首页--" + dt.Rows[0][2].ToString();
    }
}
