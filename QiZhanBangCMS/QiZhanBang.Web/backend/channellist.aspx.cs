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
    public partial class channellist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            QiZhanBang.Core.Business.Security.CheckAdministerAndRedirect();
            if (!Page.IsPostBack)
            {
                this.LoadListData();
            }
        }

        private void LoadListData()
        {
            this.dgChannelList.DataSource = ChannelFactory.GetAll();
            this.dgChannelList.DataBind();
        }

        protected void dgChannelList_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (e.CommandArgument.ToString() == "DeleteInfo")
            {
                int dataKey = Convert.ToInt32(this.dgChannelList.DataKeys[e.Item.ItemIndex]);
                ChannelFactory.Delete(dataKey);

                this.LoadListData();
            }
        }

        protected void dgChannelList_ItemCreated(object sender, DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                e.Item.Attributes.Add("bgcolor", "#ffffff");
                e.Item.Attributes.Add("onmouseover", @"this.bgColor='#EBFFDC';");
                e.Item.Attributes.Add("onmouseout", @"this.bgColor='#ffffff';");

                ((LinkButton)e.Item.FindControl("lnkDelete")).Attributes.Add("onclick", @"javascript:return confirm('提示:删除后不可恢复．\r\n确定删除？');");
            }
        }

        public string GetMangeInfoHtml(object channelid, object channeltype)
        {
            string articleTemplate = "<a href='articlecategorylist.aspx?channelid={0}'>文章分类</a> | <a href='articlelist.aspx?channelid={0}'>文章管理</a>" ;
            string videoTemplate = "<a href='videocategorylist.aspx?channelid={0}'>视频分类</a> | <a href='videolist.aspx?channelid={0}'>视频管理</a>";
            string productTemplate = "<a href='productcategorylist.aspx?channelid={0}'>产品分类</a> | <a href='productlist.aspx?channelid={0}'>产品管理</a>";

            if (channeltype.ToString() == "article")
            {
                return string.Format(articleTemplate, channelid.ToString());
            }
            else if (channeltype.ToString() == "video")
            {
                return string.Format(videoTemplate, channelid.ToString());
            }
            else if (channeltype.ToString() == "product")
            {
                return string.Format(productTemplate, channelid.ToString());
            }

            return string.Empty;
        }
    }
}
