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
    public partial class ad_house_lx : Form
    {
        public ad_house_lx()
        {
            InitializeComponent();
        }

        private void ad_house_lx_Load(object sender, EventArgs e)
        {
            C1.Items.Add("是");
            C1.Items.Add("否");
            C2.Items.Add("是");
            C2.Items.Add("否");
            this.TopMost = true;
        }
        // textBox2.Text.Trim().Length == 0
        private void button1_Click(object sender, EventArgs e)
        {
            if (db.isNumber(textBox2.Text.Trim())==false || textBox2.Text.Trim().Length == 0 )
            { MessageBox.Show("價格信息錯誤!"); return; }
            if (textBox1.Text.Trim().Length == 0 || textBox3.Text.Trim().Length == 0 || C1.Text == "請選擇" || C2.Text == "請選擇")
            { MessageBox.Show("信息输入不完整!"); return; }

            try
            {
                string sql = "insert into lx(類型名,價格,電腦,空調,備注)values('" + textBox3.Text.Trim() + "'," + textBox2.Text.Trim() + ",'" + C1.Text + "','" + C2.Text + "','" + textBox1.Text.Trim() + "')";
                db.My_sql(sql);
                MessageBox.Show("成功!");
                //
              
                textBox1.Text = ""; textBox2.Text = "";


            }
            catch { MessageBox.Show("添加失敗!"); }


        
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
