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

public partial class com_en_enProductCategory : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DAL dl = new DAL();
            rp_about.DataSource = dl.GetDataSet("select * from ck_ProClass where flag='en' order by ProClassId desc", "ck_ProClass");
            rp_about.DataBind();
        }
    }
}
