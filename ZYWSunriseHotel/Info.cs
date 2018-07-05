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
    public partial class Info : Form
    {
        public Info()
        {
            InitializeComponent();
        }
        DataTable dt, dts;
        string sql;
        private void Info_Load(object sender, EventArgs e)
        {
            treeView1.ExpandAll();//展开所有节点
            sql = "select * from houseing order by ID desc";
            dt = db.tables(sql);
            d1.DataSource = dt;
        }
        //下载于www.51aspx.com
        private void button1_Click(object sender, EventArgs e)
        {
            if (textBox1.Text.Trim().Length == 0)
            {

                sql = "select * from houseing order by ID desc";
                dt = db.tables(sql);
                d1.DataSource = dt;
            }
            else if (db.isNumber(textBox1.Text) == true)
            {
                sql = "select * from houseing where 房间号=" + textBox1.Text;
                dt = db.tables(sql);
                d1.DataSource = dt;
            }
            else
            {
                MessageBox.Show("请输入数字!");
                textBox1.Text = "";

            }
        }
        //下载于www.51aspx.com
        private void button2_Click(object sender, EventArgs e)
        {
          //  MessageBox.Show("genxina");
        }

        private void treeView1_AfterSelect(object sender, TreeViewEventArgs e)
        {
            switch (treeView1.SelectedNode.Text)
            {
                case "基本设置":
                    jiben jb = new jiben();
                    jb.ShowDialog();
                       break;
                case "退出":
                       DialogResult dr = MessageBox.Show("确定退出系统吗?", "退出", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning, MessageBoxDefaultButton.Button2);
                       if (dr == DialogResult.OK)
                       {
                           //
                           //在这里请处理相关事务，比如保存等
                           //
                           Application.Exit();
                       }
                      break;
                case "添加员工":
                    Ad_user Ad_user = new Ad_user();
                    Ad_user.Show();
                    break;
                case "删除员工":
                    Del_user Del_user = new Del_user();
                    Del_user.Show();
                  break;
                case "添加房间类型":
                    ad_house_lx lx = new ad_house_lx();
                    lx.Show();
                 break;
           case "删除房间类型":
                 Del_lx Del_lx = new Del_lx();
                 Del_lx.Show();
                    break;
                case "显示房间类型":
                    show_lx show_lx = new show_lx();
                    show_lx.ShowDialog();
                    break;
                case "添加客房":
                    Ad_room Ad_romm = new Ad_room();
                    Ad_romm.Show();
                    break;
                case "删除客房":
                    Del_room drm = new Del_room();
                    drm.Show();
                  break;
                case "显示客房":
                  Show_room sr = new Show_room();
                  sr.ShowDialog();
                    
                    break;
                case "新开房间":
                    ad_house adhs = new ad_house();
                    if (adhs.ShowDialog() == DialogResult.OK)
                        button2.PerformClick(); break;
                case "查看账目":
                    show_zan_mu zm = new show_zan_mu();
                    zm.Show();
                    break;



            }
        }
        //下载于www.51aspx.com
        private void button2_Click_1(object sender, EventArgs e)
        {
            //MessageBox.Show("更新數據成功!");
            sql = "select * from houseing order by ID desc";
          dt = db.tables(sql);
           d1.DataSource = dt;
        }
        string fan_hao, len_xin, ru_fan_time, tun_fan_time, xin_ming, sen_fen_zhen,jin_en; double Zao_jing_en;
        private void d1_CellClick(object sender, DataGridViewCellEventArgs e)
        { 
            try
            {
                fan_hao = dt.Rows[e.RowIndex][1].ToString();//房号
                jin_en = dt.Rows[e.RowIndex][9].ToString();//赚得金额
               Zao_jing_en = int.Parse(dt.Rows[e.RowIndex][4].ToString()) - int.Parse(dt.Rows[e.RowIndex][9].ToString());//找的余额
                len_xin = dt.Rows[e.RowIndex][2].ToString();//类型
                ru_fan_time=dt.Rows[e.RowIndex][3].ToString();//入房时间
                xin_ming=dt.Rows[e.RowIndex][6].ToString();//姓名
                sen_fen_zhen=dt.Rows[e.RowIndex][5].ToString();//身份证

            }
            catch { }

            
        }
        //下载于www.51aspx.com
        private void 开房ToolStripMenuItem_Click(object sender, EventArgs e)
      {
          ad_house adhs = new ad_house();
          if (adhs.ShowDialog() == DialogResult.OK)
              button2.PerformClick();
        }
        string isrz;
        private void button3_Click(object sender, EventArgs e)
        {
          
            try
            {
                if (fan_hao.Length == 0) { MessageBox.Show("请选择一点房间"); return; }
                //更新房间表的属性:(需要房间号 号来更新入住,改为否)
                isrz = "否";
                sql = "update room set 入住='" + isrz + "' where 房号=" + fan_hao + "";
                db.My_sql(sql);

                //添加帐目表(房间号,房间类型,入房时间,退房时间,金额,姓名,身份证)
                sql = "insert into Zan_mu(房间号,房间类型,入房时间,退房时间,金额,姓名,身份证)values(" + fan_hao + ",'" + len_xin + "','" + ru_fan_time + "','" + DateTime.Now.ToString() + "'," + jin_en + ",'" + xin_ming + "','" + sen_fen_zhen + "')";
                db.My_sql(sql);
                if (Zao_jing_en < 0)
                { MessageBox.Show("退房成功,但是客人欠了" + Zao_jing_en.ToString()+"元,请注意"); }
                else
                MessageBox.Show("退房成功!您需找他" + Zao_jing_en.ToString()+"元");




                //删除这个表(房间号)
                sql = "delete from houseing where 房间号=" + fan_hao + "";
                db.My_sql(sql);


                //更新这个表
                button2.PerformClick();


                fan_hao = "";//房号
                jin_en = "";//赚得金额
                Zao_jing_en =0;//找的余额
                len_xin = "";//类型
                ru_fan_time = ""; ;//入房时间
                xin_ming = "";//姓名
                sen_fen_zhen = "";//身份证



            }

            catch { MessageBox.Show("请选择一个房间"); }

        }
        //下载于www.51aspx.com
        private void 退房ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            button3.PerformClick();
        }

        private void 查看账目ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            show_zan_mu zm = new show_zan_mu();
            zm.Show();
        }
    }
    }
       
    

