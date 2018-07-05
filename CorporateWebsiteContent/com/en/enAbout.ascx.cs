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

public partial class com_enAbout : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DAL dl = new DAL();
            rp_about.DataSource = dl.GetDataSet("select * from CK_lxWMClass  where flag='en' order by lxClassId desc", "CK_lxWMClass");
            rp_about.DataBind();
        }
    }
}
