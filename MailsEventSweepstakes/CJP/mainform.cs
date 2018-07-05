using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

using System.Media;

using System.IO;
// 下载于www.51aspx.com
namespace CJP
{
    public partial class mainform : Form
    {
        Sunisoft.IrisSkin.SkinEngine se = null;
        string[] szmd;
        int j = 0;
        string v = "";
        public int ax=0, ay=0, asx=0, asy=0;
        public mainform()
        {
            InitializeComponent();
            this.BackgroundImageLayout = ImageLayout.Stretch;
            this.BackgroundImage = Image.FromFile(comm_var.bgimagepath);

            this.停止抽奖ToolStripMenuItem.Enabled = false;
            this.停止滚动ToolStripMenuItem.Enabled = false;
            this.切换奖项ToolStripMenuItem.Enabled = false;
            this.滚动ToolStripMenuItem.Enabled = false;

            Timer HelpTime = new Timer();//实例化一个时间控件
            HelpTime.Enabled = true;//让时间控件可用
            HelpTime.Interval = comm_var.cj_tick_interval;//时间间隔150毫秒
            HelpTime.Tick += new EventHandler(HelpTime_Tick);//注册时间控件的Tick事件

            SetStyle(ControlStyles.AllPaintingInWmPaint, true); // 禁止擦除背景.
            SetStyle(ControlStyles.OptimizedDoubleBuffer, true); // 双缓冲
            this.UpdateStyles();

            this.toolStripStatusLabel1.Text = "enter键开始抽奖";
            this.toolStripStatusLabel2.Text = "空格键停止抽奖";

            ininmd();
            setcs();

            //皮肤
            string inpath = Application.StartupPath + @"\macos\macos.ssk";
            se = new Sunisoft.IrisSkin.SkinEngine();
            se.SkinFile = inpath;//@"\skin\macos\macos.ssk";
            se.SkinAllForm = true;
            //playsoundsloop(comm_var.music_back);
        }
        private void HelpTime_Tick(object sender, EventArgs e)
        {
            if (comm_var.isstart && comm_var.isrunning)
            {
                Graphics g = this.CreateGraphics();
                //Font f = new Font(comm_var.cj_font_name, comm_var.cj_font_size);
                Font f = new Font(comm_var.cj_font_name, comm_var.cj_font_size, FontStyle.Bold);
                Brush b = Brushes.Red;
                v = szmd[j];
                j++;
                if (j == szmd.Length)
                {
                    j = 0;
                    ininmd();
                }
                int cdis = (int)g.MeasureString(v, f).Width;
                if (ax != 0 && ay != 0 && asx != 0 && asy != 0)
                {
                    Rectangle rec2 = new Rectangle(ax, ay, asx, asy);
                    System.Drawing.Region sdr2 = new Region(rec2);
                    g.Clip = sdr2;
                    g.Clear(Color.FromArgb(126, 125, 188));
                }
                int x = (this.Width - cdis) / 2;
                int y = (this.Height - (int)g.MeasureString(v, f).Height)*9 / 10;
                int sx = (int)g.MeasureString(v, f).Width;
                int sy =(int)g.MeasureString(v, f).Height;
                ax = x;
                ay = y;
                asx = sx;
                asy = sy;
                //g.Clear(Color.Orange);
                Rectangle rec = new Rectangle(x, y, sx, sy);
                System.Drawing.Region sdr = new Region(rec);
                g.Clip = sdr;
                //g.Clear(Color.FromArgb(245, 95, 9));
                g.DrawString(v, f, b, x, y);


                b = Brushes.Yellow;
                string tips = string.Format("当前奖项:{0};共{1}个名单;已经抽取{2}个", comm_var.currentjx, comm_var.curjxshuliang, comm_var.curcjsl);
                int x1=(this.Width-(int)g.MeasureString(tips, f).Width)/2;
                int y1 =(this.Height-(int)g.MeasureString(tips, f).Height)/2-100;
                Rectangle rec1 = new Rectangle(x1, y1, (int)g.MeasureString(tips, f).Width, (int)g.MeasureString(tips, f).Height);
                System.Drawing.Region sdr1 = new Region(rec1);
                g.Clip = sdr1;
                g.Clear(Color.FromArgb(18,63,144));
                g.DrawString(tips, f, b, x1, y1);
            }
        }

        private void 关于ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            about.about aa = new CJP.about.about();
            aa.Show();
        }

        private void mainform_Paint(object sender, PaintEventArgs e)
        {
            /*Graphics g = e.Graphics;
            Font f = new Font(comm_var.title_font_name,comm_var.title_font_size);
            Brush b = Brushes.White;
            int y = 50;
            int dis = (int)g.MeasureString(comm_var.title, f).Width;
            int x = (this.Width-dis) / 2;
            g.DrawString(comm_var.title, f, b, x, y);*/
        }

