using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
namespace Web
{
    public partial class Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bindpage();
        }
        private void bindpage()
        {
            LeftContents.strqryp = "Select * From T_Productclass order by id desc";
            LeftContents.strurlp = "Product.aspx?id=";
            LeftContents.strmytitlep = "作品分类";
            LeftContents.strfieldp = "ClassName";
            if (!IsPostBack)
            {
               string strqry = "";              
                if (Request.QueryString["id"] != null)
                {
                    strqry = "Select  * From T_Product where Classid=" + Request.QueryString["id"] + " order by id desc";
                    lbl_Title.Text = DBFun.SearchValue("Select ClassName From T_ProductClass where id=" + Request.QueryString["id"]);

                }
                else if (Request.QueryString["key_txt"] != null)
                {
                    strqry = "Select  * From T_Product where productname like '%" + Request.QueryString["key_txt"] + "%' order by id desc";
                    lbl_Title.Text = "搜索结果：" + Request.QueryString["key_txt"];
                }
                else   
                {
                    strqry = "select * From T_Product order by id desc";
                    lbl_Title.Text = "作品展示";

                }
                DataView dv;
                dv = DBFun.GetDataView(strqry);           
                AspNetPager1.RecordCount = dv.Table.Rows.Count;                
                Cache.Insert("dvproductlist", (DataView)dv, null, System.Web.Caching.Cache.NoAbsoluteExpiration, new TimeSpan(0, 5, 0));
                bindData();
            }
        }
        private void checkCache()
        {
            //检查缓存是否存在
            if (Cache["dvproductlist"] == null)
            {

                //绑定数据,显示用户
                DataView dvlist;
                dvlist = DBFun.GetDataView("select * From T_Product order by id desc");
                AspNetPager1.RecordCount = dvlist.Table.Rows.Count;
                Cache.Insert("dvproductlist", (DataView)dvlist, null, System.Web.Caching.Cache.NoAbsoluteExpiration, new TimeSpan(0, 5, 0));
            }
        }
        private void bindData()
        {
            checkCache();
            PagedDataSource pds = new PagedDataSource();
            pds.AllowPaging = true;
            pds.PageSize = AspNetPager1.PageSize;
            pds.CurrentPageIndex = AspNetPager1.CurrentPageIndex - 1;
            pds.DataSource = (DataView)Cache["dvproductlist"];
            rp_ProductList.DataSource = pds;
            rp_ProductList.DataBind();
        }
        protected void AspNetPager1_PageChanged(object sender, EventArgs e)
        {
            bindData();
        }
        protected string cutstr(string strChar, int intLength)
        {
            //取得自定义长度的字符串
            if (strChar.Length > intLength)
            { return strChar.Substring(0, intLength); }
            else
            { return strChar; }

        }
        protected void rp_ProductList_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
        protected void LeftContents_Load(object sender, EventArgs e)
        {

        }
}
}
