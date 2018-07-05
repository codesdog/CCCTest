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
    public partial class FrmSale : Form
    {
        function f = new function();
        public FrmSale()
        {
            InitializeComponent();
        }

        private void btnMC_Click(object sender, EventArgs e)
        {
            this.monthCalendar1.Visible = true;
            this.monthCalendar1.BringToFront();
        }

        private void monthCalendar1_DateSelected(object sender, DateRangeEventArgs e)
        {
            this.txtProSD.Text = this.monthCalendar1.SelectionStart.ToShortDateString();
            this.monthCalendar1.Visible = false;
        }

        private void FrmSale_Load(object sender, EventArgs e)
        {
            string sql = string.Format("select ProSale.ProName,ProNumber,ProSNumber,ProSPrice,ProCategory,ProSDate from ProSale,Products where ProSale.ProNo=Products.ID");
            f.DGVBind(sql, dataGridView1);
            sql = string.Format("select * from Products");
            f.CmboxBind(sql, this.cmbProName, 1);
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (this.txtSNum.Text != string.Empty && this.txtSPrice.Text != string.Empty)
                {
                    //如果商品出售时间不为空
                    if (this.txtProSD.Text != "")
                    {
                        bool isDate;
                        string s = string.Empty;
                        if (txtProSD.Text.IndexOf('/', 0) > 0)
                        {
                            s = txtProSD.Text.Replace('/', '-');
                        }
                        else if (txtProSD.Text.IndexOf('.', 0) > 0)
                        {
                            s = txtProSD.Text.Replace('.', '-');
                        }
                        else
                        {
                            s = txtProSD.Text;
                        }
                        isDate = function.IsDate(s);
                        if (isDate==false)
                        {
                            MessageBox.Show("请输入正确的日期格式！", "提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        }
                    }
                    int count = 0;
                    string sqlstr;
                    //读取出来商品的库存
                    sqlstr = string.Format("select ProNumber,ProBPrice from Products where ID={0}", this.cmbProName.SelectedValue);
                    count = Convert.ToInt32(DBHelper.GetScalar(sqlstr));
                    if (count >= Convert.ToInt32(this.txtSNum.Text.Trim()))
                    {
                        //更新Products表，当售出商品后库存要更新
                        sqlstr = string.Format("update Products set ProNumber={0} where ID={1}", count - Convert.ToInt32(this.txtSNum.Text.Trim()), this.cmbProName.SelectedValue);
                        count = DBHelper.ExecuteCommand(sqlstr);
                        //插入数据
                        string sql = string.Format("insert into ProSale(ProName,ProSNumber,ProSPrice,ProSDate,ProNo) values('{0}','{1}','{2}','{3}',{4})", this.cmbProName.Text.Trim(), this.txtSNum.Text.Trim(), this.txtSPrice.Text.Trim(), this.txtProSD.Text.Trim(), this.cmbProName.SelectedValue);
                        count = DBHelper.ExecuteCommand(sql);
                        //重新绑定DataGridView
                        if (count >= 0)
                        {
                            sqlstr = string.Format("select ProSale.ProName,ProNumber,ProSNumber,ProSPrice,ProCategory,ProSDate from ProSale,Products where ProSale.ProNo=Products.ID");
                            f.DGVBind(sqlstr, dataGridView1);
                            MessageBox.Show("添加成功！", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                    }
                    else
                    {
                        MessageBox.Show("库存不足！", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                }
                else
                {
                    MessageBox.Show("商品数量、售价不能为空！", "醒告", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
