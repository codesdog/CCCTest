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
    public partial class FriendUrl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //网页加载过程 
            CommFun.IsAdmin();
            if (!IsPostBack)
            {
                
                string strqry;
                
                strqry = "Select * From T_FriendUrl order by SiteSort asc,id desc";
                Repeater1.DataSource = DBFun.GetDataView(strqry);
                Repeater1.DataBind();
                string Action = Request.QueryString["Action"];
                string id = Request.QueryString["ID"];
                if (Action == "Edit")
                {
                    //修改
                    strqry = "select * From T_FriendUrl where id=" + id;
                    DataRow drw = DBFun.GetDataRow(strqry);
                    tb_SiteName.Text = drw["SiteName"].ToString();
                    tb_SiteLogo.Text = drw["SiteLogo"].ToString();
                    tb_SiteUrl.Text = drw["SiteUrl"].ToString();
                    tb_SiteSort.Text = drw["SiteSort"].ToString();
                    btn_Ok.Text = "保存";

                }
                if (Action == "Delete")
                {
                    //删除
                    strqry = "Delete From T_FriendUrl where ID=" + id;
                    if (DBFun.ExecuteUpdate(strqry))
                    {
                        Response.Redirect("FriendUrl.aspx");
                    }

                }


            }

        }
        protected void btn_Ok_Click(object sender, EventArgs e)
        {
            //添加或保存路径
            
            string strqry;
            if (btn_Ok.Text == "添加")
            {
                strqry = string.Format("Insert Into T_FriendUrl (SiteName,SiteLogo,SiteUrl,SiteSort) Values ('{0}','{1}','{2}',{3})",
                    tb_SiteName.Text, tb_SiteLogo.Text, tb_SiteUrl.Text, tb_SiteSort.Text);
                if (DBFun.ExecuteUpdate(strqry))
                {
                    string NewID = DBFun.SearchValue("select Max(ID) from T_FriendUrl");
                    Response.Write("<script>alert('添加成功！');window.location.href='FriendUrl.aspx?Action=Edit&ID=" + NewID + "';</script>");
                }
            }
            else
            {
                strqry = string.Format("Update T_FriendUrl Set SiteName='{0}',SiteLogo='{1}',SiteUrl='{2}',SiteSort={3} where id = {4}",
                  tb_SiteName.Text, tb_SiteLogo.Text, tb_SiteUrl.Text, tb_SiteSort.Text, Request.QueryString["ID"]);

                if (DBFun.ExecuteUpdate(strqry))
                {
                    strqry = "Select * From T_FriendUrl order by SiteSort asc,id desc";
                    Repeater1.DataSource = DBFun.GetDataView(strqry);
                    Repeater1.DataBind();
                    Response.Write("<script>alert('数据修改成功！');</script>");
                    //重新绑定数据

                }
            }
        }
}
}