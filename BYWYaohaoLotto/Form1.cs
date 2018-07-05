using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.OleDb;
using System.IO;

namespace 抽奖
{
    public partial class Form1 : Form
    {
        private int count = 0;

        private int count2 = 0;

        #region 中奖数量计数

        //幸运奖计数1
        private int award5Count = 0;

        //幸运奖计数2
        private int award4Count = 0;

        //三等奖计数
        private int award3Count = 0;

        //二等奖计数
        private int award2Count = 0;

        //一等奖计数
        private int award1Count = 0;

        //特等奖计数
        private int award0Count = 0;

        #endregion

        private int max = 0;

        private bool isConfirmed = false;

        private List<string> al = new List<string>();

        private List<string> al2 = new List<string>();

        private int awardType = 5;

        private Label scrollNum;

        public Form1()
        {
            InitializeComponent();
            timer2.Interval = int.Parse(Settings1.Default["Timer2"].ToString());
            InitNumber();
        }

        private void InitNumber()
        {
            //OleDbConnection Conn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0; Data source=Database1.mdb");
            OleDbConnection Conn = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=Database1.accdb;Persist Security Info=True");
            Conn.Open();
            string sql = "select number.[ID] from [number] order by rnd(id)";
            OleDbCommand Cmd = new OleDbCommand(sql, Conn);
            OleDbDataReader Dr = Cmd.ExecuteReader();
            while (Dr.Read())
            {
                al.Add(Dr["ID"].ToString());
            }
            Dr.Close();
            Conn.Close();

            //-----------------------------
            Conn.Open();
            sql = "select number.[ID] from [number] where ((id>=1 and id<=95) or (id>=119 and id<=202) or (id>=231 and id<=267) or (id>=294 and id<=311) or (id>=332 and id<=350) or (id>=370 and id<=392)) and id not in(171,172,177,178,180,181,185,413,414,415,416,417,418,419)";
            Cmd = new OleDbCommand(sql, Conn);
            Dr = Cmd.ExecuteReader();
            while (Dr.Read())
            {
                al2.Add(Dr["ID"].ToString());
            }
            Dr.Close();
            Conn.Close();
        }


        private void btnSwitchInit()
        {
            btnOK.Enabled = true;
            btnReDo.Enabled = true;
            btnSave.Enabled = true;
            btnReDo.Enabled = false;
            flowLayoutPanel1.Controls.Clear();
        }

        /// <summary>
        /// 奖项变化
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnSwitch4_Click(object sender, EventArgs e)
        {
            btnSwitchInit();
            groupBox1.Text = "幸运奖号码第一轮";
            awardType = 5;
        }

        private void btnSwitch4_2_Click(object sender, EventArgs e)
        {
            btnSwitchInit();
            groupBox1.Text = "幸运奖号码第二轮";
            awardType = 4;
        }

        private void btnSwitch3_Click(object sender, EventArgs e)
        {
            btnSwitchInit();
            groupBox1.Text = "三等奖号码";
            awardType = 3;
        }

        private void btnSwitch2_Click(object sender, EventArgs e)
        {
            btnSwitchInit();
            groupBox1.Text = "二等奖号码";
            awardType = 2;
        }

        private void btnSwitch1_Click(object sender, EventArgs e)
        {
            btnSwitchInit();
            groupBox1.Text = "一等奖号码";
            awardType = 1;
        }

