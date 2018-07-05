using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace HDManagementSoft
{
    public partial class FrmSS : Form
    {
        public FrmSS()
        {
            InitializeComponent();
        }
        function f = new function();
        string sqlstr;
        double allsale=0;//总金额
        public int rowindex = 0;//行号
        private void FrmSS_Load(object sender, EventArgs e)
        {
            sqlstr = string.Format("select * from ProCategory");
            f.CmboxBind(sqlstr, cmbProC, 1);
            cmbProC.SelectedIndex = -1;
            sqlstr = string.Format("select ProSale.ProName,ProSPrice,ProSNumber,ProCategory,ProSDate from ProSale,Products where ProSale.ProNo=Products.ID");
            f.CmboxBind(sqlstr, cmbProName, 0);
            this.cmbProName.SelectedIndex = -1;
            f.CmboxBind(sqlstr, cmbProSD, 4);
            this.cmbProSD.SelectedIndex = -1;
            f.DGVBind(sqlstr, dataGridView1);
        }
        /// <summary>
        /// 查询功能
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnSelect_Click(object sender, EventArgs e)
        {
            try
            {
                sqlstr = "select a.*,b.ProCategory from ProSale as a,Products as b where a.ProNo=b.ID";
                //如果商品类型不为空
                if (this.cmbProC.Text != "")
                {
                    sqlstr += " and (ProCategory='" + cmbProC.Text + "')";
                }
                //如果商品名称不为空
                if (cmbProName.Text != "")
                {
                    sqlstr += " and (a.ProName='" + cmbProName.Text.Trim() + "')";
                }
                //如果商品出售时间不为空
                if (cmbProSD.Text != "")
                {
                    bool isDate;
                    string s = string.Empty;
                    if (cmbProSD.Text.IndexOf('/', 0) > 0)
                    {
                        s = cmbProSD.Text.Replace('/', '-');
                    }
                    else if (cmbProSD.Text.IndexOf('.', 0) > 0)
                    {
                        s = cmbProSD.Text.Replace('.', '-');
                    }
                    else
                    {
                        s = cmbProSD.Text;
                    }

                    isDate = function.IsDate(s);
                    if (isDate)
                    {
                        sqlstr += " and (ProSDate=#" + s + "#)";
                    }
                    else
                    {
                        MessageBox.Show("请输入正确的日期格式！", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    }
                }
                int count = DBHelper.GetScalar(sqlstr);
                if (count > 0)
                {
                    function f = new function();
                    f.DGVBind(sqlstr, dataGridView1);
                    allsale = f.CellSum(dataGridView1, 1);
                    lblSum.Text = "金额合计："+allsale.ToString();
                }
                else
                {
                    MessageBox.Show("查找的内容不存在！", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private void dataGridView1_CellMouseDown(object sender, DataGridViewCellMouseEventArgs e)
        {
            if (e.Button == MouseButtons.Right)
            {
                rowindex = e.RowIndex;
                if (e.RowIndex >= 0)
                {
                    //若行已是选中状态就不再进行设置
                    if (dataGridView1.Rows[e.RowIndex].Selected == false)
                    {
                        dataGridView1.ClearSelection();
                        dataGridView1.Rows[e.RowIndex].Selected = true;
                    }
                    //只选中一行时设置活动单元格
                    if (dataGridView1.SelectedRows.Count == 1)
                    {
                        dataGridView1.CurrentCell = dataGridView1.Rows[e.RowIndex].Cells[e.ColumnIndex];
                    }
                    //弹出操作菜单
                    contextMenuStrip1.Show(MousePosition.X, MousePosition.Y);
                }
            }
        }

        private void tsmDel_Click(object sender, EventArgs e)
        {
            dataGridView1.CurrentCell = dataGridView1.Rows[rowindex].Cells[0];
            int proid = Convert.ToInt32(dataGridView1.CurrentCell.Value);
            sqlstr = string.Format("delete * from [Products] where [ID]={0}", proid);
            if (MessageBox.Show("此操作是不可逆的，确定要删除吗？", "警告", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning) == DialogResult.OK)
            {
                if (DBHelper.ExecuteCommand(sqlstr) > 0)
                {
                    dataGridView1.Rows.RemoveAt(rowindex);
                    MessageBox.Show("删除成功！", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
        }
    }
}
