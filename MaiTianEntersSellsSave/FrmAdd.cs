using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace HDManagementSoft
{
    public partial class FrmAdd : Form
    {
        public ComboBox cmb;//一定要用public
        function f = new function();
        public FrmAdd()
        {
            InitializeComponent();
        }

        private void monthCalendar1_DateSelected(object sender, DateRangeEventArgs e)
        {
            txtProBD.Text = monthCalendar1.SelectionStart.ToShortDateString();
            this.monthCalendar1.Visible = false;
        }

        private void btnCV_Click_1(object sender, EventArgs e)
        {
            this.monthCalendar1.Visible = true;
            this.monthCalendar1.BringToFront();
        }

        private void btnAC_Click(object sender, EventArgs e)
        {
            FrmAC frmac = new FrmAC(cmb);
            frmac.ShowDialog();
        }
        //窗口启动时绑定商品种类
        private void FrmAdd_Load(object sender, EventArgs e)
        {
            function f = new function();
            string sql = string.Format("select * from ProCategory");
            f.CmboxBind(sql, cmbProC, 1);
            string sqlstr = string.Format("select * from Products");
            f.DGVBind(sqlstr, dataGridView1);
            cmb = cmbProC;
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (this.txtProName.Text != string.Empty && this.txtProNum.Text != string.Empty && this.txtProBP.Text != string.Empty)
                {
                    //如果商品出售时间不为空
                    if (this.txtProBD.Text != "")
                    {
                        bool isDate;
                        string s = string.Empty;
                        if (txtProBD.Text.IndexOf('/', 0) > 0)
                        {
                            s = txtProBD.Text.Replace('/', '-');
                        }
                        else if (txtProBD.Text.IndexOf('.', 0) > 0)
                        {
                            s = txtProBD.Text.Replace('.', '-');
                        }
                        else
                        {
                            s = txtProBD.Text;
                        }
                        isDate = function.IsDate(s);
                        if (isDate==false)
                        {
                            MessageBox.Show("请输入正确的日期格式！", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        }
                    }
                    string sql = string.Format("insert into Products(ProName,ProBPrice,ProNumber,ProBDate,ProCategory,ProFactory) values('{0}','{1}','{2}','{3}','{4}','{5}')", this.txtProName.Text.Trim(), this.txtProBP.Text.Trim(), this.txtProNum.Text.Trim(), this.txtProBD.Text.Trim(), this.cmbProC.Text.Trim(), this.txtProF.Text.Trim());
                    int count = DBHelper.ExecuteCommand(sql);
                    if (count > 0)
                    {
                        string sqlstr = string.Format("select * from Products");
                        f.DGVBind(sqlstr, dataGridView1);
                        MessageBox.Show("添加成功！", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }  
                }                
                else
                {
                    MessageBox.Show("商品名称、数量、单价不能为空！", "醒告", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