        private void btnSwitch0_Click(object sender, EventArgs e)
        {
            btnSwitchInit();
            groupBox1.Text = "特等奖号码";
            awardType = 0;
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            if (awardType == 5)
            {
                if (award5Count >= 25)
                {
                    return;
                }
                OKinit();
            }
            else if (awardType == 4)
            {
                if (award4Count >= 25)
                {
                    return;
                }
                OKinit();
            }
            else if (awardType == 3)
            {
                if (award3Count >= 10)
                {
                    return;
                }
                OKinit();
            }
            else if (awardType == 2)
            {
                if (btnOK.Text == "停止")
                {
                    timer1.Stop();
                    scrollNum.Text = GetLuckyNum();
                    count2++;
                    award2Count += 1;

                    scrollNum = GetNewLabel(awardType);
                    flowLayoutPanel1.Controls.Add(scrollNum);
                    btnOK.Text = "开始";
                    btnReDo.Enabled = true;

                    if (award2Count >= 5)
                    {
                        btnSave.Enabled = true;
                        btnOK.Enabled = false;
                    }

                    return;
                }
                else
                {
                    btnReDo.Enabled = false;
                    btnOK.Enabled = true;
                }

                if (award2Count >= 5)
                {
                    return;
                }

                OKinit();
            }
            else if (awardType == 1)
            {
                if (btnOK.Text == "停止")
                {
                    timer1.Stop();
                    scrollNum.Text = GetLuckyNum();
                    count2++;
                    award1Count += 1;

                    scrollNum = GetNewLabel(awardType);
                    flowLayoutPanel1.Controls.Add(scrollNum);
                    btnOK.Text = "开始";
                    btnReDo.Enabled = true;

                    if (award1Count >= 2)
                    {
                        btnSave.Enabled = true;
                        btnOK.Enabled = false;
                    }

                    return;
                }
                else
                {
                    btnReDo.Enabled = false;
                    btnOK.Enabled = true;
                }

                if (award1Count >= 2)
                {
                    return;
                }
                OKinit();
            }
            else if (awardType == 0)
            {
                if (btnOK.Text == "停止")
                {
                    timer1.Stop();
                    scrollNum.Text = GetLuckyNum();
                    count2++;
                    award0Count += 1;

                    scrollNum = GetNewLabel(awardType);
                    flowLayoutPanel1.Controls.Add(scrollNum);
                    btnOK.Text = "开始";
                    btnReDo.Enabled = true;
                    btnOK.Enabled = false;

                    if (award0Count > 0)
                        btnSave.Enabled = true;

                    return;
                }
                else
                {
                    btnReDo.Enabled = false;
                    btnOK.Enabled = true;
                }

                if (award0Count > 0)
                {
                    return;
                }

                OKinit();
            }
        }

        private void OKinit()
        {
            count2 = 0;
            max = al.Count - 1;

            #region 加载第一个号码,开始摇号
            if (awardType == 5 || awardType == 4 || awardType == 3)
            {
                timer1.Start();
                timer2.Start();
            }
            else
            {
                timer1.Start();
                btnOK.Text = "停止";
            }
            #endregion
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            if (flowLayoutPanel1.Controls.Count == 0)
            {
                scrollNum = GetNewLabel(awardType);
                flowLayoutPanel1.Controls.Add(scrollNum);
            }

            scrollNum.Text = al[count];

            if (count == max)
                count = 0;
            else
                count = count + 1;
        }

