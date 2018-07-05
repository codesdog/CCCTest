using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace CJP.shezhi
{
    public partial class jiangxiang : Form
    {
        public jiangxiang()
        {
            InitializeComponent();
            this.Text = "设置奖项";
            dataGridView1.BackgroundColor = Color.White;
            this.StartPosition = FormStartPosition.CenterParent;
            //inindata();
            inindatanew();
        }
        public void inindatanew()
        {
            string sql = string.Format("select * from t_jx");
            dataGridView1.DataSource = DB.DbHelperOleDb.Query(sql).Tables["ds"];
        }


        public void inindata()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("活动名称");
            dt.Columns.Add("人数");
            dt.Columns.Add("奖品");
            char[] sp1 = { '|' };
            string[] line = comm_var.jiangxx.Split(sp1);
            char[] sp2 = { '^' };
            for (int i = 0; i < line.Length; i++)
            {
                string[] cols = line[i].Split(sp2);
                DataRow dr = dt.NewRow();
                dr["活动名称"]=cols[0];
                dr["人数"]=cols[1];
                dr["奖品"]=cols[2];
                dt.Rows.Add(dr);
            }
            dataGridView1.DataSource = dt;

        }

        private void button1_Click(object sender, EventArgs e)
        {
            /*
            comm_var.jiangxx = "";
            for (int i = 0; i < dataGridView1.Rows.Count-1; i++)
            {
                string jx = dataGridView1.Rows[i].Cells[0].Value.ToString();
                string sl = dataGridView1.Rows[i].Cells[1].Value.ToString();
                string jp = dataGridView1.Rows[i].Cells[2].Value.ToString();
                comm_var.jiangxx =comm_var.jiangxx + jx + "^" + sl + "^" + jp;
                if (i < dataGridView1.Rows.Count - 2)
                {
                    comm_var.jiangxx = comm_var.jiangxx + "|";
                    comm_var.currentjx = jx;
                    comm_var.curjxshuliang = int.Parse(sl);
                    comm_var.curjxneirong = jp;
                }
            }*/
            string sql = "delete from t_jx";
            DB.DbHelperOleDb.ExecuteSql(sql);

            comm_var.jiangxx = "";
            for (int i = 0; i < dataGridView1.Rows.Count - 1; i++)
            {
                string jx = dataGridView1.Rows[i].Cells[0].Value.ToString();
                string sl = dataGridView1.Rows[i].Cells[1].Value.ToString();
                string jp = dataGridView1.Rows[i].Cells[2].Value.ToString();
                comm_var.jiangxx = comm_var.jiangxx + jx + "^" + sl + "^" + jp;
                sql = string.Format("insert into t_jx(jx,shuliang,jiangpin) values('{0}',{1},'{2}')", jx, sl, jp);
                DB.DbHelperOleDb.ExecuteSql(sql);
                if (i < dataGridView1.Rows.Count - 2)
                {
                    comm_var.jiangxx = comm_var.jiangxx + "|";
                    comm_var.currentjx = jx;
                    comm_var.curjxshuliang = int.Parse(sl);
                    comm_var.curjxneirong = jp;
                }
            }
            inindatanew();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            try
            {
                dataGridView1.Rows.RemoveAt(dataGridView1.CurrentCell.RowIndex);
                MessageBox.Show("请点击【更新】按钮提交");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }
    }
}
