using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace 东方日出大酒店
{
    public partial class ad_house : Form
    {
        public ad_house()
        {
            InitializeComponent();
        }
        
        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }
        string RZ; string jiage; string dia_nao, kon_tian;
        private void button1_Click(object sender, EventArgs e)
        {
            if (lx.Text.Trim() == "请选择" || fjh.Text.Trim() == "请选择" || xm.Text.Trim().Length == 0 || sfz.Text.Trim().Length == 0 || je.Text.Trim().Length == 0)
            { MessageBox.Show("输入信息不全!"); return; }

            if (db.isNumber(sfz.Text.Trim()) == false || db.isNumber(je.Text.Trim()) == false)
            { MessageBox.Show("金额和身份证必须是数字!"); return; }

            
            //假如验证正确
            RZ="是";
            sql = "update room set 入住='"+RZ+"' where 房号="+fjh.Text+"";
            db.My_sql(sql);

            if (textBox3.Text.Trim().Length == 0) { textBox3.Text = "无!"; }
            string RZ_NOW = DateTime.Now.ToString();
            sql = "insert into houseing(房间号,房间类型,开房时间,预缴金额,登记身份证,客人姓名,备注,电脑,空调,价格)values(" + fjh.Text.Trim() + ",'" + lx.Text.Trim() + "','" + RZ_NOW + "',"+je.Text.Trim()+",'"+sfz.Text.Trim()+"','"+xm.Text.Trim()+"','"+textBox3.Text.Trim()+"','"+textBox1.Text+"','"+textBox2.Text+"',"+textBox4.Text+")";
            db.My_sql(sql);
            
            
            
            
            this.DialogResult = DialogResult.OK;
        }

        string sql; DataTable dt;

        private void ad_house_Load(object sender, EventArgs e)
        {
            lx.Text = "请选择"; fjh.Text = "请选择";
            sql = "select * from lx";
            dt=db.tables(sql);
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                lx.Items.Add(dt.Rows[i][1]);
            
            }



        }

        private void lx_TextChanged(object sender, EventArgs e)
        {
            try
            {
                fjh.Items.Clear();
                string rz = "否";
                sql = "select 房号 from room where 房间类型='" + lx.Text.Trim() + "' and 入住='" + rz + "'";
                {
                    dt = db.tables(sql);
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        fjh.Items.Add(dt.Rows[i][0]);

                    }

                }
                sql = "select * from lx where 類型名='" + lx.Text.Trim() + "'";
                dt = db.tables(sql);
                textBox1.Text = dt.Rows[0][3].ToString();
                textBox2.Text=dt.Rows[0][3].ToString();
                textBox4.Text=dt.Rows[0][2].ToString();
            }
            catch { }


        }
    }
}
