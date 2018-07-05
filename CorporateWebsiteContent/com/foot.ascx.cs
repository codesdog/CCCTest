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

public partial class com_foot : System.Web.UI.UserControl
{
    DAL dl = new DAL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            DataTable dt = new DataTable();
            dt = dl.GetDataSet("select * from ck_webconfig", "ck_webconfig");
            Label1.Text = dt.Rows[0][5].ToString();
            //dl_link.DataSource = dl.GetDataSet("select * from ck_link", "ck_link");
            //dl_link.DataBind();
            bind();
        }
    }
    public void bind()
    {
        dl_link.DataSource = dl.GetDataSet("select * from ck_link order by id desc", "ck_link");
        dl_link.DataBind();
    }
}
