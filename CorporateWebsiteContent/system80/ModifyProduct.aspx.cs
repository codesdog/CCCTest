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

public partial class system80_ModifyProduct : System.Web.UI.Page
{
    DAL dl = new DAL();
    DataTable dt = new DataTable();
    protected string imgurl = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string strRe = Request.QueryString["action"];
            if (strRe == "pro")
            {
                liuyanPanel.Visible = false;
                news_panel.Visible = false;
                pro_panel.Visible = true;
                string strid = Request.QueryString["id"];
               
                dt = dl.GetDataSet("select * from ck_Products where Id=" + Convert.ToInt32(strid) + "", "ck_Products");
                Label1.Text = dt.Rows[0][7].ToString();
                TextBox1.Text = dt.Rows[0][1].ToString();
                TextBox2.Text = dt.Rows[0][3].ToString();
                FCKeditor1.Value = dt.Rows[0][2].ToString();
                imgurl = dt.Rows[0][3].ToString();
            }
            if (strRe == "news")
            {
                liuyanPanel.Visible = false;
                pro_panel.Visible = false;
                news_panel.Visible = true;
                bindNews();
            }
            if (strRe == "liuyan")
            {
                liuyanPanel.Visible = true;
                news_panel.Visible = false;
                pro_panel.Visible = false;
                string strid = Request.QueryString["id"];
                dt = dl.GetDataSet("select * from ck_Feedback where Id=" + Convert.ToInt32(strid) + "", "ck_Feedback");
                TextBox4.Text = dt.Rows[0][4].ToString();
                Label4.Text = dt.Rows[0][1].ToString();
                Label5.Text = dt.Rows[0][3].ToString();
                Label6.Text = dt.Rows[0][2].ToString();
                Label7.Text = dt.Rows[0][5].ToString();
                Label8.Text = dt.Rows[0][6].ToString();
                Label9.Text = dt.Rows[0][7].ToString();
                Label10.Text = dt.Rows[0][8].ToString();
                Label11.Text = dt.Rows[0][9].ToString();
                TextBox5.Text = dt.Rows[0][10].ToString();
                string st = dt.Rows[0][12].ToString();
                if (st == "ch")
                {
                    Label12.Text = "此留言来源于：中文网站！";
                }
                if (st == "en")
                {
                    Label12.Text = "此留言来源于：英文网站！";
                }

            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strid = Request.QueryString["id"];

        dl.ExecuteSQL("update ck_Products set ProTitle='" + TextBox1.Text + "',ProInfo='" + FCKeditor1.Value.Replace("'", "").Replace("\'", "") + "',ProImg='" + TextBox2.Text.Trim() + "' where Id=" + Convert.ToInt32(strid) + "");
        JScript.AlertAndRedirect("操作成功！", "ProductList.aspx?action=list", this.Page);
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            if (FileUpload1.PostedFile.FileName == "")
            {
                this.Label2.Text = "请选择文件！";
            }
            else
            {
                string filepath = FileUpload1.PostedFile.FileName;

                string filename = filepath.Substring(filepath.LastIndexOf("\\") + 1);
                string serverpath = Server.MapPath("~/uploadfiles/") + System.DateTime.Now.ToString("yyyMMddhhmmss") + filename;
                FileUpload1.PostedFile.SaveAs(serverpath);
                this.Label2.Text = "上传成功！";
                TextBox2.Text = "uploadfiles/" + System.DateTime.Now.ToString("yyyMMddhhmmss") + filename;
                //listband();
            }
        }
        catch (Exception ex)
        {
            this.Label1.Text = "上传发生错误！原因是：" + ex.ToString();
        }
    }
    public void bindNews()
    {
        string strid = Request.QueryString["id"];
        dt = dl.GetDataSet("select * from ck_News where NewsId=" + Convert.ToInt32(strid) + "", "ck_News");
        TextBox3.Text = dt.Rows[0][1].ToString();
       FCKeditor2 .Value =dt .Rows[0][2].ToString ();
       Label3.Text =dt .Rows [0][6].ToString ()+"&nbsp;&nbsp;&nbsp发布时间："+ dt.Rows[0][4].ToString();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        string strid = Request.QueryString["id"];
        dl.ExecuteSQL("update ck_News set NewsTitle='" + TextBox3.Text.Trim() + "',NewsContent='" + FCKeditor2.Value.Replace("'", "").Replace("\'", "").Trim() + "' where NewsId=" + Convert.ToInt32(strid) + "");
        JScript.AlertAndRedirect("操作成功！", "NewsList.aspx", this.Page);

    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        string strid = Request.QueryString["id"];
        dl.ExecuteSQL("update ck_Feedback set Reply='" + TextBox5.Text.Trim() + "',flag='" + DropDownList1.SelectedItem.Text + "' where Id=" + Convert.ToInt32(strid) + "");
        JScript.AlertAndRedirect("操作成功！", "liuyan2.aspx", this.Page);
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        string strid = Request.QueryString["id"];
        dl.ExecuteSQL("delete from ck_Feedback where Id=" + Convert.ToInt32(strid) + "");
        JScript.AlertAndRedirect("操作成功！", "liuyan2.aspx", this.Page);

    }
}
