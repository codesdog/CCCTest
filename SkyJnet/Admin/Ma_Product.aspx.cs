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
namespace Web.Admin
{
    public partial class Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //加载
            if (!IsPostBack)
            { 
                CommFun.IsAdmin();                  
                string strqry = "";                  
                strqry = "select * From T_Product order by id desc";
                DBFun.FillDwList(dw_SoftClass, "Select id,classname from T_ProductClass order by id desc");
                dw_SoftClass.Items.Add(new ListItem("所有作品", "0"));

                //绑定数据
                DataView  dvlist = DBFun.GetDataView(strqry);           
                AspNetPager1.RecordCount = dvlist.Table.Rows.Count;
                Session["dvlist"] = dvlist;
                bindData();
                                
            }  
        }
       
       
        protected void btnsearch_Click(object sender, EventArgs e)
        {
            //模糊查询
            string strqry = "";
            strqry = string.Format("select * From T_Product where ProductName like '%{0}%' order by id desc", tbsearch.Text);
            
            DataView  dvlist = DBFun.GetDataView(strqry);           
            AspNetPager1.RecordCount = dvlist.Table.Rows.Count;
            Session["dvlist"] = dvlist;
            bindData();
        }

        void bindData()
        {
            PagedDataSource pds = new PagedDataSource();
            pds.AllowPaging = true;
            pds.PageSize = AspNetPager1.PageSize;
            pds.CurrentPageIndex = AspNetPager1.CurrentPageIndex - 1;
            pds.DataSource = (DataView)Session["dvlist"];
            GridView1.DataSource = pds;
            GridView1.DataBind();
        }
        protected void AspNetPager1_PageChanged(object sender, EventArgs e)
        {
            bindData();
        }
        
        protected void btn_Ok_Click(object sender, EventArgs e)
        {
            //操作
            string strOpid = "";
            string strsql;
            
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                CheckBox ckb = (CheckBox)GridView1.Rows[i].FindControl("sle");
                string id = GridView1.Rows[i].Cells[0].Text;
                if (ckb.Checked)
                {
                    if (strOpid == "")
                        strOpid += ("(" + id);
                    else
                        strOpid += ("," + id);
                }
            }
            strOpid += ")";
            if (strOpid == ")")
                Response.Write("<script>alert('没有选中任何记录！');history.go(-1);</script>");
            else
            {           
                //删除
                
                strsql = string.Format("delete from T_Product where id in {0}", strOpid);
                if (DBFun.ExecuteUpdate(strsql))
                {
                    
                    ltl_Msg.Text = "删除成功！";
                    DataView dvlist = DBFun.GetDataView("select * From T_Product order by id desc");
                    AspNetPager1.RecordCount = dvlist.Table.Rows.Count;
                    Session["dvlist"] = dvlist;
                    bindData();
                }
                

            }

        }
        protected void dw_SoftClass_SelectedIndexChanged(object sender, EventArgs e)
        {
            string strqry = "";
            if (dw_SoftClass.Text == "0")
            {
                strqry = "select * From T_Product order by id desc";
            }
            else
            {
                strqry = string.Format("select * From T_Product where classid={0} order by id desc", dw_SoftClass.Text);
            }
            
            
            DataView dvlist = DBFun.GetDataView(strqry);
            AspNetPager1.RecordCount = dvlist.Table.Rows.Count;
            Session["dvlist"] = dvlist;
            bindData();
        }
}
}
