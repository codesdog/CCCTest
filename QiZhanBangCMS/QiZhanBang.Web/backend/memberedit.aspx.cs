using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

using QiZhanBang.Core.Common;
using QiZhanBang.Core.Factory;
using QiZhanBang.Core.Model;
namespace QiZhanBang.Web.backend
{
    public partial class memberedit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            QiZhanBang.Core.Business.Security.CheckAdministerAndRedirect();
            if (!Page.IsPostBack)
            {
                if (this.Action == "edit")
                {
                    int uid = HYRequest.GetQueryInt("uid", 0);
                    Member info = MemberFactory.Get(uid);

                    this.txtusername.Text = info.username;
                    this.txtusername.Enabled = false;
                }
            }
        }

        private string Action
        {
            get
            {
                return HYRequest.GetQueryString("action");
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (this.Action == "edit")
            {
                int uid = HYRequest.GetQueryInt("uid", 0);
                Member info = MemberFactory.Get(uid);
                if (info != null)
                {
                    string pwdstr = this.txtpassword.Text.Trim();
                    if (!string.IsNullOrEmpty(pwdstr))
                    {
                        info.userpwd = Utils.MD5(pwdstr);
                    }

                    MemberFactory.Update(info);
                    Response.Redirect("memberlist.aspx");
                }
            }
            else if (this.Action == "add")
            {
                //验证是否存在同名的帐号
                Member info = null;
                string username = this.txtusername.Text.Trim();
                info = MemberFactory.Get(username);
                if (info != null)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "AddEditTips", "<script language=\"javascript\">alert('已存在相同的帐号！');window.location='memberedit.aspx?action=add';</script>");
                    return;
                }

                info = new Member();
                info.username = this.txtusername.Text.Trim();
                info.userpwd = Utils.MD5(this.txtpassword.Text.Trim());

                MemberFactory.Add(info);

                Response.Redirect("memberlist.aspx");
            }
        }
    }
}
