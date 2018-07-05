using System;
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

public partial class Default : System.Web.UI.Page
{
    CommonClass CC = new CommonClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        //二中
        NO2.DataSource = CC.GetDataSet("SELECT TOP 6 * FROM tbNews WHERE Style = '二中' order by ID Desc", "tbNews");
        NO2.DataKeyField = "id";
        NO2.DataBind();
        //德育
        deyu.DataSource = CC.GetDataSet("SELECT TOP 6 * FROM tbNews WHERE Style = '德育' order by ID Desc", "tbNews");
        deyu.DataKeyField = "id";
        deyu.DataBind();
        //教育
        jiaoyu.DataSource = CC.GetDataSet("SELECT TOP 6 * FROM tbNews WHERE Style = '教育' order by ID Desc", "tbNews");
        jiaoyu.DataKeyField = "id";
        jiaoyu.DataBind();
        //家校
        jiaxiao.DataSource = CC.GetDataSet("SELECT TOP 6 * FROM tbNews WHERE Style = '家校' order by ID Desc", "tbNews");
        jiaxiao.DataKeyField = "id";
        jiaxiao.DataBind();
        //监督
        jiandu.DataSource = CC.GetDataSet("SELECT TOP 6 * FROM tbNews WHERE Style = '监督' order by ID Desc", "tbNews");
        jiandu.DataKeyField = "id";
        jiandu.DataBind();
        //科研
        keyan.DataSource = CC.GetDataSet("SELECT TOP 6 * FROM tbNews WHERE Style = '科研' order by ID Desc", "tbNews");
        keyan.DataKeyField = "id";
        keyan.DataBind();
        //教学
        jiaoxue.DataSource = CC.GetDataSet("SELECT TOP 6 * FROM tbNews WHERE Style = '教学' order by ID Desc", "tbNews");
        jiaoxue.DataKeyField = "id";
        jiaoxue.DataBind();
    }

    protected void NO2_ItemCommand(object source, DataListCommandEventArgs e)
        {
        int id = Convert.ToInt32(NO2.DataKeys[e.Item.ItemIndex].ToString());
        Response.Redirect("fenye.aspx?ID=" + id + "");
        }
    protected void deyu_ItemCommand(object source, DataListCommandEventArgs e)
        {
        int id = Convert.ToInt32(deyu.DataKeys[e.Item.ItemIndex].ToString());
        Response.Redirect("fenye.aspx?ID=" + id + "");
        }
    protected void jiaoyu_ItemCommand(object source, DataListCommandEventArgs e)
        {
        int id = Convert.ToInt32(jiaoyu.DataKeys[e.Item.ItemIndex].ToString());
        Response.Redirect("fenye.aspx?ID=" + id + "");
        }
    protected void jiaxiao_ItemCommand(object source, DataListCommandEventArgs e)
        {
        int id = Convert.ToInt32(jiaxiao.DataKeys[e.Item.ItemIndex].ToString());
        Response.Redirect("fenye.aspx?ID=" + id + "");
        }
    protected void jiandu_ItemCommand(object source, DataListCommandEventArgs e)
        {
        int id = Convert.ToInt32(jiandu.DataKeys[e.Item.ItemIndex].ToString());
        Response.Redirect("fenye.aspx?ID=" + id + "");
        }
    protected void keyan_ItemCommand(object source, DataListCommandEventArgs e)
        {
        int id = Convert.ToInt32(keyan.DataKeys[e.Item.ItemIndex].ToString());
        Response.Redirect("fenye.aspx?ID=" + id + "");
        }
    protected void jiaoxue_ItemCommand(object source, DataListCommandEventArgs e)
        {
        int id = Convert.ToInt32(jiaoxue.DataKeys[e.Item.ItemIndex].ToString());
        Response.Redirect("fenye.aspx?ID=" + id + "");
        }
    }

