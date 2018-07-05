using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Jackone
{
    public partial class Frm_Book : Form
    {
        BookInfo Curbi = new BookInfo();

        int BookID = -1;
        public Frm_Book(int BookID)
        {
            InitializeComponent();
           
            this.BookID=BookID;

            if (BookID > -1)
            {
                this.Text = "修改图书信息";
               
            }
            else
            {
                this.Text = "新增图书";
            }
            
        }

        private void LoadBookInfo(int BookID)
        {
            BookInfo Binfo = BookInfoService.LoadBookByID(BookID);

            txt_Author.Text = Binfo.Author;
            txt_BookName.Text = Binfo.BookName;
            txt_page.Text = Binfo.Page.ToString();
            txt_Press.Text = Binfo.Press;
            txt_price.Text = Binfo.Pricing.ToString();
            txt_Summary.Text = Binfo.Summary;

            cmb_booktype.SelectedValue = Binfo.TypeID;

            try
            {
                byte[] imgPho = Binfo.ConverImage as byte[];
                using (System.IO.MemoryStream ms = new System.IO.MemoryStream(imgPho))
                {
                    this.ptb_img.Image = System.Drawing.Image.FromStream(ms);
                }
            }
            catch
            {
               this.ptb_img.Image = null;
            }
        }

        private void BtnOk_Click(object sender, EventArgs e)
        {
            if (txt_Author.Text == "")
            {
                MessageBox.Show("请填写作者", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            if (txt_BookName.Text == "")
            {
                MessageBox.Show("请填写书名", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            if (txt_page.Text == "")
            {
                MessageBox.Show("请填写页数", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            if (txt_Press.Text == "")
            {
                MessageBox.Show("请填写出版社", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            if (txt_Summary.Text == "")
            {
                MessageBox.Show("请填写简介", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            if (txt_price.Text == "")
            {
                MessageBox.Show("请填写价格", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            


            try
            {


                Curbi.Author = txt_Author.Text;
                Curbi.BookName = txt_BookName.Text;
                Curbi.Page = Convert.ToInt32(txt_page.Text);
                Curbi.Press = txt_Press.Text;
                Curbi.TypeID = Convert.ToInt32(cmb_booktype.SelectedValue);
                Curbi.Pricing = Convert.ToSingle(txt_price.Text);
                Curbi.PubData = txt_time.Value;
                Curbi.Summary = txt_Summary.Text;
                if (ptb_img.Image == null)
                {
                    Curbi.ConverImage = new Byte[0];
                }
                else
                {
                    Curbi.ConverImage = Function.Convertimg2byte(ptb_img.Image);
                }

                if (BookID == -1)
                {
                    BookInfoService.InsertBookInfo(Curbi);
                }
                else
                {
                    Curbi.BookID = BookID;
                    BookInfoService.UpdateBookInfo(Curbi);
                }

                this.DialogResult = System.Windows.Forms.DialogResult.OK;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void Add_Book_Load(object sender, EventArgs e)
        {
            List<BookTypeInfo> list = new List<BookTypeInfo>();
            try
            {
                
                list = BookTypeService.SelectBookTypeInfo();

                cmb_booktype.DataSource = list;
                cmb_booktype.ValueMember = "BookTypeID";
                cmb_booktype.DisplayMember = "BookTypeName";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

            if (BookID > -1)
            {
                LoadBookInfo(BookID);

               
            }
        }

        private void BtnExit_Click(object sender, EventArgs e)
        {
            this.DialogResult = System.Windows.Forms.DialogResult.No;
        }

        private void BtnLinkimg_Click(object sender, EventArgs e)
        {
            try
            {
                OpenFileDialog OpenFileDialog = new OpenFileDialog();
                OpenFileDialog.Filter = "图片文件(*.jpg)|*.jpg|(*.bmp)|*.bmp|(*.png)|*.png";
                if (OpenFileDialog.ShowDialog() == DialogResult.OK)
                {
                    ptb_img.Image = Image.FromFile(OpenFileDialog.FileName);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void txt_price_KeyPress(object sender, KeyPressEventArgs e)
        {
            int keyValue = (int)e.KeyChar;
            if ((keyValue >= 48 && keyValue <= 57) || keyValue == 8 || keyValue == 46)
            {
                if (sender != null && sender is TextBox && keyValue == 46)
                {
                    if (((TextBox)sender).Text.IndexOf(".") >= 0)
                        e.Handled = true;
                    else
                        e.Handled = false;
                }
                else
                    e.Handled = false;
            }
            else
                e.Handled = true;
        }

        private void txt_page_KeyPress(object sender, KeyPressEventArgs e)
        {
            int keyValue = (int)e.KeyChar;
            if ((keyValue >= 48 && keyValue <= 57) || keyValue == 8)
            {
                if (sender != null && sender is TextBox)
                {
                    e.Handled = false;
                }
            }
            else
                e.Handled = true;
        }
    }
}
