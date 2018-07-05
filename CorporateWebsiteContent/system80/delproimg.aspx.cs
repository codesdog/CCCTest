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

public partial class system80_delproimg : System.Web.UI.Page
{
    DAL dl = new DAL();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["username"] == null)
        //{
        //    Response.Write("<script>alert('对不起，您是非法登陆！');parent.location.href='Login.aspx'</script>");
        //}
        DataTable dt = new DataTable();
        string strid = Request.QueryString["Id"];
        dt = dl.GetDataSet("select * from ck_Products where Id=" + Convert.ToInt32(strid) + "", "ck_Products");
        string strUrl = dt.Rows[0][3].ToString();
        if (System.IO.File.Exists(Server.MapPath("~/" + strUrl)))
        {
            System.IO.File.Delete(Server.MapPath("~/" + strUrl));//5~1+a+s+p+x
            dl.ExecuteSQL("delete from ck_Products where Id=" + Convert.ToInt32(strid) + "");
            Response.Write("<script>alert('操作成功！');location.href='ProductList.aspx?action=list'</script>");
        }
        else
        {
            //Response.Write("<script>alert('图片不存在！');location.href='img.aspx?action=list'</script>");
            dl.ExecuteSQL("delete from ck_Products where Id=" + Convert.ToInt32(strid) + "");
            Response.Write("<script>alert('操作成功！');location.href='ProductList.aspx?action=list'</script>");
        }
    }
}
