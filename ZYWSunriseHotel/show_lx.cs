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
    public partial class show_lx : Form
    {
        public show_lx()
        {
            InitializeComponent();
        }

        private void show_lx_Load(object sender, EventArgs e)
        {string sql="select * from lx";
            d1.DataSource=db.tables(sql);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            DialogResult = DialogResult.OK;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            DialogResult = DialogResult.Cancel;
        }
    }
}
