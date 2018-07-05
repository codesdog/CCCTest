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
public partial class system80_login : System.Web.UI.Page
{
    DAL dl = new DAL();
    OleDbConnection conn = DAL.Creation();
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Title = "企业网站后台管理系统";

    }
    public static string Md5(string strText)
    {
        return FormsAuthentication.HashPasswordForStoringInConfigFile(strText.Trim(), "md5");
    }
    public static string ReplaceStr(string str)
    {
        if (str == null || str == "")
            return null;
        str = str.Replace(":", "");
        str = str.Replace("'", "");
        str = str.Replace("&", "");
        str = str.Replace("%20", "");
        str = str.Replace("-", "");
        str = str.Replace("==", "");
        str = str.Replace("<", "");
        str = str.Replace(">", "");
        str = str.Replace("%", "");
        return str;
    }
    public static string DelSQLStr(string str)
    {
        if (str == null || str == "")

            return "";
        str = str.Replace(";", "");
        str = str.Replace("'", "");
        str = str.Replace("&", "");
        str = str.Replace("%20", "");
        str = str.Replace("--", "");
        str = str.Replace("==", "");
        str = str.Replace("<", "");
        str = str.Replace(">", "");
        str = str.Replace("%", "");
        str = str.Replace("+", "");
        str = str.Replace("-", "");
        str = str.Replace("=", "");
        str = str.Replace(",", "");
        return str;
    } 
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "select * from [ck_Admin] where AdminName='" + ReplaceStr(txt_name.Text.Trim()) + "'";
        OleDbCommand cmd = new OleDbCommand(str, conn);
        conn.Open();
        OleDbDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            Session["UserId"] = dr["Id"].ToString();
            Session["username"] = dr["AdminName"].ToString();//5+1+a+s+p+x
            string pwd = ReplaceStr(Md5(txt_pass.Text.Trim())).ToString();
            if (dr["AdminPass"].ToString() == ReplaceStr(Md5(txt_pass.Text.Trim())).ToString())
            {
                Response.Redirect("Index.aspx");
            }
            else
            {
                Page.RegisterStartupScript("mm", "<script>alert('密码错误！')</script>");
            }

        }
        else
        {
            Page.RegisterStartupScript("mm", "<script>alert('无此账号！')</script>");
        }

        dr.Close();
        conn.Close();
    }
}
