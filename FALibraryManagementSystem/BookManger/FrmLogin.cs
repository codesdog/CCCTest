using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Jackone
{
    public partial class FrmLogin : Form
    {

        string checkCode = "";
        public FrmLogin()
        {
            InitializeComponent();
            /*
            byte[] skintype = Jackone.Properties.Resources.XPBlue;
            MemoryStream _stream = new MemoryStream(skintype);
            this.skinEngine1.SkinStream = _stream;
            this.skinEngine1.SkinAllForm = true;*/
        }

     

      

        private void BtnExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }

       

        private void FrmLogin_Load(object sender, EventArgs e)
        {
            CreateVerificationCode(4);
        }

        private void CreateVerificationCode(int CodeCount)
        {
            #region 产生验证码
            string allChar = "0,1,2,3,4,5,6,7,8,9,A,B,C,D,E,F,G,H,i,J,K,M,N,P,Q,R,S,T,U,W,X,Y,Z";
            string[] allCharArray = allChar.Split(',');
            string RandomCode = "";
            int temp = -1;

            Random rand = new Random();
            for (int i = 0; i < CodeCount; i++)
            {
                if (temp != -1)
                {
                    rand = new Random(temp * i * ((int)DateTime.Now.Ticks));
                }

                int t = rand.Next(33);

                while (temp == t)
                {
                    t = rand.Next(33);
                }

                temp = t;
                RandomCode += allCharArray[t];
            }
            checkCode = RandomCode;
      
            #endregion

            #region 绘制验证码
            int iwidth = (int)(checkCode.Length * 14);
            System.Drawing.Bitmap image = new System.Drawing.Bitmap(iwidth, 21);
            Graphics g = Graphics.FromImage(image);
            Font f = new System.Drawing.Font("Arial ", 10);//, System.Drawing.FontStyle.Bold);
            Brush b = new System.Drawing.SolidBrush(Color.Black);
            Brush r = new System.Drawing.SolidBrush(Color.FromArgb(166, 8, 8));

            g.Clear(System.Drawing.ColorTranslator.FromHtml("#99C1CB"));//背景色

            char[] ch = checkCode.ToCharArray();
            for (int i = 0; i < ch.Length; i++)
            {
                if (ch[i] >= '0' && ch[i] <= '9')
                {
                    //数字用红色显示
                    g.DrawString(ch[i].ToString(), f, r, 3 + (i * 12), 3);
                }
                else
                {   //字母用黑色显示
                    g.DrawString(ch[i].ToString(), f, b, 3 + (i * 12), 3);
                }
            }
            System.IO.MemoryStream ms = new System.IO.MemoryStream();
            image.Save(ms, System.Drawing.Imaging.ImageFormat.Jpeg);
            //history back 不重复 
            pictureBox1.Image = image;
            #endregion

        }

       

        private void BtnOK_Click(object sender, EventArgs e)
        {
            if (TxtUser.Text == "")
            {
                MessageBox.Show("请输入用户名", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            if (TxtPwd.Text == "")
            {
                MessageBox.Show("请输入密码", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            
            if (TxtChk.Text.ToLower() == checkCode.ToLower())
            {
                UserInfo ui = new UserInfo();
                ui.UserName = TxtUser.Text;
                ui.PassWord =TxtPwd.Text;

                if (UserInfoService.CheckUserExist(ui))
                {
                    FrmMain _FrmMain = new FrmMain(TxtUser.Text);
                    _FrmMain.Show();
                    this.Hide();
                }
                else
                {
                    TxtUser.Text = TxtPwd.Text = TxtChk.Text = "";
                    CreateVerificationCode(4);
                 
                   MessageBox.Show("用户名或密码错误", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            else
            {
                TxtChk.Text = "";
                CreateVerificationCode(4);

            
                MessageBox.Show("验证码错误", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void lnkChk_Enter(object sender, EventArgs e)
        {
            //this.SelectNextControl(this.ActiveControl, true, true, true, true);  
        }

        protected override bool ProcessDialogKey(Keys keyData)
        {
            if (keyData == Keys.Enter && !(this.ActiveControl is System.Windows.Forms.Button))
            {
                keyData = Keys.Tab;
            }
            return base.ProcessDialogKey(keyData);
        }

        private bool isMouseDown = false;
        private Point FormLocation;     //form的location
        private Point mouseOffset;      //鼠标的按下位置


        private void pictureBox2_MouseDown(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Left)
            {
                isMouseDown = true;
                FormLocation = this.Location;
                mouseOffset = Control.MousePosition;
            }
        }

        private void pictureBox2_MouseMove(object sender, MouseEventArgs e)
        {
            int _x = 0;
            int _y = 0;
            if (isMouseDown)
            {
                Point pt = Control.MousePosition;
                _x = mouseOffset.X - pt.X;
                _y = mouseOffset.Y - pt.Y;

                this.Location = new Point(FormLocation.X - _x, FormLocation.Y - _y);
            }
        }

        private void pictureBox2_MouseUp(object sender, MouseEventArgs e)
        {
            isMouseDown = false;
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            CreateVerificationCode(4);
        }

       
    }
}
