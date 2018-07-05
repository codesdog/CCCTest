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
    public partial class FrmUpUser : Form
    {
        function f = new function();
        public FrmUM frmum = null;
        string sqlstr;
        public FrmUpUser(FrmUM frm)
        {
            InitializeComponent();
            this.frmum = frm;
        }

        private void FrmUpUser_Load(object sender, EventArgs e)
        {
            DataTable dt;
            sqlstr = string.Format("select * from [User] where ID={0}", Context.uid);
            dt = DBHelper.GetDataSet(sqlstr);
            txtUName.Text = dt.Rows[0][1].ToString();
            txtUPhone.Text = dt.Rows[0][3].ToString();
            txtUPassword.Text = dt.Rows[0][2].ToString();
            txtPW.Text = dt.Rows[0][2].ToString();
            txtUAddress.Text = dt.Rows[0][4].ToString();
            txtMemo.Text = dt.Rows[0][5].ToString();
        }

        private void btnUp_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtUName.Text.Trim() == string.Empty||txtUPassword.Text == string.Empty)
                {
                    MessageBox.Show("用户名和密码不能为空！","提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
                else
                if(txtPW.Text==string.Empty)
                {
                    MessageBox.Show("请再次确认密码！", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
                else if (txtUPassword.Text != txtPW.Text)
                {
                    MessageBox.Show("两次输入密码不一致！", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
                else if (txtUPhone.Text.Trim() != string.Empty)
                {
                    if (function.IsPhone(txtUPhone.Text.Trim()) == false)
                    {
                        MessageBox.Show("手机号码格式不对！", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    }
                }
                else
                {
                    sqlstr = string.Format("update [User] set [UPassword]='{0}',[UPhone]='{1}',[UAddress]='{2}',[UCommants]='{3}' where [ID]={4}", txtUPassword.Text, txtUPhone.Text.Trim(), txtUAddress.Text.Trim(), txtMemo.Text, Context.uid);
                    int count = DBHelper.ExecuteCommand(sqlstr);
                    if (count > 0)
                    {
                        sqlstr = string.Format("select * from [User]");
                        f.DGVBind(sqlstr, frmum.dataGridView1);
                        MessageBox.Show("修改成功!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        this.Close();
                    }
                }
            }
            catch (Exception ex)
            {
                
                throw ex;
            }
        }
    }
}
