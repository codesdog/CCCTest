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
    public partial class channeledit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            QiZhanBang.Core.Business.Security.CheckAdministerAndRedirect();
            if (!Page.IsPostBack)
            {
                if (this.Action == "edit")
                {
                    int channelid = HYRequest.GetQueryInt("channelid", 0);
                    Channel info = ChannelFactory.Get(channelid);

                    this.txtchannelname.Text = info.channelname;
                    this.txtchanneldesc.Text = info.channeldesc;
                    try
                    {
                        this.rblchanneltype.Items.FindByValue(info.channeltype).Selected = true;
                    }
                    catch { }

                    this.rblchanneltype.Enabled = false;
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
                int channelid = HYRequest.GetQueryInt("channelid", 0);
                Channel info = ChannelFactory.Get(channelid);
                if (info != null)
                {
                    info.channelname = this.txtchannelname.Text.Trim();
                    info.channeldesc = this.txtchanneldesc.Text.Trim();

                    ChannelFactory.Update(info);
                    Response.Redirect("channellist.aspx");
                }
            }
            else if (this.Action == "add")
            {

                Channel info = new Channel();
                info.channelname = this.txtchannelname.Text.Trim();
                info.channeldesc = this.txtchanneldesc.Text.Trim();
                info.channeltype = this.rblchanneltype.SelectedValue;

                ChannelFactory.Add(info);

                Response.Redirect("channellist.aspx");
            }
        }
    }
}
