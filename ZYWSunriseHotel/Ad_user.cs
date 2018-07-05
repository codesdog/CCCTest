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
    public partial class Ad_user : Form
    {
        public Ad_user()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (textBox1.Text.Trim().Length != 0 & textBox2.Text.Trim().Length != 0)
            {
                string sql = "insert into C_admin(用户名,密码) values ('" + textBox1.Text.Trim() + "','" + textBox2.Text.Trim() + "')";
                db.My_sql(sql);
                MessageBox.Show("添加成功!");
                textBox1.Text = ""; textBox2.Text = "";
            }
            else
            { MessageBox.Show("输入信息不完全!"); }
        }
        private void Ad_user_Load(object sender, EventArgs e)
        {

            this.TopMost = true;
          
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
