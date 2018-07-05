using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.OleDb;
public partial class Admin_modifyconfig : System.Web.UI.Page
{
    DAL dl = new DAL();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["username"] == null)
        //{
        //    Response.Write("<script>alert('对不起，您是非法登陆！');parent.location.href='Login.aspx'</script>");
        //}
        if (!IsPostBack)
        {
            dt = dl.GetDataSet("select * from ck_webconfig", "ck_webconfig");
            TextBox1.Text = dt.Rows[0][1].ToString();
            TextBox2.Text = dt.Rows[0][2].ToString();
            TextBox3.Text = dt.Rows[0][6].ToString();
            TextBox4.Text = dt.Rows[0][3].ToString();
            TextBox5.Value  = dt.Rows[0][5].ToString();
            TextBox6.Text = dt.Rows[0][4].ToString();
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        dl.ExecuteSQL("update ck_WebConfig set Site='" + TextBox1.Text.Trim() + "',webtitle='"+TextBox2.Text .Trim ()+"',Keywords='"+TextBox4.Text .Trim ()+"',WebUrl='"+TextBox6.Text .Trim ()+"',WebInfo='"+TextBox5.Value .ToString ()+"',descs='"+TextBox3.Text .Trim ()+"' where id=1");
        Page.RegisterStartupScript("mm", "<script>alert('保存成功！')</script>");

    }
}
