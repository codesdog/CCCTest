using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using xuanke;

public partial class admingg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            banjixianshi();
        }

    }

    private void banjixianshi()
    {
       
        DataSet ds = new DataSet();
        DataBase db = new DataBase();
        ds = db.GetDataSet("select * from  diary order by d_id desc");
        // SetDept.GetDeptAll(ref ds, ref  strError);
      
        SetText(ds);

        // dbgContract.DataSource = ds;//返回所有的数据怎么弄？
        //dbgContract.DataKeyNames = new string[] { "id" };
        // dbgContract.DataBind();

    }

   
  

}
