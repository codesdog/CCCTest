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
    public partial class linklist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            QiZhanBang.Core.Business.Security.CheckAdministerAndRedirect();
            if (!Page.IsPostBack)
            {
                LoadListData();
            }
        }

        public int categoryid
        {
            get
            {
                return HYRequest.GetInt("categoryid", 0);
            }
        }

        private void LoadListData()
        {
            int categoryid = HYRequest.GetInt("categoryid", 0);

            this.dgLinkList.DataSource = LinkFactory.GetList(categoryid);
            this.dgLinkList.DataBind();

            this.chkSelectAll.Attributes.Add("onclick", "javascript:SelectAll(this);");
            this.btnBatchDelete.Attributes.Add("onclick", "return CheckDeleteHandle(this);");
        }

        protected void dgLinkList_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (e.CommandArgument.ToString() == "DeleteInfo")
            {
                int dataKey = Convert.ToInt32(this.dgLinkList.DataKeys[e.Item.ItemIndex]);
                LinkFactory.Delete(dataKey);

                this.LoadListData();
            }
        }

        protected void dgLinkList_ItemCreated(object sender, DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                e.Item.Attributes.Add("bgcolor", "#ffffff");
                e.Item.Attributes.Add("onmouseover", @"this.bgColor='#EBFFDC';");
                e.Item.Attributes.Add("onmouseout", @"this.bgColor='#ffffff';");

                ((LinkButton)e.Item.FindControl("lnkDelete")).Attributes.Add("onclick", @"javascript:return confirm('提示:删除信息后不可恢复．\r\n确定删除？');");
            }
        }

        protected void btnBatchDelete_Click(object sender, EventArgs e)
        {
            List<int> ids = new List<int>();
            DataGridItemCollection items = this.dgLinkList.Items;
            foreach (DataGridItem item in items)
            {
                CheckBox chkIsSelect = item.FindControl("chkIsSelect") as CheckBox;
                if (chkIsSelect != null && chkIsSelect.Checked)
                {
                    ids.Add(Convert.ToInt32(this.dgLinkList.DataKeys[item.ItemIndex]));
                }
            }

            foreach (int id in ids)
            {
                LinkFactory.Delete(id);
            }

            this.LoadListData();
        }
    }
}
