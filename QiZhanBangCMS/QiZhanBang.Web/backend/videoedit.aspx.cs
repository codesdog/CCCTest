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
using System.Text.RegularExpressions;
using System.IO;

using QiZhanBang.Core.Common;
using QiZhanBang.Core.Factory;
using QiZhanBang.Core.Model;
namespace QiZhanBang.Web.backend
{
    public partial class videoedit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            QiZhanBang.Core.Business.Security.CheckAdministerAndRedirect();
            if (!Page.IsPostBack)
            {
                LoadVideoCategorys();
                LoadVideoInfo();
            }
        }

        private void LoadVideoCategorys()
        {
            this.ddlVideoCategory.DataTextField = "categoryname";
            this.ddlVideoCategory.DataValueField = "categoryid";
            this.ddlVideoCategory.DataSource = VideoCategoryFactory.GetAll(HYRequest.GetInt("channelid", 0));
            this.ddlVideoCategory.DataBind();
        }

        private void LoadVideoInfo()
        {
            if (this.Action == "edit")
            {
                int videoid = HYRequest.GetQueryInt("videoid", 0);
                Video info = VideoFactory.Get(videoid);

                this.txtactor.Text = info.actor;
                this.txtdescription.Text = info.description;
                this.txtduration.Text = info.duration;
                this.txtincludepicpath.Text = info.includepicpath;
                this.txttags.Text = info.tags;
                this.txtvideoname.Text = info.videoname;
                this.txtvideos.Text = info.videos;
                this.txthits.Text = info.hits.ToString();

                try
                {
                    this.ddlVideoCategory.Items.FindByValue(info.categoryid.ToString()).Selected = true;
                }
                catch { }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (this.Action == "add")
            {
                Video info = new Video();
                info.actor = this.txtactor.Text;
                info.description = this.txtdescription.Text;
                info.duration = this.txtduration.Text ;
                info.includepicpath = this.txtincludepicpath.Text;
                info.tags = this.txttags.Text ;
                info.videoname = this.txtvideoname.Text;
                info.videos = this.txtvideos.Text;
                info.hits = Int32.Parse( this.txthits.Text.Trim());
                info.categoryid = Int32.Parse(this.ddlVideoCategory.SelectedItem.Value);
                info.channelid = HYRequest.GetInt("channelid", 0);

                VideoFactory.Add(info);
            }
            else if (this.Action == "edit")
            {
                int videoid = HYRequest.GetQueryInt("videoid", 0);
                Video info = VideoFactory.Get(videoid);

                info.actor = this.txtactor.Text;
                info.description = this.txtdescription.Text;
                info.duration = this.txtduration.Text;
                info.includepicpath = this.txtincludepicpath.Text;
                info.tags = this.txttags.Text;
                info.videoname = this.txtvideoname.Text;
                info.videos = this.txtvideos.Text;
                info.hits = Int32.Parse(this.txthits.Text.Trim());
                info.categoryid = Int32.Parse(this.ddlVideoCategory.SelectedItem.Value);
                //info.channelid = HYRequest.GetInt("channelid", 0);

                VideoFactory.Update(info);
            }

            ClientScript.RegisterStartupScript(this.GetType(), "AddEditTips", "<script language=\"javascript\">window.location='videolist.aspx?channelid=" + HYRequest.GetInt("channelid", 0) + "';</script>");
        }

        private string Action
        {
            get
            {
                return HYRequest.GetQueryString("action");
            }
        }
    }
}
