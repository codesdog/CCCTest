using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.OleDb;

namespace HDManagementSoft
{
    public partial class FrmLS : Form
    {
        public FrmLS()
        {
            InitializeComponent();
        }

        function f = new function();
        string sqlstr = string.Empty;
        public int rowindex = 0;
        //加载每个控件绑定项
        private void FrmLS_Load(object sender, EventArgs e)
        {
            sqlstr = string.Format("select * from ProCategory");
            f.CmboxBind(sqlstr, cmbProC, 1);
            cmbProC.SelectedIndex = -1;
            sqlstr = string.Format("select * from Products");
            f.CmboxBind(sqlstr, cmbProName, 1);
            this.cmbProName.SelectedIndex = -1;
            f.CmboxBind(sqlstr, cmbProF, 6);
            this.cmbProF.SelectedIndex = -1;
            f.CmboxBind(sqlstr, cmbProBD, 4);
            this.cmbProBD.SelectedIndex = -1;
            f.DGVBind(sqlstr, dataGridView1);
        }
        //查询功能
        private void btnSelect_Click(object sender, EventArgs e)
        {
            try
            {
                sqlstr = "select * from Products where 1=1";
                //如果商品类型不为空
                if (this.cmbProC.Text != "")
                {
                    sqlstr += " and (ProCategory='" + cmbProC.Text + "')";
                }
                //如果商品的厂家不为空
                if (cmbProF.Text != "")
                {
                    sqlstr += " and (ProFactory='" + cmbProF.Text + "')";
                }
                //如果商品名称不为空
                if (cmbProName.Text != "")
                {
                    sqlstr += " and (ProName='" + cmbProName.Text+"')";
                }
                //如果商品购买时间不为空
                if (cmbProBD.Text != "")
                {
                    bool isDate;
                    string s=string.Empty;
                    if (cmbProBD.Text.IndexOf('/', 0) > 0)
                    {
                        s=cmbProBD.Text.Replace('/', '-');
                    }
                    else if (cmbProBD.Text.IndexOf('.', 0) > 0)
                        {
                            s = cmbProBD.Text.Replace('.', '-');
                        }
                        else
                        {
                            s = cmbProBD.Text;
                        }

                    isDate=function.IsDate(s);
                    if (isDate)
                    {
                        sqlstr += " and (ProBDate=#" + s + "#)";
                    }
                    else
                    {
                        MessageBox.Show("请输入正确的日期格式！","提示",MessageBoxButtons.OK,MessageBoxIcon.Warning);
                    }
                }
                int count = DBHelper.GetScalar(sqlstr);
                if (count > 0)
                {
                    function f = new function();
                    f.DGVBind(sqlstr, dataGridView1);
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
            if (MessageBox.Show("此操作是不可逆的，确定要删除吗？","警告",MessageBoxButtons.OKCancel,MessageBoxIcon.Warning) == DialogResult.OK)
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
