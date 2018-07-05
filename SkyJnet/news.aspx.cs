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
//51_a_s_p_x.c_o_m

namespace Web
{
    public partial class news : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            pageload();           
        }
        protected void pageload()
        {
            //绑定页面内容
            if (!IsPostBack)
            {
                string strqry = "";
                if (Request.QueryString.Count != 0)
                {
                    strqry = "Select  * From T_News where newstypeid= " + Request.QueryString["id"] + " order by id desc";
                    lbl_Title.Text = DBFun.SearchValue("Select TypeName From T_NewsType where id=" + Request.QueryString["id"]);
                }               
                else
                {
                    strqry = "Select  * From T_News  order by id desc";
                    lbl_Title.Text = "新闻动态";
                }
                DataRow drw = DBFun.GetDataRow(strqry);
                if (drw == null)
                {
                    return;
                }


                DataView dv = DBFun.GetDataView(strqry);
                rp_NewsList.DataSource = dv;
                Session["dvlist"] = (DataView)dv;
                AspNetPager1.RecordCount = dv.Table.Rows.Count;
                bindData();
            }
        }
        private  void bindData()
        {
            PagedDataSource pds = new PagedDataSource();
            pds.AllowPaging = true;
            pds.PageSize = AspNetPager1.PageSize;
            pds.CurrentPageIndex = AspNetPager1.CurrentPageIndex - 1;
            pds.DataSource = (DataView)Session["dvlist"];
            rp_NewsList.DataSource = pds;
            rp_NewsList.DataBind();
        }
        protected void AspNetPager1_PageChanged(object sender, EventArgs e)
        {
            bindData();
        }
    }
}