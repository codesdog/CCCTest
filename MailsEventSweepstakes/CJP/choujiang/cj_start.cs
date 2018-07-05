using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

using System.IO;

namespace CJP.choujiang
{
    public partial class cj_start : Form
    {
        public cj_start()
        {
            InitializeComponent();
            this.Text = "开始抽奖活动";
            this.StartPosition = FormStartPosition.CenterParent;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            //创建文件夹
            if (textBox1.Text.Trim() != "")
            {
                try
                {
                    comm_var.resultpathcurdir = comm_var.resultpathdir + @"\" + textBox1.Text.Trim();
                    if (!System.IO.Directory.Exists(comm_var.resultpathcurdir))
                        System.IO.Directory.CreateDirectory(comm_var.resultpathcurdir);
                    comm_var.hdname = textBox1.Text.Trim();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.ToString());
                }
                this.DialogResult = DialogResult.OK;
                this.Close();
            }
            else
                MessageBox.Show("请输入抽奖名称");
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton1.Checked)
            {
                comm_var.cjtype = 1;
            }
        }

        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton2.Checked)
            {
                comm_var.cjtype = 2;
            }
        }
    }
}
