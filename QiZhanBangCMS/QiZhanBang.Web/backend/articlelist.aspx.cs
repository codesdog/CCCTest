﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Collections.Generic;

using QiZhanBang.Core.Common;
using QiZhanBang.Core.Factory;
using QiZhanBang.Core.Model;
namespace QiZhanBang.Web.backend
{
    public partial class articlelist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            QiZhanBang.Core.Business.Security.CheckAdministerAndRedirect();
            if (!Page.IsPostBack)
            {
                this.ddlSearchCategorys.DataSource = ArticleCategoryFactory.GetAll(HYRequest.GetInt("channelid", 0));
                this.ddlSearchCategorys.DataBind();

                this.ddlSearchCategorys.Items.Insert(0, new ListItem("所有栏目", "0"));

                LoadListData();
            }
        }

        public int ChannelId
        {
            get
            {
                return HYRequest.GetInt("channelid", 0);
            }
        }

        private void LoadListData()
        {
            string searchcid = this.ddlSearchCategorys.SelectedValue;
            string searchkw = this.txtSearchKeyword.Text.Trim();

            if (searchcid == "0")
                searchcid = HYRequest.GetInt("categoryid", 0).ToString();

            string whereSql = string.Empty;
            if (searchcid != "0")
            {
                whereSql += " categoryid=" + searchcid;
            }

            if (searchkw != string.Empty)
            {
                whereSql += " and title like '%" + searchkw + "%'";
            }

            this.dgArticleList.DataSource = ArticleFactory.GetList(whereSql);
            this.dgArticleList.DataBind();

            this.chkSelectAll.Attributes.Add("onclick", "javascript:SelectAll(this);");
            this.btnBatchDelete.Attributes.Add("onclick", "return CheckDeleteHandle(this);");
        }

        protected void dgArticleList_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (e.CommandArgument.ToString() == "DeleteInfo")
            {
                int dataKey = Convert.ToInt32(this.dgArticleList.DataKeys[e.Item.ItemIndex]);
                ArticleFactory.Delete(dataKey);

                this.LoadListData();
            }
        }

        protected void dgArticleList_ItemCreated(object sender, DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                e.Item.Attributes.Add("bgcolor", "#ffffff");
                e.Item.Attributes.Add("onmouseover", @"this.bgColor='#EBFFDC';");
                e.Item.Attributes.Add("onmouseout", @"this.bgColor='#ffffff';");

                ((LinkButton)e.Item.FindControl("lnkDelete")).Attributes.Add("onclick", @"javascript:return confirm('提示:删除信息后不可恢复．\r\n确定删除？');");
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            this.LoadListData();
        }

        protected void dgArticleList_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
        {
            this.dgArticleList.CurrentPageIndex = e.NewPageIndex;
            this.LoadListData();
        }

        protected void btnBatchDelete_Click(object sender, EventArgs e)
        {
            List<int> ids = new List<int>();
            DataGridItemCollection items = this.dgArticleList.Items;
            foreach (DataGridItem item in items)
            {
                CheckBox chkIsSelect = item.FindControl("chkIsSelect") as CheckBox;
                if (chkIsSelect != null && chkIsSelect.Checked)
                {
                    ids.Add(Convert.ToInt32(this.dgArticleList.DataKeys[item.ItemIndex]));
                }
            }

            foreach (int id in ids)
            {
                ArticleFactory.Delete(id);
            }

            this.LoadListData();
        }
    }
}
