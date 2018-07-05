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
    public partial class Ad_room : Form
    {
        public Ad_room()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }
        string sql; DataTable dt;
        private void Ad_room_Load(object sender, EventArgs e)
        {
            this.TopMost = true;
            sql = "select 類型名 from lx";
            dt = db.tables(sql);
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                C1.Items.Add(dt.Rows[i][0]);
            
            }
            C1.Text = "请选择";
            
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (C1.Text == "请选择") { MessageBox.Show("请选择房间类型"); return; }
            if (db.isNumber(textBox1.Text.Trim()) == true & textBox1.Text.Trim().Length > 0)
            {
                sql = "select * from room where 房号=" + textBox1.Text.Trim()+ "";
                if (db.tables(sql).Rows.Count>0) { MessageBox.Show("此房间已经存在!"); return; }
                string s="否";
                sql = "insert into room(房号,房间类型,入住)values(" + textBox1.Text + ",'" + C1.Text + "','"+s+"')";
                db.My_sql(sql);
                MessageBox.Show("添加成功!");
                textBox1.Text = ""; C1.Text = "请选择";
            }
            else
            { MessageBox.Show("出错"); }
        }
    }
}
