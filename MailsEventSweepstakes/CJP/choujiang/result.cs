using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace CJP.choujiang
{
    public partial class result : Form
    {
        public result()
        {
            InitializeComponent();
            this.Text = "结果";
            this.StartPosition = FormStartPosition.CenterParent;
            string sql = string.Format("select * from t_mx order by intime");
            DataTable dt = new DataTable();
            dt = DB.DbHelperOleDb.Query(sql).Tables["ds"];
            dataGridView1.DataSource = dt;
        }
    }
}
