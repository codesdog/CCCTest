﻿using System;
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

public partial class party : System.Web.UI.Page
{
    CommonClass CC = new CommonClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        //德育
        jiaoxue.DataSource = CC.GetDataSet("SELECT * FROM tbNews WHERE Style = '教学' order by ID Desc", "tbNews");
        jiaoxue.DataKeyField = "id";
        jiaoxue.DataBind();
    }
    protected void jiaoxue_ItemCommand(object source, DataListCommandEventArgs e)
    {
        int id = Convert.ToInt32(jiaoxue.DataKeys[e.Item.ItemIndex].ToString());
        Response.Redirect("fenye.aspx?ID=" + id + "");
    }
}