        private void timer2_Tick(object sender, EventArgs e)
        {
            timer1.Stop();

            if (awardType == 5)
            {
                #region Exist confirm
                string a;
                if (scrollNum.Text == string.Empty)
                {
                    a = scrollNum.Text;
                }
                scrollNum.Text = GetLuckyNum2(scrollNum.Text);

                #endregion

                count2++;
                award5Count += 1;

                //if select completed
                if (award5Count >= 25)
                {
                    timer1.Stop();
                    timer2.Stop();

                    string[] result = new string[25];
                    for (int i = 0; i < flowLayoutPanel1.Controls.Count; i++)
                    {
                        result[i] = ((Label)flowLayoutPanel1.Controls[i]).Text;
                    }
                    AppendText(result);
                    return;
                }

                scrollNum = GetNewLabel(awardType);
                flowLayoutPanel1.Controls.Add(scrollNum);
            }
            else if (awardType == 4)
            {
                string a;
                if (scrollNum.Text == string.Empty)
                {
                    a = scrollNum.Text;
                }
                scrollNum.Text = GetLuckyNum2(scrollNum.Text);

                count2++;
                award4Count += 1;

                if (award4Count >= 25)
                {
                    timer2.Stop();
                    timer1.Stop();

                    string[] result = new string[25];
                    for (int i = 0; i < flowLayoutPanel1.Controls.Count; i++)
                    {
                        result[i] = ((Label)flowLayoutPanel1.Controls[i]).Text;
                    }
                    AppendText(result);
                    return;
                }

                scrollNum = GetNewLabel(awardType);
                flowLayoutPanel1.Controls.Add(scrollNum);
            }
            else if (awardType == 3)
            {
                scrollNum.Text = GetLuckyNum();
                count2++;
                award3Count += 1;

                if (award3Count >= 10)
                {
                    timer2.Stop();
                    timer1.Stop();

                    string[] result = new string[10];
                    for (int i = 0; i < flowLayoutPanel1.Controls.Count; i++)
                    {
                        result[i] = ((Label)flowLayoutPanel1.Controls[i]).Text;
                    }
                    AppendText(result);
                    return;
                }

                scrollNum = GetNewLabel(awardType);
                flowLayoutPanel1.Controls.Add(scrollNum);
            }
            else if (awardType == 2)
            {
                scrollNum.Text = GetLuckyNum();
                count2++;
                award2Count += 1;

                if (award2Count >= 5)
                {
                    timer2.Stop();
                    timer1.Stop();

                    btnSave.Enabled = true;
                    return;
                }
                scrollNum = GetNewLabel(awardType);
                flowLayoutPanel1.Controls.Add(scrollNum);
            }
            else if (awardType == 1)
            {
                scrollNum.Text = GetLuckyNum();
                count2++;
                award1Count += 1;

                if (award1Count >= 2)
                {
                    timer2.Stop();
                    timer1.Stop();

                    btnSave.Enabled = true;
                    return;
                }
                scrollNum = GetNewLabel(awardType);
                flowLayoutPanel1.Controls.Add(scrollNum);
            }
            else if (awardType == 0)
            {
                scrollNum.Text = GetLuckyNum();
                count2++;
                award0Count += 1;

                if (award0Count > 0)
                {
                    timer2.Stop();
                    timer1.Stop();

                    btnSave.Enabled = true;
                    return;
                }
                scrollNum = GetNewLabel(awardType);
                flowLayoutPanel1.Controls.Add(scrollNum);

                if (award0Count > 0)
                {
                    timer2.Stop();
                    timer1.Stop();
                    return;
                }
            }
            timer1.Start();
        }

        private ArrayList numHistory2 = new ArrayList();

        private ArrayList numHistory = new ArrayList();
        private int currentRnd;
        private Random R;

        private int GetRandomIndex()
        {
            R = new Random();
            currentRnd = R.Next(0, al2.Count - 1);
            if (numHistory.Contains(currentRnd))
            {
                return GetRandomIndex();
            }
            else
            {
                numHistory.Add(currentRnd);
                return currentRnd;
            }
        }

        private string GetLuckyNum()
        {
            return al2[GetRandomIndex()];
        }

        /// <summary>
        /// 幸运奖有重号时
        /// </summary>
        /// <returns></returns>
        private string GetLuckyNum2(string current)
        {
            if (current == string.Empty)
            {
                if (al.IndexOf(current) != al.Count - 1)
                    return GetLuckyNum2(al[al.IndexOf(current) + 1]);
                else
                    return GetLuckyNum2(al[0]);
            }

            int al2Index = al2.IndexOf(current);

            if (al2Index != -1)
            {
                if (numHistory.Contains(al2Index))
                {
                    return GetLuckyNum2(al[al.IndexOf(current) + 1]);
                }
                else
                {
                    numHistory.Add(al2Index);
                    return current;
                }
            }
            else
            {
                if (numHistory2.Contains(current))
                {
                    return GetLuckyNum2(al[al.IndexOf(current) + 1]);
                }
                else
                {
                    numHistory2.Add(current);
                    return current;
                }
            }
        }

