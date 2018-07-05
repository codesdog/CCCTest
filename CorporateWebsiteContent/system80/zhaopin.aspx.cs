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

public partial class system80_zhaopin : System.Web.UI.Page
{
    DAL dl = new DAL();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string reac = Request.QueryString["action"];
            if (reac == "add")
            {
                Button1.Visible = true;
                Button2.Visible = true;
                Label1.Text = "添加招聘信息";
                Button3.Visible = false;
            }
            if (reac == "modify")
            {
                Button1.Visible = true;
                Button2.Visible = false;
                Button3.Visible = true;
                Label1.Text = "修改招聘信息";
                string reid = Request.QueryString["id"];
                dt = dl.GetDataSet("select * from ck_Recruitment where Id=" + Convert.ToInt32(reid) + "", "ck_Recruitment");
                TextBox1.Text = dt.Rows[0][1].ToString();
                TextBox2.Text = dt.Rows[0][2].ToString();
                TextBox3.Text = dt.Rows[0][6].ToString();
                TextBox4.Text = dt.Rows[0][5].ToString();
                TextBox5.Text = dt.Rows[0][7].ToString();
                FCKeditor1.Value = dt.Rows[0][3].ToString();
                Label2.Text = dt.Rows[0][4].ToString();
                string Flagdt = dt.Rows[0][8].ToString();
                if (Flagdt == "ch")
                {
                    DropDownList1.SelectedItem.Text = "中文";
                    DropDownList1.Enabled = false;
                }
                if (Flagdt == "en")
                {
                    DropDownList1.SelectedItem.Text = "英文";
                    DropDownList1.Enabled = false;
                }
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "")
        {
            JScript.AlertAndRedirect("招聘职位名称不能为空！", "zhaopin.aspx?action=add", this.Page);
        }
        else
        {
            dl.ExecuteSQL("insert into ck_Recruitment(Title,Yaoqiu,Info,Author,Numberw,Contact,flag) values('" + TextBox1.Text.Trim() + "','" + TextBox2.Text.Trim() + "','" + FCKeditor1.Value.Replace("'", "").Replace("\'", "").Trim() + "','" + TextBox4.Text.Trim() + "','" + TextBox3.Text.Trim() + "','" + TextBox5.Text.Trim() + "','" + DropDownList1.SelectedValue.Trim() + "')");
            JScript.AlertAndRedirect("提交成功！", "zhaopin.aspx", this.Page);
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string reid = Request.QueryString["id"];
        string str = "update ck_Recruitment set Title='" + TextBox1.Text + "',Yaoqiu='" + TextBox2.Text + "',Info='" + FCKeditor1.Value.Replace("'", "").Replace("\'", "").Trim() + "',Numberw='" + TextBox3.Text.Trim() + "',Contact='" + TextBox5.Text.Trim() + "' where Id=" + Convert.ToInt32(reid) + "";
        dl.ExecuteSQL(str);
        JScript.AlertAndRedirect("操作成功 ！", "zhaopinlist.aspx", this.Page);
    }
}
