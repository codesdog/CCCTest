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

using System.IO;

using QiZhanBang.Core.Common;
using QiZhanBang.Core.Factory;
using QiZhanBang.Core.Model;
namespace QiZhanBang.Web.backend
{
    public partial class singlepageedit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            QiZhanBang.Core.Business.Security.CheckAdministerAndRedirect();
            if (!Page.IsPostBack)
            {
                LoadPageData();
            }
        }

        private void LoadPageData()
        {
            if (this.Action == "edit")
            {
                this.txtserialno.ReadOnly = true;

                int pageid = HYRequest.GetInt("pageid", 0);
                SinglePage info = SinglePageFactory.Get(pageid);
                if (info != null)
                {
                    this.txtserialno.Text = info.serialno;
                    this.txttitle.Text = info.title;
                    this.editorcontent.Value = info.content;
                }
            }
        }

        public string Action
        {
            get
            {
                return HYRequest.GetString("action");
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (this.Action == "add")
            {
                string serialno = this.txtserialno.Text.Trim();

                if (serialno == string.Empty)
                    return;

                SinglePage info = SinglePageFactory.Get(serialno);
                if (info != null)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "AddEditTips", "<script language=\"javascript\">alert('编码必须唯一！');window.location='singlepageedit.aspx?action=add';</script>");
                    return;
                }

                info = new SinglePage();

                info.serialno = serialno;
                info.content = HYRequest.GetFormString("editorcontent");
                info.title = this.txttitle.Text.Trim();

                SinglePageFactory.Add(info);

                info = SinglePageFactory.Get(serialno);

                ClientScript.RegisterStartupScript(this.GetType(), "AddEditTips", "<script language=\"javascript\">alert('添加成功！');window.location='singlepageedit.aspx?action=edit&pageid=" + info .pageid+ "';</script>");
            }
            else if (this.Action == "edit")
            {
                int pageid = HYRequest.GetInt("pageid", 0);
                SinglePage info = SinglePageFactory.Get(pageid);
                if (info != null)
                {
                    info.content = HYRequest.GetFormString("editorcontent");
                    info.title = this.txttitle.Text.Trim();

                    SinglePageFactory.Update(info);

                    ClientScript.RegisterStartupScript(this.GetType(), "AddEditTips", "<script language=\"javascript\">alert('修改成功！');window.location='singlepageedit.aspx?action=edit&pageid=" + info.pageid + "';</script>");
                }
            }

            
        }
    }
}
