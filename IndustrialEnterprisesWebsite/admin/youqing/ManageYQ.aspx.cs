using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using FineUI;
using System.Text;
using dbAccessHelp;



namespace Webwangzhan.admin.youqing
{
    public partial class ManageYQ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
                btnDelete.OnClientClick = Grid1.GetNoSelectionAlertReference("至少选择一项！");
                btnNew.OnClientClick = Window1.GetShowReference("addyq.aspx", "新增");
            }

        }
         #region BindGrid

        private void BindGrid()
        {
            string str = "select *  from tb_youqing order by yq_id desc";
            DataTable table = AccessHelper.getDataTable(str);

            Grid1.DataSource = table;
            Grid1.DataBind();
        }

        protected string GetEditUrl(object id)
        {
            return Window1.GetShowReference("grid_iframe_window.aspx?id=" + id);
        }


        #endregion

        #region Events

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (Grid1.SelectedRowIndexArray.Length > 0)
            {
                for (int i = 0; i < Grid1.SelectedRowIndexArray.Length; i++)
                {
                    int pageindex = Grid1.PageIndex;
                    int rowIndex = Grid1.SelectedRowIndexArray[i];
                    int index = pageindex * Grid1.PageSize + rowIndex;
                    string id = Grid1.Rows[index].DataKeys[0].ToString();
                    string sql = "delete from tb_youqing where yq_id =" + id + "";
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


        protected void Window1_Close(object sender, EventArgs e)
        {
            BindGrid();
        }
        /// <summary>
        /// 单一删除操作
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Grid1_RowCommand(object sender, GridCommandEventArgs e)
        {
            int id = Convert.ToInt32(Grid1.DataKeys[e.RowIndex][0]);

            if (e.CommandName == "Delete")
            {
                // 在操作之前进行权限检查
                string delstr = "delete  from tb_youqing where  yq_id =" + id + "";
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
        #endregion

    }
}