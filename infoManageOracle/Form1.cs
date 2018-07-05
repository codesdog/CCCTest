using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Data.OracleClient;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using UpLoad;

namespace UpLoad
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        private void Form1_Load(object sender, EventArgs e)
        {
            //InfoData();
            this.toolStripStatusLabel2.Text = string.Format("当前时间：{0}", DateTime.Now);
        }

        private void dataGridView1_DoubleClick(object sender, EventArgs e)
        {
            string strsid=this.dataGridView1.CurrentRow.Cells["sid"].Value.ToString();
            Form2 detailform = new Form2();
            detailform.Sid = strsid;
            detailform.edit = true;
            detailform.Show();
        }

        /// <summary>
        /// 初始化数据
        /// </summary>
        private void InfoData()
        {
            DataTable table = new DataTable();

            table = DataMag.Search(null);
            this.dataGridView1.DataSource = table;
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void btnRefresh_Click(object sender, EventArgs e)
        {
            InfoData();
        }

        private void btnNewData_Click(object sender, EventArgs e)
        {
            Form2 form = new Form2();
            form.edit = false;
            form.Show();
        }

        private void 文件ToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void 退出ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void 添加数据ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Form2 form = new Form2();
            form.edit = false;
            form.Show();
        }

        private void 关于系统ToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            Abzy form = new Abzy();
            form.Show();
        }

        private void 关于系统ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Form3 f3 = new Form3();
            f3.Show();
        }

        private void 加载数据ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            InfoData();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            this.toolStripStatusLabel2.Text = string.Format("当前时间：{0}", DateTime.Now);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Form3 f3 = new Form3();
            f3.Show();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            testData();
        }
        private void testData() {
            //获取数据库连接串
            string temConStr = DataMag.GetConn();
           
            using (OracleConnection OracleCon = new OracleConnection(temConStr))
            {
                try
                {
                    OracleCon.Open();
                    MessageBox.Show("连接成功");
                }
                catch (Exception ex)
                {

                    MessageBox.Show("连接失败：" + ex.Message);
                }
                finally
                {
                    OracleCon.Close();
                }
            }
            //OracleConnection OracleCon = new OracleConnection(temConStr);
            // OracleCon.Open();
        }

        private void 测试链接ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            testData();
        }

    }
}
