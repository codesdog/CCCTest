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
    public partial class FrmAddUser : Form
    {
        public FrmAddUser()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            List<UserInfo> _list = UserInfoService.SelectAllUser();

            for (int i = 0; i < _list.Count; i++)
            {
                if (_list[i].UserName == txt_username.Text)
                {
                    MessageBox.Show("用户名已存在", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    return;
                }
            }

            if (txt_username.Text == "")
            {
                MessageBox.Show("请填写用户名", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            if (txt_pwd1.Text == "")
            {
                MessageBox.Show("请填写密码", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            if (txt_pwd1.Text != txt_pwd2.Text)
            {
                MessageBox.Show("两次密码不一致", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
            {
                try
                {
                    UserInfo ui = new UserInfo();
                    ui.UserName = txt_username.Text;
                    ui.PassWord = txt_pwd1.Text;
                    ui.IsSysAdmin = cbmUserType.SelectedIndex;

                    UserInfoService.InsertUserInfo(ui);
                    
                }
                catch 
                {
                    txt_pwd1.Text = txt_pwd2.Text = "";
                    MessageBox.Show("添加失败", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                txt_pwd1.Text = txt_pwd2.Text = txt_username.Text = "";
                MessageBox.Show("添加成功", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);

            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void FrmAddUser_Load(object sender, EventArgs e)
        {
            cbmUserType.SelectedIndex = 0;
        }
    }
}
