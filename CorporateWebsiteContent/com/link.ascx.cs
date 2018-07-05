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

public partial class com_link : System.Web.UI.UserControl
{
    DAL dl = new DAL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

           
            bind();
        }
    }
    public void bind()
    {
        dl_link.DataSource = dl.GetDataSet("select * from ck_link order by id desc", "ck_link");
        dl_link.DataBind();
    }
}
