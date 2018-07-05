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
using System.IO;
public partial class Admin_delink : System.Web.UI.Page
{
    DAL dl = new DAL();
    OleDbConnection mc = DAL.Creation();
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {
            if (Session["username"] == null)
            {
                Response.Write("<script>alert('对不起，您是非法登陆！');parent.location.href='Login.aspx'</script>");
            }
            else
            {
                string Id = Request.QueryString["id"].ToString();
               string  str = "select * from ck_Link where id=" + Convert.ToInt32(Id) + "";
                OleDbCommand cmd = new OleDbCommand(str, mc);
                mc.Open();
                OleDbDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    string pId = dr["id"].ToString();
                    string pt = dr["linkimg"].ToString();
                    
                        File.Delete(Server.MapPath("~/"+pt));
                        dl.ExecuteSQL("delete from ck_Link where id=" + Convert.ToInt32(Id) + "");

                        Response.Write("<script>alert('删除成功！');location.href='xm.aspx?action=list'</script>");
                   
                   
                }

                dr.Close();
                mc.Close();
            }

        }
    }
}
