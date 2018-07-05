using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class teacher : System.Web.UI.Page
{
    CommonClass CC = new CommonClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        //教育
        jiaoyu.DataSource = CC.GetDataSet("SELECT * FROM tbNews WHERE Style = '教育' order by ID Desc", "tbNews");
        jiaoyu.DataKeyField = "id";
        jiaoyu.DataBind();
    }
    protected void jiaoyu_ItemCommand(object source, DataListCommandEventArgs e)
    {
        int id = Convert.ToInt32(jiaoyu.DataKeys[e.Item.ItemIndex].ToString());
        Response.Redirect("fenye.aspx?ID=" + id + "");
    }
}
