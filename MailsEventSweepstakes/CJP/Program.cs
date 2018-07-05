using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;
// 下载于www.51aspx.com
namespace CJP
{
    static class Program
    {
        /// <summary>
        /// 应用程序的主入口点。
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            if (int.Parse(System.DateTime.Now.ToString("yyyyMMdd")) - 20141218 < 60)
            {
                mainform m = new mainform();
                m.WindowState = FormWindowState.Maximized;
                m.MaximizeBox = false;
                m.MinimizeBox = false;
                m.ShowInTaskbar = false;
                m.ShowIcon = false;
                m.FormBorderStyle = FormBorderStyle.None;
                Application.Run(m);
            }
            else
            {
                MessageBox.Show("授权过期，请联系开发人员");
            }
        }
    }
}
