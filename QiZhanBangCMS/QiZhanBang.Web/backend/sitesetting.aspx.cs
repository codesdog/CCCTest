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
    public partial class sitesetting : System.Web.UI.Page
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

            this.dgSiteSetting.DataSource = SiteSettingFactory.GetAll();
            this.dgSiteSetting.DataBind();
        }

        protected void dgSiteSetting_CancelCommand(object source, DataGridCommandEventArgs e)
        {
            this.dgSiteSetting.EditItemIndex = -1;
            this.LoadListData();
        }

        protected void dgSiteSetting_EditCommand(object source, DataGridCommandEventArgs e)
        {
            this.dgSiteSetting.EditItemIndex = e.Item.ItemIndex;
            this.LoadListData();
        }

        protected void dgSiteSetting_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (e.CommandArgument.ToString() == "DeleteInfo")
            {
                int dataKey = Convert.ToInt32(this.dgSiteSetting.DataKeys[e.Item.ItemIndex]);

                SiteSettingFactory.Delete(dataKey);

                this.LoadListData();
            }

            if (e.Item.ItemType == ListItemType.Footer && e.CommandArgument.ToString() == "AddInfo")
            {
                string settingkey = ((TextBox)e.Item.FindControl("txtaddsettingkey")).Text.Trim();
                string settingvalule = ((TextBox)e.Item.FindControl("txtaddsettingvalue")).Text.Trim();

                SiteSettingFactory.Add(settingkey, settingvalule);
                this.LoadListData();
            }
        }

        protected void dgSiteSetting_ItemCreated(object sender, DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                e.Item.Attributes.Add("bgcolor", "#ffffff");
                e.Item.Attributes.Add("onmouseover", @"this.bgColor='#EBFFDC';");
                e.Item.Attributes.Add("onmouseout", @"this.bgColor='#ffffff';");

                ((LinkButton)e.Item.FindControl("lnkDelete")).Attributes.Add("onclick", @"javascript:return confirm('提示:删除信息后不可恢复．\r\n确定删除？');");
            }
        }

        protected void dgSiteSetting_UpdateCommand(object source, DataGridCommandEventArgs e)
        {
            int dataKey = Convert.ToInt32(this.dgSiteSetting.DataKeys[e.Item.ItemIndex]);
            string settingvalule = ((TextBox)e.Item.FindControl("txteditsettingvalue")).Text.Trim();

            SiteSettingFactory.Update(dataKey,settingvalule);

            this.dgSiteSetting.EditItemIndex = -1;
            this.LoadListData();
        }
    }
}
