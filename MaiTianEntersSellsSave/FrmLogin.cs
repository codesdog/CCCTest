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
    public partial class FrmLlogin : Form
    {
        public string sql = string.Empty;
        public FrmLlogin()
        {
            InitializeComponent();
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("确定要退出吗？", "提示！", MessageBoxButtons.YesNo, MessageBoxIcon.Warning) == DialogResult.Yes)
            {
                this.Close();
                Context.isC = false;
            }
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                if (this.cmbUName.Text.Trim() != string.Empty && this.txtPassword.Text.Trim() != string.Empty)
                {

                    string name = null;
                    string pw = null;
                    name = this.cmbUName.Text.Trim();
                    pw = this.txtPassword.Text;
                    sql = string.Format("select * from [User] where UName='{0}' and UPassword='{1}'", name, pw);
                    //在access中user为保留字所以要括上，=号后面的是text所以要引上，我类个去，access真麻烦
                    int count = DBHelper.GetScalar(sql);
                    if (count > 0)
                    {
                        Context.uname = this.cmbUName.Text;
                        Context.isC = true;
                        Context.uid = Convert.ToInt32(cmbUName.SelectedValue);
                        this.DialogResult = DialogResult.OK;
                        this.Close();
                    }
                    else
                    {
                        MessageBox.Show("用户名或密码错误！","警告",MessageBoxButtons.OK,MessageBoxIcon.Warning);
                    }
                }
                else
                {
                    MessageBox.Show("用户名和密码不能为空！", "警告", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        //窗口启动时绑定combobox用来显示用户名
        private void FrmLlogin_Load(object sender, EventArgs e)
        {
            function f = new function();
            sql=string.Format("select * from [User]");
            f.CmboxBind(sql, this.cmbUName, 1);
            cmbUName.SelectedIndex = -1;
        }
    }
}
