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
    public partial class Del_user : Form
    {
        public Del_user()
        {
            InitializeComponent();
        }
        string sql;
        private void Del_user_Load(object sender, EventArgs e)
        {
            this.TopMost=true;
              sql = "select 用户名 from C_admin";

            DataTable dt = db.tables(sql);
           for(int i=0;i<dt.Rows.Count;i++)
         
            comboBox1.Items.Add(dt.Rows[i][0]);

           comboBox1.Text = "请选择";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (comboBox1.Text == login.C_user) { MessageBox.Show("不能删除现用用户"); return; }
            sql = "delete from C_admin where 用户名='"+comboBox1.Text+"'";
            db.My_sql(sql);
            comboBox1.Items.Clear();
            sql = "select 用户名 from C_admin";
            DataTable dt = db.tables(sql);
            for (int i = 0; i < dt.Rows.Count; i++)

                comboBox1.Items.Add(dt.Rows[i][0]);

            comboBox1.Text = "请选择";
        }
    }
}
