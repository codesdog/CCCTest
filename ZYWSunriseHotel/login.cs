using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.OleDb;

namespace 东方日出大酒店
{
    public partial class login : Form
    {
        public login()
        {
            InitializeComponent();
        }
        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();//关闭
        }
        //下载于www.51aspx.com
        string sql;
        public static string C_user, C_password;
        private void button1_Click(object sender, EventArgs e)
        {
            if (textBox1.Text.Trim().Length != 0 && textBox2.Text.Trim().Length != 0)
            {
                  sql = "select * from C_admin where 用户名='" + textBox1.Text.Trim() + "' and 密码='" + textBox2.Text.Trim() + "'";
                if (db.tables(sql).Rows.Count > 0)//登陆成功
                {
                    C_user = textBox1.Text.Trim();
                    C_password = textBox2.Text.Trim();
                      sql = "select * from jb";
                    DataTable dt = db.tables(sql);
                    Form_main Form_main = new Form_main();
                    if (dt.Rows[0][2].ToString() == "是")
                    {
                        Form_main.WindowState = FormWindowState.Maximized;
                    }
                    else
                    { Form_main.WindowState = FormWindowState.Normal; }  
                    Form_main.Show();
                    this.Hide();
                }
                else
                { MessageBox.Show("登陆失败！"); }
            }
            else
            { MessageBox.Show("信息不全！");}
        } //下载于www.51aspx.com

        private void Form1_Load(object sender, EventArgs e)
        {
           
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
