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

public partial class YinPin : System.Web.UI.Page
{
    DAL dl = new DAL();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string ReId = Request.QueryString["id"];
            string str = "select * from ck_Recruitment where Id=" + Convert.ToInt32(ReId) + "";
            dt = dl.GetDataSet(str, "ck_Recruitment");
            Label2.Text = dt.Rows[0][1].ToString();
            Session["txt"] = dt.Rows[0][1].ToString();//5&1&a&s&p&x
            //Response.Write(Session["txt"].ToString());
            
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strFlag="ch";
        string ReId = Request.QueryString["id"];
        dl.ExecuteSQL("insert into ck_Member(ZhiWei,Id,UserName,UserNicle,Sex,Xueli,Address,Jiguan,Jiaoyu,Jingyan,Beizhu,flag) values('" + Session["txt"].ToString() + "','" + ReId + "','" + TextBox1.Text.Trim() + "','" + TextBox2.Text.Trim() + "','" + DropDownList2.SelectedItem.Text + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox3.Text.Trim() + "','" + TextBox4.Text.Trim() + "','" + TextBox5.Text + "','" + TextBox6.Text.Trim() + "','" + TextBox7.Text + "','"+strFlag +"')");
        JScript.AlertAndRedirect("提交成功，请等待我们的审核！", "Resume.aspx", this.Page);
    }
}
