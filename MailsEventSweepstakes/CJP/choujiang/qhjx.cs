using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

using System.Data.OleDb;

namespace CJP.choujiang
{
    public partial class qhjx : Form
    {
        public qhjx()
        {
            InitializeComponent();
            this.Text = "请选择奖项";
            inindata();
        }

        public void inindata()
        {
            string sql = string.Format("select * from t_jx");
            OleDbDataReader odr = DB.DbHelperOleDb.ExecuteReader(sql);
            int i = 0;
            while (odr.Read())
            {
                comboBox1.Items.Insert(i, odr["jx"].ToString() + '^' + odr["shuliang"].ToString() + '^' + odr["jiangpin"].ToString());
                i++;
            }
            //comboBox1.SelectedIndex = i-1;
            //setcom();
        }
        public void setcom()
        {
            char[] sp = { '^' };
            string[] c_v = comboBox1.SelectedItem.ToString().Split(sp);
            if (!comm_var.overjx.Contains(c_v[0]))
            {
                comm_var.curcjsl = 0;
                comm_var.currentjx = c_v[0];
                comm_var.curjxshuliang = int.Parse(c_v[1]);
                comm_var.curjxneirong = c_v[2];
            }
            else
            {
                MessageBox.Show("该奖项已经抽取完毕,请更改奖项");
            }
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            setcom();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
            this.Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
