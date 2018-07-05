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
    public partial class linkcategorylist : System.Web.UI.Page
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
            this.dgLinkCategoryCategoryList.DataSource = LinkCategoryFactory.GetAll();
            this.dgLinkCategoryCategoryList.DataBind();
        }

        protected void dgLinkCategoryCategoryList_CancelCommand(object source, DataGridCommandEventArgs e)
        {
            this.dgLinkCategoryCategoryList.EditItemIndex = -1;
            this.LoadListData();
        }

        protected void dgLinkCategoryCategoryList_EditCommand(object source, DataGridCommandEventArgs e)
        {
            this.dgLinkCategoryCategoryList.EditItemIndex = e.Item.ItemIndex;
            this.LoadListData();
        }

        protected void dgLinkCategoryCategoryList_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Footer && e.CommandArgument.ToString() == "AddInfo")
            {
                LinkCategory info = new LinkCategory();
                info.categoryname = ((TextBox)e.Item.FindControl("txtaddname")).Text.Trim();
                info.linktype = "image";

                LinkCategoryFactory.Add(info);
                this.LoadListData();
            }

            if (e.CommandArgument.ToString() == "DeleteInfo")
            {
                int dataKey = Convert.ToInt32(this.dgLinkCategoryCategoryList.DataKeys[e.Item.ItemIndex]);

                //todo:删除之前，检查该分类下是否有文章。
                LinkCategoryFactory.Delete(dataKey);

                this.LoadListData();
            }
        }

        protected void dgLinkCategoryCategoryList_ItemCreated(object sender, DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                e.Item.Attributes.Add("bgcolor", "#ffffff");
                e.Item.Attributes.Add("onmouseover", @"this.bgColor='#EBFFDC';");
                e.Item.Attributes.Add("onmouseout", @"this.bgColor='#ffffff';");

                ((LinkButton)e.Item.FindControl("lnkDelete")).Attributes.Add("onclick", @"javascript:return confirm('提示:删除信息后不可恢复．\r\n确定删除？');");
            }
        }

        protected void dgLinkCategoryCategoryList_UpdateCommand(object source, DataGridCommandEventArgs e)
        {
            int dataKey = Convert.ToInt32(this.dgLinkCategoryCategoryList.DataKeys[e.Item.ItemIndex]);
            LinkCategory info = LinkCategoryFactory.Get(dataKey);

            info.categoryname = ((TextBox)e.Item.FindControl("txteditname")).Text.Trim();

            LinkCategoryFactory.Update(info);

            this.dgLinkCategoryCategoryList.EditItemIndex = -1;
            this.LoadListData();
        }
    }
}
