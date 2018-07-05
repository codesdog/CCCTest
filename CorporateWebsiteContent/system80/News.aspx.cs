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
public partial class system80_News : System.Web.UI.Page
{
    OleDbConnection myconn = DAL.Creation();
    DAL dl = new DAL();
    OleDbDataReader dr;
    string str = "";

    OleDbDataAdapter da;
    DataSet ds = new DataSet();
    OleDbCommand cmd;
    public string strProvince
    {
        get
        {
            return ddlProvince.SelectedItem.Value;
        }
        set
        {
            ddlProvince.SelectedItem.Value = value;
        }
    }
    public string strCity
    {
        get
        {
            return ddlCity.SelectedItem.Value;
        }
        set
        {
            ddlCity.SelectedItem.Value = value;
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
                ddlProvinceBind();
                ddlCity.Items.Insert(0, "-请选择类别-");
        }
    }
    private void ddlProvinceBind()
    {

        cmd = new OleDbCommand("select * from languagetype order by id desc", myconn);
        //cmd = new SqlCommand("select * from languagetype", myconn);
        myconn.Open();
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            ddlProvince.DataSource = dr;
            ddlProvince.DataTextField = "yutype";
            ddlProvince.DataValueField = "id";//5%1%a%s%p%x
            ddlProvince.DataBind();
            ddlProvince.Items.Insert(0, "-请选择语言-");
        }
        dr.Close();
        myconn.Close();
    }

    public void bindNewsClass()
    {
       this.ddlCity.DataSource = dl.GetDataSet("select * from CK_NewsClass where flag='"+ddlProvince .SelectedItem.Text +"' ", "CK_NewsClass");
       ddlCity.DataValueField = "NewsClassId";
       ddlCity.DataTextField = "NewsClassName";
       ddlCity.DataBind();
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        dl.ExecuteSQL("insert into CK_News(NewsTitle,NewsContent,NewsAuthor,NewsClassId,NewsClassName,flag) values('" + TextBox1.Text.Trim() + "','" + FCKeditor1.Value.Replace("'", "").Replace("\'", "").Trim() + "','" + TextBox3.Text.Trim() + "','" + ddlCity.SelectedValue.Trim() + "','" + ddlCity.SelectedItem.Text + "','" + ddlProvince.SelectedItem.Text .Trim ()+ "')");
        JScript.AlertAndRedirect("操作成功！！", "News.aspx", this.Page);
        TextBox1.Text = "";
        FCKeditor1.Value = "";
    }
    protected void ddlCity_TextChanged(object sender, EventArgs e)
    {
        bindNewsClass();
    }
    protected void ddlProvince_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlProvince.SelectedItem.Value == "-请选择语言-")
        {
            ddlCity.Items.Clear();
            ddlCity.Items.Insert(ddlProvince.SelectedIndex, "-请选择类别-");
        }
        else
        {


            bindNewsClass();
        }
    }
}
