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

public partial class Admin_xm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["username"] == null)
        //{
        //    Response.Write("<script>alert('对不起，您是非法登陆！');parent.location.href='Login.aspx'</script>");
        //}
        if (!IsPostBack)
        {
            if (Request.QueryString["action"] == null)
            {
                Response.Write("<script>alert('对不起，您是非法登陆！');parent.location.href='Login.aspx'</script>");
            }
            else
            {
                string str = Request.QueryString["action"].ToString();
                if (str == "add")
                {
                    Panel1.Visible = true;
                    Panel2.Visible = false;
                }
                if (str == "list")
                {
                    Panel1.Visible = false;
                    Panel2.Visible = true;
                    bind_link();
                }
            }
        }
    }
    public void bind_link()
    {
        DAL dl=new DAL ();
        DataGrid1.DataSource = dl.GetDataSet("select * from ck_Link order by id desc", "ck_Link");
        DataGrid1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["username"] == null)
            {
                Response.Write("<script>alert('对不起，您是非法登陆！');parent.location.href='Login.aspx'</script>");
            }
        if (TextBox3.Text == "")
        {
            JScript.Alert(" 请上传LOGO", this.Page);
        }
        else
        {
            DAL dl = new DAL();
            dl.ExecuteSQL("insert into ck_Link(title,linkurl,linkimg)values('" + TextBox1.Text.Trim() + "','" + TextBox2.Text.Trim() + "','" + TextBox3.Text.Trim() + "')");
            JScript.Alert("添加成功！", this.Page);
            TextBox3.Text = "";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            if (FileUpload1.PostedFile.FileName == "")
            {
                this.Label1.Text = "请选择文件！";
            }
            else
            {
                string filepath = FileUpload1.PostedFile.FileName;

                string filename = filepath.Substring(filepath.LastIndexOf("\\") + 1);
                string serverpath = Server.MapPath("~/uploadfiles/") + System.DateTime.Now.ToString("yyyMMddhhmmss") + filename;
                FileUpload1.PostedFile.SaveAs(serverpath);
                this.Label1.Text = "上传成功！";
                TextBox3.Text = "uploadfiles/" + System.DateTime.Now.ToString("yyyMMddhhmmss") + filename;
            }
        }
        catch (Exception ex)
        {
            this.Label1.Text = "上传发生错误，请检查文件类型是否正确！！！";
        }
    }
}
