using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using xuanke;


public partial class admincsh : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataBase db = new DataBase();
        string strOleDb;
        string strError = "";
        int count = 0;


        try
        {



            count = db.RunProc("delete * from 学生表_student", null);
            count = db.RunProc("delete * from xuanke", null);
            strOleDb = "update kechengbiao set yxrs=0 ";
            count = db.RunProc(strOleDb, null);
            Response.Write("<script>alert('操作成功！')</script>");



        }


        catch (Exception ex)
        {

            strError = ex.Message;
            strError = strError.Replace("'", "");
            Response.Write("<script>alert('" + strError + "！')</script>");

        }
        finally
        {
           db.Close();

        }
    }
}