using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.OleDb;

namespace 东方日出大酒店
{
    public partial class jiben : Form
    {
        public jiben()
        {
            InitializeComponent();
        }
        DataTable dt; string sql;
        string isCheck1, isCheck2;
        private void button2_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }
        //下载于www.51aspx.com
        private void button1_Click(object sender, EventArgs e)
            
        {
            if (CB1.Checked == true)
           isCheck1 = "是"; 
            else
                isCheck1 = "否";

            if (CB2.Checked == true)
                isCheck2 = "是";
            else
                isCheck2 = "否";
            sql = "Update jb set 显示欢迎='"+isCheck1+"',窗体最大化='"+isCheck2+"'";
            db.My_sql(sql);
            MessageBox.Show("修改成功,重啟後生效!");
            this.DialogResult = DialogResult.OK;
        }
        //下载于www.51aspx.com
        private void jiben_Load(object sender, EventArgs e)
        {
          
            sql = "select * from jb";
            dt = db.tables(sql);
            if (dt.Rows[0][1].ToString() == "是")
            { CB1.Checked = true; }
            else
                CB1.Checked =false;
            if (dt.Rows[0][2].ToString() == "是")
            { CB2.Checked = true; }
            else
                CB2.Checked = false;
            
        }
    }
}
