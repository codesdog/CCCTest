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
    public partial class FrmADDUser : Form
    {
        function f = new function();
        public FrmUM frmu=null;
        public FrmADDUser(FrmUM frm)
        {
            InitializeComponent();
            this.frmu = frm;
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtUName.Text.Trim() == string.Empty || txtUPassword.Text == string.Empty)
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
                    string sql = string.Format("select * from [User] where UName='{0}'", txtUName.Text.Trim());
                    if (DBHelper.GetScalar(sql) < 0)
                    {
                        string sqlstr = string.Format("insert into [User](UName,UPassword,UPhone,UAddress,UCommants) values('{0}','{1}','{2}','{3}','{4}')", txtUName.Text.Trim(), txtUPassword.Text, txtUPhone.Text.Trim(), txtUAddress.Text.Trim(), txtMemo.Text);
                        int count = DBHelper.ExecuteCommand(sqlstr);
                        if (count >= 0)
                        {
                            sqlstr = string.Format("select * from [User]");
                            f.DGVBind(sqlstr, frmu.dataGridView1);
                            MessageBox.Show("保存成功！", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                            this.Close();
                        }
                    }
                    else
                    {
                        MessageBox.Show("用户名重复！", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
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
