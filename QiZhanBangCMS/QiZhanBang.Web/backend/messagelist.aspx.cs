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
    public partial class messagelist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            QiZhanBang.Core.Business.Security.CheckAdministerAndRedirect();
            if (!Page.IsPostBack)
            {
                this.LoadListData();
            }
        }

        //加载
        private void LoadListData()
        {
            //int channelid = HYRequest.GetInt("channelid", 0);
            //this.dgArticleCategoryList.DataSource = ArticleCategoryFactory.GetAll(channelid);
            //this.dgArticleCategoryList.DataBind();

            this.dgMessageList.DataSource = MessageFactory.GetList("");
            this.dgMessageList.DataBind();
        }

        protected void dgMessageList_CancelCommand(object source, DataGridCommandEventArgs e)
        {
            this.dgMessageList.EditItemIndex = -1;
            this.LoadListData();
        }

        protected void dgMessageList_EditCommand(object source, DataGridCommandEventArgs e)
        {
            this.dgMessageList.EditItemIndex = e.Item.ItemIndex;
            this.LoadListData();
        }

        protected void dgMessageList_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (e.CommandArgument.ToString() == "DeleteInfo")
            {
                int dataKey = Convert.ToInt32(this.dgMessageList.DataKeys[e.Item.ItemIndex]);

                MessageFactory.Delete(dataKey);

                this.LoadListData();
            }
        }

        protected void dgMessageList_ItemCreated(object sender, DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                e.Item.Attributes.Add("bgcolor", "#ffffff");
                e.Item.Attributes.Add("onmouseover", @"this.bgColor='#EBFFDC';");
                e.Item.Attributes.Add("onmouseout", @"this.bgColor='#ffffff';");

                ((LinkButton)e.Item.FindControl("lnkDelete")).Attributes.Add("onclick", @"javascript:return confirm('提示:删除信息后不可恢复．\r\n确定删除？');");
            }
        }

        protected void dgMessageList_UpdateCommand(object source, DataGridCommandEventArgs e)
        {
            int dataKey = Convert.ToInt32(this.dgMessageList.DataKeys[e.Item.ItemIndex]);
            Message info = MessageFactory.Get(dataKey);

            info.content = ((TextBox)e.Item.FindControl("txteditcontent")).Text.Trim();
            info.reply = ((TextBox)e.Item.FindControl("txteditreply")).Text.Trim();

            MessageFactory.Update(info);

            this.dgMessageList.EditItemIndex = -1;
            this.LoadListData();
        }

        protected void dgMessageList_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
        {
            this.dgMessageList.CurrentPageIndex = e.NewPageIndex;
            this.LoadListData();
        }
    }
}
