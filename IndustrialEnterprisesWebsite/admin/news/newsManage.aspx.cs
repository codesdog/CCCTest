using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FineUI;
using System.Data;
using dbAccessHelp;

namespace Webwangzhan.admin.news
{
    public partial class newsManage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();

                btnConfirmButton.OnClientClick = Grid2.GetNoSelectionAlertReference("请至少选择一项！");
                btnPopupWindow.OnClientClick = Window1.GetShowReference("addnew.aspx") + "return false;";
            }

            Panel7.Title = "新闻管理 - 页面加载时间：" + DateTime.Now.ToLongTimeString();


        }
        #region BindGrid


        private void BindGrid()
        {
            string sql = "select *  from tb_news order by n_id desc";
            DataTable table = AccessHelper.getDataTable(sql);

            Grid2.DataSource = table;
            Grid2.DataBind();
        }

        #endregion
        protected void Grid2_PageIndexChange(object sender, FineUI.GridPageEventArgs e)
        {
            Grid2.PageIndex = e.NewPageIndex;
        }

        protected void Window1_Close(object sender, FineUI.WindowCloseEventArgs e)
        {
            BindGrid();
        }
        protected void ttbSearch_Trigger1Click(object sender, EventArgs e)
        {
           

            //ttbSearch.Text = String.Empty;
            //ttbSearch.ShowTrigger1 = false;
        }

        protected void ttbSearch_Trigger2Click(object sender, EventArgs e)
        {

           // ttbSearch.ShowTrigger1 = true;
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
                string delstr = "delete  from tb_news where  n_id =" + id + "";
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
                    string sql = "delete from tb_news where n_id =" + id + "";
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