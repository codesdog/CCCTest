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
    public partial class Del_lx : Form
    {
        public Del_lx()
        {
            InitializeComponent();
        }
        string sql;
        private void Del_lx_Load(object sender, EventArgs e)
        {
            this.TopMost = true;
            sql = "select 類型名 from lx";
            DataTable dt=db.tables(sql);
            for (int i = 0; i < dt.Rows.Count; i++)
            { CB1.Items.Add(dt.Rows[i][0]); }
            CB1.Text = "请选择";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            sql = "delete from lx where 類型名='"+CB1.Text+"'";
            db.My_sql(sql);
            //更新
            CB1.Text = "请选择";
            CB1.Items.Clear();
            sql = "select 類型名 from lx";
            DataTable dt = db.tables(sql);
            for (int i = 0; i < dt.Rows.Count; i++)
            { CB1.Items.Add(dt.Rows[i][0]); }
        }

    }
}
