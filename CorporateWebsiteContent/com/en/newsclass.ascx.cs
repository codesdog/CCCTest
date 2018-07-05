using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

public partial class com_newsclass : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DAL dl=new DAL ();
            rp_about.DataSource = dl.GetDataSet("select * from ck_NewsClass where flag='en' order by NewsClassId desc", "ck_NewsClass");
            rp_about.DataBind();
        }
    }
}
