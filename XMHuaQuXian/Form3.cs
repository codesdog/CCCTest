using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.OleDb;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace DrawTables
{
    public partial class FrmCake : Form
    {
        public FrmCake()
        {
            InitializeComponent();
        }

        OleDbConnection dbConn = null;

        /// <summary>
        /// 当窗口载入的时候连接数据库
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void FrmCake_Load(object sender, EventArgs e)
        {
            if (dbConn == null)
            {
                dbConn = new OleDbConnection();
                //动态获取数据库物理路径, 不转义斜杠
                dbConn.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0; Data Source=" + Application.StartupPath + @"\forDraw.accdb";
            }
            if (dbConn.State == ConnectionState.Closed)
            {
                try
                {
                    dbConn.Open();
                }
                catch (Exception ee)
                {
                    MessageBox.Show("连接数据库失败!" + ee.ToString());
                    this.Close();
                }
            }
        }

        private void FrmCake_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (dbConn.State == ConnectionState.Open)
            {
                dbConn.Close();
                dbConn = null;
            }
        }

        /// <summary>
        /// 绘制圆饼图函数
        /// </summary>
        /// <param name="sql">数据库查询语句</param>
        /// <param name="rt">要绘制圆饼的外接矩形</param>
        /// <param name="g">绘图类</param>
        private void myFillPie(string sql, Rectangle rt, Graphics g)
        {
            OleDbCommand odCmd = new OleDbCommand();
            odCmd.CommandText = sql;
            odCmd.Connection = dbConn;
            OleDbDataReader odRd = odCmd.ExecuteReader();
            float[] question = new float[3];
            int i = 0;
            while (odRd.Read())
            {
                question[i++] = (int)odRd["agree"];
                question[i++] = (int)odRd["opposition"];
                question[i++] = (int)odRd["neutral"];
            }
            g.FillPie(Brushes.Blue, rt, 0f, question[0] * 360 / 100);
            g.FillPie(Brushes.Red, rt, question[0] * 360 / 100, question[1] * 360 / 100);
            g.FillPie(Brushes.Pink, rt, question[1] * 360 / 100 + question[0] * 360 / 100, question[2] * 360 / 100);
            odRd.Close();
        }

        private void FrmCake_Paint(object sender, PaintEventArgs e)
        {
            myFillPie("select * from cake where question = '1'", new Rectangle(20, 20, 200, 200), e.Graphics);

            myFillPie("select * from cake where question = '2'", new Rectangle(280, 20, 200, 200), e.Graphics);
        }
    }
}
