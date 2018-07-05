using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.IO;

namespace UpLoad
{
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }
        public string Sid;
        public bool edit;

        private void Form2_Load(object sender, EventArgs e)
        {
            if (edit == true)
            {
                this.txtSID.Enabled = false;
                loadData();
            }
            else
            {
                this.txtSID.Enabled = true;
                this.btnModify.Text = "插入";
            }

        }
        private void btnModify_Click(object sender, EventArgs e)
        {
            string sid = this.txtSID.Text.ToString().Trim();
            string name = this.txtNAME.Text.ToString().Trim();
            int age = Convert.ToInt32(this.txtAGE.Text.ToString().Trim());
            string sex = this.txtSEX.SelectedIndex.ToString();
            string email = this.txtEMAIL.Text.ToString().Trim();
            string address = this.txtADDRESS.Text.ToString().Trim();
            bool bl = false;

            if (this.edit == true)
            {
                try
                {
                    if (this.pictureBox1.Image == null)
                    {
                        bl = DataMag.Update(sid, name, age, sex, email, address, null);

                    }
                    else
                    {
                        bl = DataMag.Update(sid, name, age, sex, email, address, loadpic(this.pictureBox1.ImageLocation));
                    }
                }
                catch (Exception ex)
                {

                }
            }
            else
            {
                try
                {
                    if (this.pictureBox1.Image == null)
                    {
                        bl = DataMag.Insert(sid, name, age, sex, email, address, null);

                    }
                    else
                    {
                        bl = DataMag.Insert(sid, name, age, sex, email, address, loadpic(this.pictureBox1.ImageLocation));

                    }
                }
                catch (Exception ex)
                { }
            }
            if (bl)
            {

                MessageBox.Show("成功");
            }
            else
            {
                MessageBox.Show("失败");
            }
        }


        private void loadData()
        {
            if (this.edit == true)
            {
                this.txtSID.Enabled = false;
                DataTable table = new DataTable();
                table = DataMag.Search(this.Sid);
                if (table.Rows.Count > 0)
                {
                    this.txtSID.Text = table.Rows[0]["SID"].ToString().Trim();
                    this.txtNAME.Text = table.Rows[0]["NAME"].ToString().Trim();
                    this.txtAGE.Text = table.Rows[0]["AGE"].ToString().Trim();
                    this.txtSEX.SelectedIndex = Convert.ToInt32(table.Rows[0]["SEX"].ToString());
                    this.txtEMAIL.Text = table.Rows[0]["EMAIL"].ToString().Trim();
                    this.txtADDRESS.Text = table.Rows[0]["ADDRESS"].ToString().Trim();
                    if (!table.Rows[0].IsNull("PIC"))
                    {
                        byte[] byt = (byte[])table.Rows[0]["PIC"];
                        loadpic(byt);
                    }
                }
            }
        }


        //51aspx下载
        private void loadpic(byte[] bt)
        {
            MemoryStream ms = new MemoryStream(bt);
            if (File.Exists("a.jpg"))
            {
                File.Delete("a.jpg");
            }
            FileStream fs = new FileStream("a.jpg", FileMode.CreateNew);
            fs.Write(bt, 0, bt.Length);
            fs.Close();
            this.pictureBox1.ImageLocation = "a.jpg";
        }
        private byte[] loadpic(string strpicpath)
        {
            FileStream fs = new FileStream(strpicpath, FileMode.Open);
            int len = int.Parse(fs.Length.ToString());
            byte[] bBuffer = new byte[len];
            fs.Read(bBuffer, 0, len);
            return bBuffer;
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            this.Close();
        }
        #region 51aspx下载
        #endregion
        private void btnDEL_Click(object sender, EventArgs e)
        {
            string ID = this.Sid;

            bool flag = DataMag.Delete(ID);

            //给出提示
            if (flag)
            {
                MessageBox.Show("删除成功");
                this.Close();

            }
            else
            {
                MessageBox.Show("删除失败");
            }

        }
        //51aspx下载
        private void btnChangePIC_Click(object sender, EventArgs e)
        {
            OpenFileDialog open = new OpenFileDialog();
            open.ShowDialog();
            this.pictureBox1.ImageLocation = open.FileName;
        }


    }
}
