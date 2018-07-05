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
    public partial class FrmAC : Form
    {
        function f = new function();
        private ComboBox comb;
        public int rowindex=0;
        string sqlstr;
        public FrmAC(ComboBox cmb)//修改构造函数把FrmAdd中的控件cmbProC
        {
            InitializeComponent();
            this.comb = cmb;
        }

        private void FrmAC_Load(object sender, EventArgs e)
        {
            string sql=string.Format("select * from ProCategory");
            f.DGVBind(sql, dataGridView1);
            
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtCategoty.Text.Trim() != string.Empty)
                {
                    string sql = string.Format("insert into ProCategory(ProCategory) values('{0}')", this.txtCategoty.Text.Trim());
                    int count = DBHelper.ExecuteCommand(sql);
                    if (count > 0)
                    {
                        sqlstr = string.Format("select * from ProCategory");
                        f.DGVBind(sqlstr, dataGridView1);
                        MessageBox.Show("添加成功！", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                }
                else
                {
                    MessageBox.Show("商品类型不能为空！", "醒告", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private void FrmAC_FormClosed(object sender, FormClosedEventArgs e)
        {
            string sqlstr = string.Format("select * from ProCategory");
            f.CmboxBind(sqlstr, this.comb, 1);//重新绑定FrmAdd窗体中的商品类型
        }

        private void dataGridView1_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
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
            sqlstr = string.Format("delete * from [ProCategory] where [ID]={0}", proid);
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
