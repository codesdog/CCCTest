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
    public partial class FrmRect : Form
    {
        public FrmRect()
        {
            InitializeComponent();
        }

        OleDbConnection dbConn = null;

        /// <summary>
        /// 当窗口载入的时候连接数据库
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void FrmRect_Load(object sender, EventArgs e)
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

        private void FrmRect_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (dbConn.State == ConnectionState.Open)
            {
                dbConn.Close();
                dbConn = null;
            }
        }

        /// <summary>
        /// 绘制X、Y轴
        /// </summary>
        /// <param name="sender">绘制容器</param>
        /// <param name="e">绘图类</param>
        private void FrmRect_Paint(object sender, PaintEventArgs e)
        {
            Graphics g = e.Graphics;
            Point yStart = new Point(25, 25);
            Point yEnd = new Point(25, 325);
            g.DrawLine(Pens.Black, yStart, yEnd);

            Point xStart = new Point(25, 325);
            Point xEnd = new Point(325, 325);
            g.DrawLine(Pens.Black, xStart, xEnd);
        }

        /// <summary>
        /// 绘制直方图函数
        /// </summary>
        /// <param name="sender">绘制容器</param>
        /// <param name="e">绘图类</param>
        private void panel1_Paint(object sender, PaintEventArgs e)
        {
            OleDbCommand odCmd = new OleDbCommand();
            odCmd.CommandText = "select gross from rectangle";
            odCmd.Connection = dbConn;
            OleDbDataReader odRd = odCmd.ExecuteReader();
            int[] years = new int[7];
            int i = 0;
            while (odRd.Read())
            {
                years[i++] = 300 - (int)odRd["gross"];
            }

            i = 0;
            int rectHeight = 10;
            for (int j = 0; j < 7; i++, j++)
            {
                e.Graphics.FillRectangle(Brushes.Blue, new Rectangle(rectHeight, years[i], 20, 300 - years[i]));
                rectHeight += 40;
            }

            odRd.Close();
        }
    }
}
