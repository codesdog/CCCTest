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
    public partial class articlecategorylist : System.Web.UI.Page
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
            int channelid = HYRequest.GetInt("channelid", 0);
            this.dgArticleCategoryList.DataSource = ArticleCategoryFactory.GetAll(channelid);
            this.dgArticleCategoryList.DataBind();
        }

        protected void dgArticleCategoryList_CancelCommand(object source, DataGridCommandEventArgs e)
        {
            this.dgArticleCategoryList.EditItemIndex = -1;
            this.LoadListData();
        }

        protected void dgArticleCategoryList_EditCommand(object source, DataGridCommandEventArgs e)
        {
            this.dgArticleCategoryList.EditItemIndex = e.Item.ItemIndex;
            this.LoadListData();
        }

        protected void dgArticleCategoryList_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Footer && e.CommandArgument.ToString() == "AddInfo")
            {
                ArticleCategory info = new ArticleCategory();
                info.categoryname = ((TextBox)e.Item.FindControl("txtaddname")).Text.Trim();
                info.categoryname1 = ((TextBox)e.Item.FindControl("txtaddname1")).Text.Trim();
                info.categoryname2 = ((TextBox)e.Item.FindControl("txtaddname2")).Text.Trim();
                info.channelid = HYRequest.GetInt("channelid", 0);
                info.channelname = ChannelFactory.Get(info.channelid).channelname;
                info.orderid = Int32.Parse(((TextBox)e.Item.FindControl("txtaddorderid")).Text.Trim());
                info.parentid = 0;

                ArticleCategoryFactory.Add(info);
                this.LoadListData();
            }

            if (e.CommandArgument.ToString() == "DeleteInfo")
            {
                int dataKey = Convert.ToInt32(this.dgArticleCategoryList.DataKeys[e.Item.ItemIndex]);

                //todo:删除之前，检查该分类下是否有文章。
                ArticleCategoryFactory.Delete(dataKey);

                //DataTable dtchildCates = ArticleCategoryFactory.GetListByParentId(dataKey);
                //if (dtchildCates.Rows.Count == 0)
                //{
                //    if (ArticleFactory.GetArticleCountByCid(dataKey) == 0)
                //    {
                //        ArticleCategoryFactory.DeleteArticleCategory(dataKey);
                //    }
                //    else
                //    {
                //        ClientScript.RegisterStartupScript(this.GetType(), "AddEditTips", "<script language=\"javascript\">alert('该分类有文章，不允许删除！');</script>");
                //    }
                //}
                //else
                //{
                //    ClientScript.RegisterStartupScript(this.GetType(), "AddEditTips", "<script language=\"javascript\">alert('该分类有子分类，不允许删除！');</script>");
                //}

                this.LoadListData();
            }
        }

        protected void dgArticleCategoryList_ItemCreated(object sender, DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                e.Item.Attributes.Add("bgcolor", "#ffffff");
                e.Item.Attributes.Add("onmouseover", @"this.bgColor='#EBFFDC';");
                e.Item.Attributes.Add("onmouseout", @"this.bgColor='#ffffff';");

                ((LinkButton)e.Item.FindControl("lnkDelete")).Attributes.Add("onclick", @"javascript:return confirm('提示:删除信息后不可恢复．\r\n确定删除？');");
            }
        }

        protected void dgArticleCategoryList_UpdateCommand(object source, DataGridCommandEventArgs e)
        {
            int dataKey = Convert.ToInt32(this.dgArticleCategoryList.DataKeys[e.Item.ItemIndex]);
            ArticleCategory info = ArticleCategoryFactory.Get(dataKey);

            info.categoryname = ((TextBox)e.Item.FindControl("txteditname")).Text.Trim() ;
            info.categoryname1 = ((TextBox)e.Item.FindControl("txtaddname1")).Text.Trim();
            info.categoryname2 = ((TextBox)e.Item.FindControl("txtaddname2")).Text.Trim();
            info.parentid = 0 ;
            info.orderid = Int32.Parse(((TextBox)e.Item.FindControl("txteditorderid")).Text.Trim());
            
            ArticleCategoryFactory.Update(info);

            this.dgArticleCategoryList.EditItemIndex = -1;
            this.LoadListData();
        }
    }
}
