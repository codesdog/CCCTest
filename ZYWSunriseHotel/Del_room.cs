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
    public partial class Del_room : Form
    {
        public Del_room()
        {
            InitializeComponent();
        }

        private void Del_room_Load(object sender, EventArgs e)
        {
            this.TopMost = true;

        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (textBox1.Text.Trim().Length == 0) { MessageBox.Show("请输入一个数字"); return; }
            if (db.isNumber(textBox1.Text.Trim()) == false) { MessageBox.Show("请输入一个数字!"); return; }
            string sql = "delete * from room where 房号="+textBox1.Text.Trim()+"";
            db.My_sql(sql);
            MessageBox.Show("删除成功!");
            textBox1.Text = "";
        }
    }
}
