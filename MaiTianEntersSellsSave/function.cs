using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data;
using System.Text.RegularExpressions;

namespace HDManagementSoft
{
    class function
    {
        /// <summary>
        /// Panel面板中添加WinForm方法
        /// </summary>
        /// <param name="frm"></param>
        /// <param name="p"></param>
        public void AddChild(Form frm, Panel p)
        {
            frm.TopLevel = false;
            frm.Dock = DockStyle.Fill;
            frm.FormBorderStyle = FormBorderStyle.None;
            p.Controls.Add(frm);
            frm.Show();
        }
        /// <summary>
        /// 绑定combobox方法
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="cmbbox"></param>
        /// <param name="i"></param>
        public void CmboxBind(string sql,ComboBox cmbbox,int i)
        {
            DataTable dt = new DataTable();
            dt = DBHelper.GetDataSet(sql);
            cmbbox.DataSource = dt;
            cmbbox.DisplayMember = dt.Columns[i].ToString();
            cmbbox.ValueMember=dt.Columns[0].ToString();
        }
        /// <summary>
        /// 绑定DataGridView方法
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="dgv"></param>
        public void DGVBind(string sql,DataGridView dgv)
        {
            DataTable dt = new DataTable();
            dt = DBHelper.GetDataSet(sql);
            dgv.AutoGenerateColumns = false;//只显示绑定列，自创列不显示
            dgv.RowHeadersVisible = false;//去掉最前面的
            dgv.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;//列自动填满控件
            dgv.ColumnHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
            dgv.DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
            dgv.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            dgv.MultiSelect = false;
            dgv.DataSource = dt;
        }
        /// <summary>
        /// 是否为日期型字符串
        /// </summary>
        /// <param name="StrSource">日期字符串(2008-05-08)</param>
        /// <returns></returns>
        public static bool IsDate(string StrSource)
        {
            return Regex.IsMatch(StrSource, @"^((((1[6-9]|[2-9]\d)\d{2})-(0?[13578]|1[02])-(0?[1-9]|[12]\d|3[01]))|(((1[6-9]|[2-9]\d)\d{2})-(0?[13456789]|1[012])-(0?[1-9]|[12]\d|30))|(((1[6-9]|[2-9]\d)\d{2})-0?2-(0?[1-9]|1\d|2[0-9]))|(((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))-0?2-29-))$");
        }

        /// <summary>
        /// 是否为时间型字符串
        /// </summary>
        /// <param name="source">时间字符串(15:00:00)</param>
        /// <returns></returns>
        public static bool IsTime(string StrSource)
        {
            return Regex.IsMatch(StrSource, @"^((20|21|22|23|[0-1]?\d):[0-5]?\d:[0-5]?\d)$");
        }

        /// <summary>
        /// 是否为日期+时间型字符串
        /// </summary>
        /// <param name="source"></param>
        /// <returns></returns>
        public static bool IsDateTime(string StrSource)
        {
            return Regex.IsMatch(StrSource, @"^(((((1[6-9]|[2-9]\d)\d{2})-(0?[13578]|1[02])-(0?[1-9]|[12]\d|3[01]))|(((1[6-9]|[2-9]\d)\d{2})-(0?[13456789]|1[012])-(0?[1-9]|[12]\d|30))|(((1[6-9]|[2-9]\d)\d{2})-0?2-(0?[1-9]|1\d|2[0-8]))|(((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))-0?2-29-)) (20|21|22|23|[0-1]?\d):[0-5]?\d:[0-5]?\d)$ ");
        }
        /// <summary>
        /// 是否为手机格式
        /// </summary>
        /// <param name="StrSource"></param>
        /// <returns></returns>
        public static bool IsPhone(string StrSource)
        {
            return Regex.IsMatch(StrSource, @"^(13|15|18)\d{9}$");
        }
        /// <summary>
        /// 求某一列内容的合
        /// </summary>
        /// <param name="dgv"></param>
        /// <param name="n"></param>
        /// <returns></returns>
        public double CellSum(DataGridView dgv,int n)
        {
            DataGridViewRow row;
            double cellsum=0;
            for (int i = 0; i < dgv.Rows.Count; i++)
            {
                row = dgv.Rows[i];
                double celstext = Convert.ToDouble(row.Cells[n].Value);
                cellsum += celstext;
            }
            return cellsum;
        }
    }
}
