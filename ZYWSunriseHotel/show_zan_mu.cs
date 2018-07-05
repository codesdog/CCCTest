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
    public partial class show_zan_mu : Form
    {
        public show_zan_mu()
        {
            InitializeComponent();
        }

        private void show_zan_mu_Load(object sender, EventArgs e)
        {
            d1.DataSource = db.tables("select * from Zan_mu order by ID desc");
        }
    }
}
