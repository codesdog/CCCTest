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

public partial class system80_feed : System.Web.UI.Page
{
    DAL dl = new DAL();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string strid = Request.QueryString["id"];
            dt = dl.GetDataSet("select * from ck_Feedback where Id=" + Convert.ToInt32(strid) + "", "ck_Feedback");
            Label1.Text = dt.Rows[0][4].ToString();
            Label2.Text = dt.Rows[0][1].ToString();
            Label3.Text = dt.Rows[0][2].ToString();
            Label4.Text = dt.Rows[0][3].ToString();
            Label5.Text = dt.Rows[0][5].ToString();
            Label6.Text = dt.Rows[0][6].ToString();
            Label7.Text = dt.Rows[0][8].ToString();
            Label8.Text = dt.Rows[0][9].ToString();
           string str = dt.Rows[0][12].ToString();
            Label10.Text = dt.Rows[0][7].ToString();
            if (str == "ch")
            {
                Label9.Text = "中文网站";
            }
            else
            {
                Label9.Text = "英文网站";
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strid = Request.QueryString["id"];
        dl.ExecuteSQL("update ck_Feedback set reply='" + TextBox1.Text + "',flag='" + DropDownList1.SelectedItem.Text + "' where Id=" + Convert.ToInt32(strid) + "");
        JScript.AlertAndRedirect("操作成功!", "feedback.aspx", this.Page);
    }
}
