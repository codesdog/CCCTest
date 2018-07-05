using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using xuanke;
using System.Web.Security;   

public partial class adminadmin : System.Web.UI.Page
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

        

    }
    protected void dbgContract_RowEditing(object sender, GridViewEditEventArgs e)
    {
        dbgContract.EditIndex = (int)e.NewEditIndex;


        banjixianshi();
    }
    protected void dbgContract_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        dbgContract.EditIndex = -1;
        banjixianshi();
    }

    protected void dbgContract_RowDataBound(object sender, GridViewRowEventArgs e)
    {
       




    }
   

}