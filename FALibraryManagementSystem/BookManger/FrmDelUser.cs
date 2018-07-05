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
    public partial class FrmDelUser : Form
    {
        public FrmDelUser()
        {
            InitializeComponent();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {

                string selname = (cbm_user.SelectedValue as UserInfo).UserName;
                UserInfoService.DeleteUserInfo(selname);


               int lCount= selUser();
               if (lCount <= 2)
               {
                   button1.Enabled = false;
               }
               MessageBox.Show("注销成功", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch
            {
                MessageBox.Show("注销失败", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void FrmDelUser_Load(object sender, EventArgs e)
        {
            selUser();
        }

        private int selUser()
        {
           
            List<UserInfo> list = UserInfoService.SelectAllUser();
            cbm_user.DataSource = list;
            cbm_user.DisplayMember = "UserName";
            return list.Count;
        }
    }
}
