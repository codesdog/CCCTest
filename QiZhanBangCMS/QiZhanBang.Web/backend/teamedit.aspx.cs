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
    public partial class teamedit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            QiZhanBang.Core.Business.Security.CheckAdministerAndRedirect();
            if (!Page.IsPostBack)
            {
                LoadData();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //int leaguerid = HYRequest.GetInt("leaguerid", 0);

            if (this.Action == "add")
            {
                Leaguer info = new Leaguer();
                info.avatar = this.txtincludepic.Text.Trim();
                info.leaguername = this.txtleaguername.Text.Trim();
                info.orderno = Int32.Parse(this.txtorderno.Text.Trim());
                info.resume = HYRequest.GetFormString("editorcontent");

                LeaguerFactory.Add(info);

                ClientScript.RegisterStartupScript(this.GetType(), "AddEditTips", "<script language=\"javascript\">alert('添加成功！');window.location='teamlist.aspx';</script>");
            }
            else if (this.Action == "edit")
            {
                int leaguerid = HYRequest.GetInt("leaguerid", 0);
                Leaguer info = LeaguerFactory.Get(leaguerid);

                info.avatar = this.txtincludepic.Text.Trim();
                info.leaguername = this.txtleaguername.Text.Trim();
                info.orderno = Int32.Parse(this.txtorderno.Text.Trim());
                info.resume = HYRequest.GetFormString("editorcontent");
                info.leaguerid = leaguerid;

                LeaguerFactory.Update(info);
                ClientScript.RegisterStartupScript(this.GetType(), "AddEditTips", "<script language=\"javascript\">alert('修改成功！');window.location='teamlist.aspx';</script>");
            }
        }

        private void LoadData()
        {
            if (this.Action == "edit")
            {
                int leaguerid = HYRequest.GetInt("leaguerid", 0);
                Leaguer info = LeaguerFactory.Get(leaguerid);

                this.txtincludepic.Text = info.avatar;
                this.txtleaguername.Text = info.leaguername;
                this.txtorderno.Text = info.orderno.ToString();
                this.editorcontent.Value = info.resume;
            }
        }

        private string Action
        {
            get
            {
                return HYRequest.GetString("action");
            }
        }
    }
}
