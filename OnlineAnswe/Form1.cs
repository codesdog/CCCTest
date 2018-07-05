using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Data.OleDb;　
namespace 智力问答游戏
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        private string[] ti_mu;   //存放题目
        private string[,] Item;    //存放A、B、C、D四个选择项
        private char[] Answer;     //存放题库题目答案
        private char[] MyAnswer;   //存放测试者的答案
        private int s;                //题号
        private int Total;           //题目总数
        private int N;
        private Sunisoft.IrisSkin.SkinEngine skin = new Sunisoft.IrisSkin.SkinEngine();

        private void Form1_Load(object sender, EventArgs e)
        {
            GetSkin("0.ssk");     //换肤,0.ssk是皮肤文件
            string Connstr;       //连接数据库字符串
            //Connstr = @"provider=Microsoft.Jet.OLEDB.4.0; Data Source=test.mdb;";
            Connstr = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=test.accdb";
            OleDbConnection con = new OleDbConnection(Connstr);
            con.Open();
            string sqlstr = "select count(*) from single_choice";
            OleDbCommand cmd = new OleDbCommand(sqlstr, con);
            //this.Text = Convert.ToString(cmd.ExecuteScalar());
            Total = (int)cmd.ExecuteScalar();//获取题目总数

            sqlstr = "select * from single_choice";
            cmd = new OleDbCommand(sqlstr, con);
            OleDbDataReader dr = cmd.ExecuteReader();
            N=Total+1;
            ti_mu = new string[N];
            Item = new string[N, 5];
            Answer = new char[N];
            MyAnswer = new char[N];
            s = 1;
            while (dr.Read())  //读取试题库
            {
                //题目列的下标0，选项列的下标1-4，答案列的下标5
                ti_mu[s] =s.ToString()+"."+ Convert.ToString(dr[0]);//读取题目列的值
                Item[s, 1] = "A." + Convert.ToString(dr[1]);//读取选项A的值
                Item[s, 2] = "B." + Convert.ToString(dr[2]);//读取选项B的值
                Item[s, 3] = "C." + Convert.ToString(dr[3]);//读取选项C的值
                Item[s, 4] = "D." + Convert.ToString(dr[4]);//读取选项D的值
                Answer[s] = Convert.ToChar(dr[5]);//读取答案列的值
                s++;
            }
            dr.Close();
            con.Close();
            s = 1;
            chu_ti();
            btnFirst.Enabled = false ;
            btnPre.Enabled = false ;
        }

        private void chu_ti()
        {
            label1.Text = ti_mu[s];         //显示题目
            radioButton1.Text = Item[s, 1]; //以下显示４个选项
            radioButton2.Text = Item[s, 2];
            radioButton3.Text = Item[s, 3];
            radioButton4.Text = Item[s, 4];
            if (MyAnswer[s] == 0)
                radioButton5.Checked = true;//  选中radioButton5按钮
            else
            {
                if (MyAnswer[s] == 'A')
                    radioButton1.Checked = true;//选中radioButton1按钮
                if (MyAnswer[s] == 'B')
                    radioButton2.Checked = true;//选中radioButton2按钮
                if (MyAnswer[s] == 'C')
                    radioButton3.Checked = true;//选中radioButton3按钮
                if (MyAnswer[s] == 'D')
                    radioButton4.Checked = true;//选中radioButton4按钮
            }
        }
        private void show_Answer()
        {
            String[] subItem;                  
            subItem = new string[3];
            subItem[0] = s.ToString() ;            //题号
            subItem[1] = Answer[s].ToString();     //正确答案
            subItem[2] = MyAnswer[s].ToString();   //用户答案
            ListViewItem item = listView1.FindItemWithText(subItem[0]);
            if (item == null)                     //如果此题未加入 
            listView1.Items.Add(new ListViewItem(subItem)); 
        }
        private void btnScore_Click(object sender, System.EventArgs e)//统计成绩按钮
        {
            int score=0;
            for(int i=1;i<=Total;i++)
            {                
              if (Answer[i] == MyAnswer[i])
                  score++;
            }
            score=score*100/Total;
            MessageBox.Show("恭喜,完成答题，您的最后得分是："+ score.ToString(), "您的成绩", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }
        private void btnNext_Click(object sender, System.EventArgs e)//“下一题”按钮
        {
            show_Answer();
            s = s + 1;
            if (s == Total) 
            { btnNext.Enabled = false; btnEnd.Enabled = false; }
            chu_ti();
            btnFirst.Enabled = true;
            btnPre.Enabled = true;
        }
        private void btnEnd_Click(object sender, EventArgs e)//“最后一题”按钮
        {
            s = Total ;
            chu_ti();
            btnFirst.Enabled = true;
            btnPre.Enabled = true;
            btnEnd.Enabled = false;
            btnNext.Enabled = false;
     
        }
        private void btnFirst_Click(object sender, EventArgs e)//“第一题”按钮
        {
            s = 1;
            chu_ti();
            btnNext.Enabled = true;
            btnEnd.Enabled = true;
            btnFirst.Enabled = false;
            btnPre.Enabled = false ;
        }
        private void btnPre_Click(object sender, EventArgs e)//“上一题”按钮
        {
            s = s - 1;
            if (s == 1)
            { btnPre.Enabled = false; btnFirst.Enabled = false; }
            chu_ti();
            btnNext.Enabled = true;
            btnEnd.Enabled = true;
        }
        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton1.Checked)//选中A
                MyAnswer[s]='A';
        }

        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton2.Checked)//选中B
                MyAnswer[s] = 'B';
        }

        private void radioButton3_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton3.Checked)//选中C
                MyAnswer[s] = 'C';
        }

        private void radioButton4_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton4.Checked)//选中D
                MyAnswer[s] = 'D';
        }

        private void GetSkin(string skinName)
        {
            skin.SkinFile = Application.StartupPath + @"\skin\"+skinName;// @"\skin\0.ssk"; //0.ssk是皮肤文件 
            skin.Active = true;
            skin.SkinAllForm = true;
        }
        /// <summary>
        /// 皮肤
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ToolStripMenuItem tsmi = (ToolStripMenuItem)sender;
            int index = Convert.ToInt32(tsmi.Tag);

            string skinname = "";

            switch (index)
            {
                case 0:
                    skinname = "0.ssk";
                    break;
                case 1:
                    skinname = "1.ssk";
                    break;
                case 2:
                    skinname = "2.ssk";
                    break;
                case 3:
                    skinname = "3.ssk";
                    break;
                case 4:
                    skinname = "4.ssk";
                    break;
                case 5:
                    skinname = "5.ssk";
                    break;
                case 6:
                    skinname = "6.ssk";
                    break;
                case 7:
                    skinname = "7.ssk";
                    break;
                case 8:
                    skinname = "8.ssk";
                    break;
                case 9:
                    skinname = "9.ssk";
                    break;
                default:
                    skinname = "";
                    break;
            }
            GetSkin(skinname);
        }
    }
}