        private Label GetNewLabel(int type)
        {
            if (type == 5 || type == 4)
            {
                Label temp;
                temp = new Label();
                temp.Font = new Font(new FontFamily("Tahoma"), 48, FontStyle.Bold);
                temp.ForeColor = Color.Firebrick;
                temp.Height = 90;
                temp.Width = 160;
                temp.Margin = new Padding(20, 3, 3, 3);
                return temp;
            }
            else if (type == 3)
            {
                Label temp;
                temp = new Label();
                temp.Font = new Font(new FontFamily("Tahoma"), 48, FontStyle.Bold);
                temp.ForeColor = Color.Firebrick;
                temp.Height = 90;
                temp.Width = 160;
                temp.Margin = new Padding(10, 83, 3, 3);
                return temp;
            }
            else if (type == 2)
            {
                Label temp;
                temp = new Label();
                temp.Font = new Font(new FontFamily("Tahoma"), 48, FontStyle.Bold);
                temp.ForeColor = Color.Firebrick;
                temp.Height = 90;
                temp.Width = 160;
                temp.Margin = new Padding(10, 150, 3, 3);
                return temp;
            }
            else if (type == 1)
            {
                Label temp;
                temp = new Label();
                temp.Font = new Font(new FontFamily("Tahoma"), 80, FontStyle.Bold);
                temp.ForeColor = Color.Firebrick;
                temp.Height = 200;
                temp.Width = 300;
                temp.Margin = new Padding(100, 150, 3, 3);
                return temp;
            }
            else
            {
                Label temp;
                temp = new Label();
                temp.Font = new Font(new FontFamily("Tahoma"), 100, FontStyle.Bold);
                temp.ForeColor = Color.Firebrick;
                temp.Height = 250;
                temp.Width = 360;
                temp.Margin = new Padding(310, 150, 3, 3);
                return temp;
            }

            return null;
        }

        public void AppendText(string[] newContent)
        {
            StreamWriter sw = File.AppendText(" myText.txt");
            sw.WriteLine(groupBox1.Text + "----" + DateTime.Now.ToString());
            foreach (var subContent in newContent)
            {
                sw.WriteLine(subContent);
            }
            sw.WriteLine("----------------------------------------------------------");
            sw.Flush();
            sw.Close();
        }

        private void btnReDo_Click(object sender, EventArgs e)
        {
            btnReDo.Enabled = false;
            btnOK.Enabled = true;
            flowLayoutPanel1.Controls.RemoveAt(flowLayoutPanel1.Controls.Count - 2);
            switch (awardType)
            {
                case 2: award2Count--; break;
                case 1: award1Count--; break;
                case 0: award0Count--; break;
            }
            OKinit();
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            if (awardType == 2)
            {
                string[] result = new string[6];
                for (int i = 0; i < flowLayoutPanel1.Controls.Count; i++)
                {
                    result[i] = ((Label)flowLayoutPanel1.Controls[i]).Text;
                }
                AppendText(result);
            }
            else if (awardType == 1)
            {
                string[] result = new string[3];
                for (int i = 0; i < flowLayoutPanel1.Controls.Count; i++)
                {
                    result[i] = ((Label)flowLayoutPanel1.Controls[i]).Text;
                }
                AppendText(result);
            }
            else if (awardType == 0)
            {
                string[] result = new string[2];
                for (int i = 0; i < flowLayoutPanel1.Controls.Count; i++)
                {
                    result[i] = ((Label)flowLayoutPanel1.Controls[i]).Text;
                }
                AppendText(result);
            }

            btnSave.Enabled = false;
        }
    }
}
