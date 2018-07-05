using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.OleDb;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace DrawTables
{
    public partial class FrmMain : Form
    {
        public FrmMain()
        {
            InitializeComponent();
        }

        private void btn_Line_Click(object sender, EventArgs e)
        {
            frmLine drawLine = new frmLine();
            drawLine.ShowDialog();
            drawLine.Close();
        }

        private void btn_Cake_Click(object sender, EventArgs e)
        {
            FrmCake drawCake = new FrmCake();
            drawCake.ShowDialog();
            drawCake.Close();
        }

        private void btn_rect_Click(object sender, EventArgs e)
        {
            FrmRect drawRect = new FrmRect();
            drawRect.ShowDialog();
            drawRect.Close();
        }
    }
}
