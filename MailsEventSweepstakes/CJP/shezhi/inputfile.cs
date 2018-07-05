using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO;

namespace CJP.shezhi
{
    public partial class inputfile : Form
    {
        public inputfile()
        {
            InitializeComponent();

            this.dataGridView1.BackgroundColor = Color.White;
            this.dataGridView1.ColumnHeadersVisible = false;

            this.StartPosition = FormStartPosition.CenterParent;
            iningrid();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            OpenFileDialog opf = new OpenFileDialog();
            opf.Filter = "文本文件|*.txt;*.tsv|excel文件|*.xls";
            if (opf.ShowDialog() == DialogResult.OK)
            {
                comm_var.cjmd_file = opf.FileName;
                readfile();
            }
        }

        public void readfile()
        {
            //comm_var.md.Clear();
            DataTable dt = new DataTable();
            dt.Columns.Add("抽奖名单");
            FileStream fs = File.OpenRead(comm_var.cjmd_file);
            StreamReader sr = new StreamReader(fs,Encoding.GetEncoding("GB2312"));
            string tmp;
            while ((tmp=sr.ReadLine()) != null)
            {
                comm_var.md = comm_var.md + "^" + tmp;
                DataRow dr = dt.NewRow();
                dr["抽奖名单"] = tmp;
                dt.Rows.Add(dr);
                dataGridView1.DataSource = dt;
            }
        }

        public void iningrid()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("抽奖名单");
            if (!comm_var.md.Equals(""))
            {
                char[] sp = { '^' };
                string[] szmd = comm_var.md.Split(sp);
                for (int i = 0; i < szmd.Length; i++)
                {
                    DataRow dr = dt.NewRow();
                    dr["抽奖名单"] = szmd[i];
                    dt.Rows.Add(dr);
                    dataGridView1.DataSource = dt;
                }
            }
        }
    }
}
