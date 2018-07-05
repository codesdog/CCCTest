using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
// 下载于www.51aspx.com
namespace CJP.about
{
    public partial class about : Form
    {
        public about()
        {
            InitializeComponent();
            //this.FormBorderStyle = FormBorderStyle.None;
            label1.Text = comm_var.about_string;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
        }
    }
}
