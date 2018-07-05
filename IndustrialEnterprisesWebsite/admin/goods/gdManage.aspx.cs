using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using FineUI;
using dbAccessHelp;

namespace Webwangzhan.admin.goods
{
    public partial class gdManage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();

                btnConfirmButton.OnClientClick = Grid2.GetNoSelectionAlertReference("请至少选择一项！");
                btnPopupWindow.OnClientClick = Window1.GetShowReference("addgood.aspx");
            }

            Panel7.Title = "产品管理 - 页面加载时间：" + DateTime.Now.ToLongTimeString();

        }
        #region BindGrid



        private void BindGrid()
        {
            string str = "select * from tb_goods order by gid desc";
            DataTable table = AccessHelper.getDataTable(str);

            Grid2.DataSource = table;
            Grid2.DataBind();
        }

        #endregion

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindGrid();
        }

        protected void Grid2_Sort(object sender, FineUI.GridSortEventArgs e)
        {
            Alert.ShowInTop(e.SortField);

        }

        protected void Grid2_PageIndexChange(object sender, FineUI.GridPageEventArgs e)
        {
            Alert.ShowInTop(e.NewPageIndex.ToString());
        }

        protected void Window1_Close(object sender, FineUI.WindowCloseEventArgs e)
        {
            BindGrid();
        }


        protected void ttbSearch_Trigger1Click(object sender, EventArgs e)
        {
            BindGrid();

            ttbSearch.Text = String.Empty;
            ttbSearch.ShowTrigger1 = false;
        }

        protected void ttbSearch_Trigger2Click(object sender, EventArgs e)
        {
            BindGrid();

            ttbSearch.ShowTrigger1 = true;
        }
        /// <summary>
        /// 单一删除操作
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Grid1_RowCommand(object sender, GridCommandEventArgs e)
        {
            int id = Convert.ToInt32(Grid2.DataKeys[e.RowIndex][0]);

            if (e.CommandName == "Delete")
            {
                // 在操作之前进行权限检查
                string delstr = "delete  from tb_goods where  gid =" + id + "";
                try
                {
                    dbAccessHelp.AccessHelper.ExecuteSql(delstr);
                    Alert.Show("删除成功！");
                }
                catch (System.Data.SqlClient.SqlException E)
                {
                    Alert.Show("删除失败！"); 
                }
                BindGrid();
            }
        }

        protected void btnConfirmButton_Click(object sender, EventArgs e)
        {
            if (Grid2.SelectedRowIndexArray.Length > 0)
            {
                for (int i = 0; i < Grid2.SelectedRowIndexArray.Length; i++)
                {
                    int pageindex = Grid2.PageIndex;
                    int rowIndex = Grid2.SelectedRowIndexArray[i];
                    int index = pageindex * Grid2.PageSize + rowIndex;
                    string id = Grid2.Rows[index].DataKeys[0].ToString();
                    string sql = "delete from tb_goods where gid =" + id + "";
                    int tt = dbAccessHelp.AccessHelper.ExecuteSql(sql);
                    if (tt > 0)
                    {
                        Alert.Show("删除成功！", MessageBoxIcon.Warning);
                    }
                    else
                    {
                        Alert.Show("删除失败！");
                    }
                }

                this.BindGrid();
            }
            else
            {

                Alert.Show("请选择数据！", MessageBoxIcon.Error);
            }
        }
    }
}