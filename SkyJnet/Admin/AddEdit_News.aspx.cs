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
namespace Web.Admin
{
    public partial class AddEdit_News : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                 
            if (!IsPostBack)
            { 
                CommFun.IsAdmin();
                  
                if (Request.QueryString["Action"] == "Edit")
                {
                    DataRow drw = DBFun.GetDataRow("Select * From T_News where id=" + Request.QueryString["id"]);
                    if (drw == null)
                    {
                        Response.Write("读取数据失败！没有这篇新闻");
                        Response.End();
                    }
                    tb_title.Text = drw["title"].ToString();
                    rb_NewsType.Text  = drw["newstypeid"].ToString();
                    ckb_haspic.Checked = (drw["haspic"].ToString() == "1" ? true : false);
                    ftb_News.Text = drw["contents"].ToString();
                    btn_Ok.Text = "修改";
                    lbl_title.Text = "修改新闻";
                }
            }

        }
        
       

        protected void btn_Ok_Click(object sender, EventArgs e)
        {
            //添加 
            
            string strsql;
            if (btn_Ok.Text == "添加")
            {
                strsql = string.Format("insert Into T_News (title,NewsTypeid,contents,haspic) values ('{0}',{1},'{2}',{3})",
                    tb_title.Text, rb_NewsType.Text, ftb_News.Text.Replace("'", "''"),ckb_haspic.Checked==true?1:0);

                if (DBFun.ExecuteUpdate(strsql))
                {
                    string NewID = DBFun.SearchValue("select Max(ID) from T_News");
                    Response.Write("<script>alert('添加成功！');window.location.href='AddEdit_News.aspx?Action=Edit&ID=" + NewID + "';</script>");
                }
            }
            else
            {
                strsql = string.Format("Update T_News Set title='{0}',NewsTypeid={1},contents='{2}',haspic={3} where id={4}",
                   tb_title.Text, rb_NewsType.Text, ftb_News.Text.Replace("'", "''"),ckb_haspic.Checked==true?1:0, Request.QueryString["id"]);

                if (DBFun.ExecuteUpdate(strsql))
                {                    
                    Response.Write("<script>alert('修改成功！');</script>");
                }
            }
           
        }


       
}
}