        private void 退出ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void 开始抽奖ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            choujiang.cj_start cc = new CJP.choujiang.cj_start();
            DialogResult dr = cc.ShowDialog();
            if (dr == DialogResult.OK)
            {
                if (comm_var.md.Equals(""))
                {
                    MessageBox.Show("请先导入抽奖名单");
                }
                else
                {
                    comm_var.isstart = true; 
                    this.停止抽奖ToolStripMenuItem.Enabled = true;
                    this.停止滚动ToolStripMenuItem.Enabled = false;
                    this.切换奖项ToolStripMenuItem.Enabled = true;
                    this.滚动ToolStripMenuItem.Enabled = true;
                    this.开始抽奖ToolStripMenuItem.Enabled = false;
                }
            }
            else
            {
                MessageBox.Show("您取消了本次抽奖活动");
            }
        }

        private void 导入名单ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            shezhi.inputfile si = new CJP.shezhi.inputfile();
            si.ShowDialog();
        }

        private void mainform_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter && comm_var.curcjsl<comm_var.curjxshuliang && comm_var.isrunning==false && comm_var.isstart)
            {
                startgundong();

            }
            if (e.KeyCode == Keys.Space && comm_var.curcjsl < comm_var.curjxshuliang && comm_var.isrunning && comm_var.isstart)
            {
                stopgundong();
            }
        }

        public void ininmd()
        {
            FileStream fs = File.OpenRead(comm_var.cjmd_default_file);
            StreamReader sr = new StreamReader(fs, Encoding.GetEncoding("GB2312"));
            //char[] sp = { '^' };
            //string[] over = comm_var.overjx.Split(sp);
            comm_var.md = "";
            string tmp;
            while ((tmp = sr.ReadLine()) != null)
            {
                if (!comm_var.overxm.Contains(tmp))
                {
                    comm_var.md = comm_var.md + "^" + tmp;
                }
            }
            char[] sp = { '^' };
            szmd = comm_var.md.Split(sp);
        }

        private void 停止抽奖ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.停止抽奖ToolStripMenuItem.Enabled = false;
            this.停止滚动ToolStripMenuItem.Enabled = false;
            this.切换奖项ToolStripMenuItem.Enabled = false;
            this.滚动ToolStripMenuItem.Enabled = false;
            this.开始抽奖ToolStripMenuItem.Enabled = true;
        }

        private void 滚动ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            startgundong();
        }

        private void 停止滚动ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            stopgundong();
        }

        private void 切换奖项ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (comm_var.curcjsl < comm_var.curjxshuliang)
            {
                if (MessageBox.Show(comm_var.currentjx + "共有" + comm_var.curjxshuliang + "名,目前抽取" + comm_var.curcjsl + "名还未到到数量,确认放弃吗") == DialogResult.OK)
                {
                    comm_var.overjx = comm_var.overjx + comm_var.currentjx + "^";
                    choujiang.qhjx cq = new CJP.choujiang.qhjx();
                    cq.ShowDialog();
                }
            }
            else
            {
                comm_var.overjx = comm_var.overjx + comm_var.currentjx + "^";
                choujiang.qhjx cq = new CJP.choujiang.qhjx();
                cq.ShowDialog();
            }
        }

        private void 查看结果ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            choujiang.result cr = new CJP.choujiang.result();
            cr.ShowDialog();
        }

        private void 设置奖项ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            shezhi.jiangxiang sj = new CJP.shezhi.jiangxiang();
            sj.ShowDialog();
        }

        private void 参数设置ToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        /*public string gundong(string xm)
        {
            try
            {
                string path = comm_var.resultpathcurdir + @"\" + comm_var.currentjx + ".txt";
                FileCreate(path);
                string tips = string.Format("当前奖项:'{0}';共{1}个名单;已经抽取{2}个", comm_var.currentjx, comm_var.curjxshuliang, comm_var.curcjsl);
                string sql = string.Format("insert into t_mx(jx,zjname,intime)values('{0}','{1}','{2}')", comm_var.currentjx, xm, System.DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"));
                DB.DbHelperOleDb.ExecuteSql(sql);
                FileStream fs = new FileStream(path);
                StreamWriter sw = new StreamWriter(fs);
                sw.WriteLine(xm);
                fs.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }*/
        public void drawstring()
        {

        }

        public string getrandom(int j)
        {
            char[] sp = { '^' };
            string[] ty = comm_var.tyjmd.Split(sp);
            //int i = new Random(j).Next(0, ty.Length - 1);
            int i = j % (ty.Length - 1);
            return ty[i];
        }


        public void stopgundong()
        {
            this.滚动ToolStripMenuItem.Enabled = true;
            this.停止滚动ToolStripMenuItem.Enabled = false;
            this.切换奖项ToolStripMenuItem.Enabled = true;
            comm_var.curcjsl++;

            Graphics g = this.CreateGraphics();
            Font f = new Font(comm_var.cj_font_name, comm_var.cj_font_size);
            Brush b = Brushes.Yellow;
            if (comm_var.currentjx.Equals("特等奖"))
            {
                string vtmp = "";
                int i = 0;
                //while (comm_var.overxm.Contains(vtmp = getrandom(new Random(i).Next(i*10,(i+10)*100))))
                while (comm_var.overxm.Contains(vtmp = getrandom(j+i)))
                {
                    i++;
                }
                v = vtmp;
                comm_var.overxm = comm_var.overxm + v + "^";
                ininmd();
                //Graphics g = this.CreateGraphics();
                f = new Font(comm_var.cj_font_name, comm_var.cj_font_size, FontStyle.Bold);
                b = Brushes.Red;
                int cdis = (int)g.MeasureString(v, f).Width;
                if (ax != 0 && ay != 0 && asx != 0 && asy != 0)
                {
                    Rectangle rec2 = new Rectangle(ax, ay, asx, asy);
                    System.Drawing.Region sdr2 = new Region(rec2);
                    g.Clip = sdr2;
                    g.Clear(Color.FromArgb(126, 125, 188));
                }
                int x = (this.Width - cdis) / 2;
                int y = (this.Height - (int)g.MeasureString(v, f).Height) * 9 / 10;
                int sx = (int)g.MeasureString(v, f).Width;
                int sy = (int)g.MeasureString(v, f).Height;
                ax = x;
                ay = y;
                asx = sx;
                asy = sy;
                //g.Clear(Color.Orange);
                Rectangle rec = new Rectangle(x, y, sx, sy);
                System.Drawing.Region sdr = new Region(rec);
                g.Clip = sdr;
                //g.Clear(Color.FromArgb(245, 95, 9));
                g.DrawString(v, f, b, x, y);
            }
            else
            {
                comm_var.overxm = comm_var.overxm + v + "^";
            }
            g = this.CreateGraphics();
            f = new Font(comm_var.cj_font_name, comm_var.cj_font_size);
            b = Brushes.Yellow;
            string tips = string.Format("当前奖项:{0};共{1}个名单;已经抽取{2}个", comm_var.currentjx, comm_var.curjxshuliang, comm_var.curcjsl);
            int x1 = (this.Width - (int)g.MeasureString(tips, f).Width) / 2;
            int y1 = (this.Height - (int)g.MeasureString(tips, f).Height) / 2 - 100;
            Rectangle rec1 = new Rectangle(x1, y1, (int)g.MeasureString(tips, f).Width, (int)g.MeasureString(tips, f).Height);
            System.Drawing.Region sdr1 = new Region(rec1);
            g.Clip = sdr1;
            g.Clear(Color.FromArgb(18, 63, 144));
            g.DrawString(tips, f, b, x1, y1);
            comm_var.isrunning = false;
            try
            {
                string path = comm_var.resultpathcurdir + @"\" + comm_var.currentjx + ".txt";
                FileCreate(path);
                string sql = string.Format("insert into t_mx(hd,jx,zjname,intime)values('{0}','{1}','{2}','{3}')", comm_var.hdname,comm_var.currentjx, v, System.DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"));
                DB.DbHelperOleDb.ExecuteSql(sql);
                FileStream fs = new FileStream(path, FileMode.Append);
                StreamWriter sw = new StreamWriter(fs);
                sw.WriteLine(v);
                sw.Close();
                fs.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
            if (comm_var.curcjsl == comm_var.curjxshuliang)
            {
                MessageBox.Show("该奖项人数已达上限，请切换");
            }
            //切换前不能滚动
            this.滚动ToolStripMenuItem.Enabled = false;
        }

        public void startgundong()
        {
            this.滚动ToolStripMenuItem.Enabled = false;
            this.停止滚动ToolStripMenuItem.Enabled = true;
            this.切换奖项ToolStripMenuItem.Enabled = false;
            comm_var.isrunning = true;
        }

        public void playsoundsloop(string path)
        {
            try
            {
                SoundPlayer sp = new SoundPlayer(path);
                sp.PlayLooping();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }
        public static void FileCreate(string Path)
        {
            FileInfo CreateFile = new FileInfo(Path); //创建文件 
            if (!CreateFile.Exists)
            {
                FileStream FS = CreateFile.Create();
                FS.Close();
            }
        }

        public void setcs()
        {
            string sql = string.Format("select * from t_jx");
            DataTable dt = new DataTable();
            dt = DB.DbHelperOleDb.Query(sql).Tables["ds"];
            int l=dt.Rows.Count-1;
            comm_var.currentjx = dt.Rows[l][0].ToString();
            comm_var.curjxshuliang = int.Parse(dt.Rows[l][1].ToString());
            comm_var.curjxneirong = dt.Rows[l][2].ToString();
            comm_var.curcjsl = 0;
        }
    }
}
