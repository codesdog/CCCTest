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

public partial class com_tuijian : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DAL dl = new DAL();
            DataTable dt = new DataTable();
            rp_ab.DataSource = dl.GetDataSet("select top 5 ck_News.* from ck_News where NewsClassId=8 order by NewsId desc", "ck_News");
            rp_ab.DataBind();
        }
    }
    public string Custring(string content)
    {
        if (content.Length > 15)
        {
            return content.Substring(0, 15).ToString() + "..";
        }
        else
        {
            return content;
        }
    }
}
