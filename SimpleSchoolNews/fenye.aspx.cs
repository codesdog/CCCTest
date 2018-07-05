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

public partial class fenye : System.Web.UI.Page
{
    CommonClass CC = new CommonClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet ds = CC.GetDataSet("select * from tbNews", "tbNews");
        DataRow[] row = ds.Tables["tbNews"].Select("id=" + Request.QueryString["id"]);
        foreach (DataRow rs in row)
        {
            //this.Page.Title = rs["title"].ToString();
            this.title.Text = rs["title"].ToString();
            this.content.Text = rs["content"].ToString();
        }
    }
}
