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
    public partial class frmLine : Form
    {
        public frmLine()
        {
            InitializeComponent();
        }

        OleDbConnection dbConn = null;

        /// <summary>
        /// 当窗口载入的时候连接数据库
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void Form2_Load(object sender, EventArgs e)
        {
            if ( dbConn == null )
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
                    MessageBox.Show("连接数据库失败!"+ee.ToString());
                    this.Close();
                }
            }
        }

        private void frmLine_FormClosing(object sender, FormClosingEventArgs e)
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
        private void frmLine_Paint(object sender, PaintEventArgs e)
        {
            Graphics g = e.Graphics;
            Point yStart = new Point(25,25);
            Point yEnd = new Point(25, 325);
            g.DrawLine(Pens.Black,yStart,yEnd);

            Point xStart = new Point(25, 325);
            Point xEnd = new Point(325, 325);
            g.DrawLine(Pens.Black, xStart, xEnd);
        }

        /// <summary>
        /// 绘制曲线函数
        /// </summary>
        /// <param name="sql">查询数据库语句</param>
        /// <param name="g">绘图类</param>
        /// <param name="pen">线条颜色</param>
        private void myDrawPoly(string sql, Graphics g,Pen pen)
        {
            OleDbCommand odCmd = new OleDbCommand();
            odCmd.CommandText = sql;
            odCmd.Connection = dbConn;
            OleDbDataReader odRd = odCmd.ExecuteReader();
            int[] week = new int[7];
            int i = 0;
            while (odRd.Read())
            {
                week[i++] = 300 - (int)odRd["goods_count"];
            }

            GraphicsPath gPath = new GraphicsPath(new Point[]{new Point(0,week[0]),
                                                              new Point(40,week[1]),
                                                              new Point(80,week[2]),
                                                              new Point(120,week[3]),
                                                              new Point(160,week[4]),
                                                              new Point(200,week[5]),
                                                              new Point(240,week[6])},
                                                  new byte[]{(byte)PathPointType.Start,
                                                             (byte)PathPointType.Line,
                                                             (byte)PathPointType.Line,
                                                             (byte)PathPointType.Line,
                                                             (byte)PathPointType.Line,
                                                             (byte)PathPointType.Line,
                                                             (byte)PathPointType.Line});
            g.DrawPath(pen, gPath);
            odRd.Close();
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {
            myDrawPoly("select goods_count from line where week_group = '1'", e.Graphics, Pens.Blue);

            myDrawPoly("select goods_count from line where week_group = '2'", e.Graphics, Pens.Red);
        }
    }
}
