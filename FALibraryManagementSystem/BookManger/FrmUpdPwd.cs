using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Jackone
{
    public partial class FrmUpdPwd : Form
    {
        string  username;
        public FrmUpdPwd(string username)
        {
            InitializeComponent();

            this.username = username;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (txt_pwd1.Text == "")
            {
                MessageBox.Show("请输入新密码", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            if (txt_pwd1.Text != txt_pwd2.Text)
            {
                MessageBox.Show("两次输入的密码不一致", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
            {
                try
                {
                    UserInfo ui = new UserInfo();
                    ui.UserName = username;
                    ui.PassWord = txt_pwd1.Text;
                    UserInfoService.UpdateUserInfo(ui);
                }
                catch
                {
                    MessageBox.Show("修改失败", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);

                    return;
                }

                txt_pwd1.Text = txt_pwd2.Text = "";
                MessageBox.Show("修改成功", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);

            }
        }

        private void FrmUpdPwd_Load(object sender, EventArgs e)
        {

        }
    }
}
