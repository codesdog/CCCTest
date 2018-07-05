using System;
using System.Data;
using System.IO;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
namespace Web.Admin
{
    public partial class AddEdit_About : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                CommFun.IsAdmin();

                if (Request.QueryString["Action"] == "Edit")
                {
                    DataRow drw = DBFun.GetDataRow("Select * From T_About where id=" + Request.QueryString["id"]);
                    if (drw == null)
                    {
                        Response.Write("读取数据失败！数据库中没有此记录或参数不正确！");
                        Response.End();
                    }
                    tb_title.Text = drw["AboutType"].ToString();
                    ftb_Contents.Text = drw["contents"].ToString();
                    btn_Ok.Text = "修改";
                    lbl_title.Text = "修改关于我们";
                }
            }

        }



        protected void btn_Ok_Click(object sender, EventArgs e)
        {
            //添加 

            string strsql;
            if (btn_Ok.Text == "添加")
            {
                strsql = string.Format("insert Into T_About (AboutType,contents) values ('{0}','{1}')",
                   tb_title.Text, ftb_Contents.Text.Replace("'", "''"));

                if (DBFun.ExecuteUpdate(strsql))
                {
                    string NewID = DBFun.SearchValue("select Max(ID) from T_About");
                    Response.Write("<script>alert('添加成功！');window.location.href='AddEdit_About.aspx?Action=Edit&ID=" + NewID + "';</script>");
                }
            }
            else
            {
                strsql = string.Format("Update T_About Set Abouttype='{0}',contents='{1}' where id={2}",
                   tb_title.Text, ftb_Contents.Text.Replace("'", "''"), Request.QueryString["id"]);

                if (DBFun.ExecuteUpdate(strsql))
                {
                    Response.Write("<script>alert('修改成功！');</script>");
                }
            }

        }

    }
}