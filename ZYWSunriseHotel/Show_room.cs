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
    public partial class Show_room : Form
    {
        public Show_room()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
        }
        string sql;
        private void Show_room_Load(object sender, EventArgs e)
        {
            sql = "select * from room";
            d1.DataSource = db.tables(sql);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (textBox1.Text.Trim().Length == 0)
            {
                sql = "select * from room";
                d1.DataSource = db.tables(sql); return;
            }
            if (db.isNumber(textBox1.Text.Trim()) == false)
            { MessageBox.Show("请输入一个数字!"); return; }
            sql = "select * from room where 房号="+textBox1.Text.Trim()+"";
            d1.DataSource = db.tables(sql);
           

        }
    }
}
