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
    public partial class FrmUpPW : Form
    {
        public FrmUpPW()
        {
            InitializeComponent();
        }
        string sqlstr;
        private void FrmUpPW_Load(object sender, EventArgs e)
        {
            sqlstr = string.Format("select * from [User] where [ID]={0}", Context.uid);
            DataTable dt;
            dt = DBHelper.GetDataSet(sqlstr);
            txtUName.Text = dt.Rows[0][1].ToString();
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            if (txtPassword.Text != txtPW.Text)
            {
                MessageBox.Show("两次输入密码不一致！", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            else if (txtPW.Text == string.Empty)
            { MessageBox.Show("请再次输入密码！", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning); }
            else
            {
                sqlstr = string.Format("update [User] set [UPassword]='{0}' where [ID]={1}", txtPassword.Text, Context.uid);
                int count = DBHelper.ExecuteCommand(sqlstr);
                if (count > 0)
                {
                    MessageBox.Show("修改成功!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    this.Close();
                }
            }

        }

    }
}
