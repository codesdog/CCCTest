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
    public partial class FrmMain : Form
    {
        function f = new function();
        public FrmMain()
        {
            InitializeComponent();
        }

        private void FrmMain_Load(object sender, EventArgs e)
        {
            FrmLlogin frmL = new FrmLlogin();
            if (frmL.ShowDialog() == DialogResult.OK)
            {
                this.Text += string.Format("欢迎－{0}光临！", Context.uname);
                slDate.Text += System.DateTime.Now.ToLongDateString();
                slTime.Text += System.DateTime.Now.ToLongTimeString();
                slUser.Text += Context.uname;
            }
            else
            {
                this.Close();
            }
            if (Context.uname == "51aspx")
            {
                this.用户管理ToolStripMenuItem.Visible = true;
            }
            else
            {
                this.用户管理ToolStripMenuItem.Visible = false;
            }
        }

        private void 帮助ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MessageBox.Show("作者：xxxxxx\n联系方式：xxxx@xx.com\n","帮助",MessageBoxButtons.OK,MessageBoxIcon.Information);
        }

        private void 添加商品ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmAdd frmap = new FrmAdd();
            f.AddChild(frmap, this.pParent);
            frmap.BringToFront();
        }

        private void 卖出商品ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmSale frmsp = new FrmSale();
            f.AddChild(frmsp, this.pParent);
            frmsp.BringToFront();
        }

        private void 库存统计ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmLS frmls = new FrmLS();
            f.AddChild(frmls, this.pParent);
            frmls.BringToFront();
        }

        private void 销量统计ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmSS frmss = new FrmSS();
            f.AddChild(frmss, this.pParent);
            frmss.BringToFront();
        }

        private void 用户管理ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmUM frmum = new FrmUM();
            f.AddChild(frmum, this.pParent);
            frmum.BringToFront();
        }

        private void 退出XToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //if (MessageBox.Show("确定要退出吗？", "提示", MessageBoxButtons.YesNo, MessageBoxIcon.Asterisk) == DialogResult.Yes)
            //{
                this.Close();
            //}
        }

        private void FrmMain_FormClosing(object sender, FormClosingEventArgs e)
        {
            
            if (Context.isC)//FrmLogin窗口是否打开
            {
                if (MessageBox.Show("确定要退出吗？", "提示", MessageBoxButtons.YesNo, MessageBoxIcon.Asterisk) == DialogResult.Yes)
                {
                    Application.ExitThread();//关闭所有窗口
                }
                else
                {
                    e.Cancel = true;
                }
            }
        }

        private void 修改密码toolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmUpPW frmupw = new FrmUpPW();
            frmupw.ShowDialog();
        }
    }
}
