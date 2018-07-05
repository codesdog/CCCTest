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

public partial class com_ProductCategory : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DAL dl=new DAL ();
            rp_about.DataSource = dl.GetDataSet("select * from ck_ProClass where flag='ch' order by ProClassId desc", "ck_ProClass");
            rp_about.DataBind();
        }
    }
}
