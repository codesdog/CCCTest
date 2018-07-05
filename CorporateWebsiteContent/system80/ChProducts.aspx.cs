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
using System.Data.OleDb;
public partial class system80_ChProducts : System.Web.UI.Page
{

    DAL db = new DAL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null || Session["username"].ToString() == "")
        {
            JScript.AlertAndRedirect("对不起，您是非法登录！", "login.aspx", this.Page);

        }
        if (!IsPostBack)
        {
            ddlCity.DataSource = db.GetDataSet("select * from ck_ProClass where flag='ch'", "ck_ProClass");
            ddlCity.DataValueField = "ProClassId";
            ddlCity.DataTextField = "ProClassName";
            ddlCity.DataBind();
        }
    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "ch";
        string sqlstr = "insert into CK_Products(ProTitle,ProInfo,ProImg,ProAuthor,ProClassId,ProClassName,httpurl,flag) values('" + TextBox1.Text + "','" + FCKeditor1.Value.Replace("'", "").Replace("\'", "").Trim() + "','" + TextBox2.Text.Trim() + "','" + TextBox3.Text.Trim() + "','" + this.ddlCity.SelectedValue.Trim() + "','" + ddlCity.SelectedItem.Text + "','" +TextBox4.Text .Trim ()+ "','" + str + "')";
        db.ExecuteSQL(sqlstr);
        //Page.RegisterStartupScript("mm", "<script>alert('添加成功！')</script>");
        //Response.Write("<script>alert('添加成功！);location.href='AddProducts.aspx'</script>");
        JScript.AlertAndRedirect("添加成功！", "ChProducts.aspx", this.Page);
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox4.Text = "";
        FCKeditor1.Value = "";
        
    }
   
    protected void Button3_Click(object sender, EventArgs e)
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
                TextBox2.Text = "uploadfiles/" + System.DateTime.Now.ToString("yyyMMddhhmmss") + filename;
                //listband();
            }
        }
        catch (Exception ex)
        {
            this.Label1.Text = "上传发生错误！原因是：" + ex.ToString();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox4.Text = "";
        FCKeditor1.Value = "";
    }
}
