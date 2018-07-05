using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace 东方日出大酒店
{
    public partial class Form_main : Form
    {
        public Form_main()
        {
            InitializeComponent();
        }

        private void Form_main_FormClosing(object sender, FormClosingEventArgs e)
        {
            Application.Exit();
        }
        private void Form_main_Load(object sender, EventArgs e)
        {  // treeView1.CollapseAll(); 折叠所有节点
            timer1.Enabled = true;
            timer1.Start();

            t1.Text = "操作员:" + login.C_user + "     |  ";

           Info info = new Info();
            info.MdiParent = this;
           info.WindowState = FormWindowState.Maximized;
                info.Show();
            string sql = "select * from jb";
            DataTable dt = db.tables(sql);
                if (dt.Rows[0][1].ToString() == "是")
                {
                    Welcome wel = new Welcome();
                    wel.Show();
                }
        }
        /// <summary>
        /// 检查MDI子窗体是否存在
        /// </summary>
        /// <param name="childFrmName"></param>
        /// <returns></returns>
        private bool IsChildFormExist(string childFrmName)//是窗体名,而不是被实例化之后的.
        {
            foreach (Form childFrm in this.MdiChildren)
            {
                if (childFrm.Name == childFrmName) //用子窗体的Name进行判断，如果存在则将他激活
                {
                    if (childFrm.WindowState == FormWindowState.Minimized)
                    {
                        childFrm.WindowState = FormWindowState.Normal;
                    }
                    childFrm.Activate();
                    return true;
                }
            }
            return false;
        }


        private void treeView1_AfterSelect(object sender, TreeViewEventArgs e)
        { //下载于www.51aspx.com
           
        }
        private void timer1_Tick(object sender, EventArgs e)
        {
            t2.Text = "当前时间是： " + DateTime.Now.ToShortDateString().ToString() +"  "+DateTime.Now.Hour.ToString() + ":" + DateTime.Now.Minute.ToString() + ":" + DateTime.Now.Second.ToString();
        }

        private void 基本设置ToolStripMenuItem_Click(object sender, EventArgs e)
        {
         
            jiben jiben = new jiben();
           if(jiben.ShowDialog()==DialogResult.OK)
            {
                MessageBox.Show("1");
            }
       
        }
        //下载于www.51aspx.com
        private void 退出ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void 重新啟動ToolStripMenuItem_Click(object sender, EventArgs e)
        {
           
            login lg = new login();
            lg.Show();
            this.Hide();
        }

        private void 新开房间ToolStripMenuItem_Click(object sender, EventArgs e)
        {ad_house adhs=new ad_house ();
        adhs.MdiParent = this;
        adhs.Show();
        }
    }
}
