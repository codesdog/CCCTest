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
    public partial class FrmUM : Form
    {
        public FrmUM()
        {
            InitializeComponent();
        }
        function f = new function();
        private void tsbAddUser_Click(object sender, EventArgs e)
        {
            FrmADDUser frmau = new FrmADDUser(this);
            frmau.ShowDialog();
        }

        private void FrmUM_Load(object sender, EventArgs e)
        {
            string sqlstr = string.Format("select * from [User]");
            f.DGVBind(sqlstr, dataGridView1);
            Context.uid = Convert.ToInt32(dataGridView1.CurrentRow.Cells[0].Value);
        }

        private void tlsUpUser_Click(object sender, EventArgs e)
        {   
            FrmUpUser frmup = new FrmUpUser(this);
            frmup.ShowDialog();
        }

        private void tsbDelUser_Click(object sender, EventArgs e)
        {
            string sqlstr = string.Format("delete * from [User] where [ID]={0}", Context.uid);
            if (Context.uid!=1)
            {
                if (MessageBox.Show("此操作是不可逆的，确定要删除吗？", "警告", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning) == DialogResult.OK)
                {
                    int count = DBHelper.ExecuteCommand(sqlstr);
                    if (count > 0)
                    {
                        sqlstr = string.Format("select * from [User]");
                        f.DGVBind(sqlstr, dataGridView1);
                        MessageBox.Show("删除成功！", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        Context.uid = Convert.ToInt32(dataGridView1.CurrentRow.Cells[0].Value);
                    }
                }
            }
            else
            {
                MessageBox.Show("超级用户不充许删除！", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            Context.uid = Convert.ToInt32(dataGridView1.CurrentRow.Cells[0].Value);
        }
    }
}
