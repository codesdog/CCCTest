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
    public partial class productedit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            QiZhanBang.Core.Business.Security.CheckAdministerAndRedirect();
            if (!Page.IsPostBack)
            {
                LoadProductCategorys();
                LoadProductInfo();
            }
        }

        private void LoadProductCategorys()
        {
            this.ddlProductCategory.DataTextField = "categoryname";
            this.ddlProductCategory.DataValueField = "categoryid";
            this.ddlProductCategory.DataSource = ProductCategoryFactory.GetAll(HYRequest.GetInt("channelid", 0));
            this.ddlProductCategory.DataBind();
        }

        private void LoadProductInfo()
        {
            if (this.Action == "edit")
            {
                int productid = HYRequest.GetQueryInt("productid", 0);
                Product info = ProductFactory.Get(productid);

                this.txtdescription.Text = info.description;
                this.txthits.Text = info.hits.ToString();
                this.txtincludepicpath.Text = info.includepicpath;
                this.txtprice.Text = info.price.ToString();
                this.txtproductcode.Text = info.productcode;
                this.txtproductname.Text = info.productname;
                this.txtsalecount.Text = info.salecount.ToString();
                this.txtspecification.Text = info.specification;
                this.chkiscommend.Checked = info.iscommend;

                try
                {
                    this.ddlLanguage.Items.FindByValue(info.language).Selected = true;
                    this.ddlProductCategory.Items.FindByValue(info.categoryid.ToString()).Selected = true;
                }
                catch { }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (this.Action == "add")
            {
                Product info = new Product();
                info.specification = this.txtspecification.Text;
                info.salecount = Int32.Parse( this.txtsalecount.Text.Trim() );
                info.productname = this.txtproductname.Text;
                info.productcode = this.txtproductcode.Text;
                info.price = Decimal.Parse( this.txtprice.Text.Trim() );
                info.includepicpath = this.txtincludepicpath.Text.Trim();
                info.description = this.txtdescription.Text;
                info.createtime = DateTime.Now;

                info.hits = Int32.Parse(this.txthits.Text.Trim());
                info.categoryid = Int32.Parse(this.ddlProductCategory.SelectedItem.Value);
                info.channelid = HYRequest.GetInt("channelid", 0);

                info.language = this.ddlLanguage.SelectedValue;
                info.iscommend = this.chkiscommend.Checked;

                ProductFactory.Add(info);
            }
            else if (this.Action == "edit")
            {
                int productid = HYRequest.GetQueryInt("productid", 0);
                Product info = ProductFactory.Get(productid);

                info.specification = this.txtspecification.Text;
                info.salecount = Int32.Parse(this.txtsalecount.Text.Trim());
                info.productname = this.txtproductname.Text;
                info.productcode = this.txtproductcode.Text;
                info.price = Decimal.Parse(this.txtprice.Text.Trim());
                info.includepicpath = this.txtincludepicpath.Text.Trim();
                info.description = this.txtdescription.Text;
                info.createtime = DateTime.Now;

                info.hits = Int32.Parse(this.txthits.Text.Trim());
                info.categoryid = Int32.Parse(this.ddlProductCategory.SelectedItem.Value);

                info.language = this.ddlLanguage.SelectedValue;
                info.iscommend = this.chkiscommend.Checked;
                ProductFactory.Update(info);
            }

            ClientScript.RegisterStartupScript(this.GetType(), "AddEditTips", "<script language=\"javascript\">window.location='productlist.aspx?channelid=" + HYRequest.GetInt("channelid", 0) + "';</script>");
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
