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
    public partial class FrmBookType : Form
    {
        int Opration = -1;//操作类型 -1新增，0查询，1修改
        public FrmBookType(int Opration)
        {
           
            InitializeComponent();

            this.Opration = Opration;
        }

        private void FrmBookType_Load(object sender, EventArgs e)
        {
            if (Opration == -1)
            {
                this.cmb_BookType.Visible = false;

            }
            else if (Opration == 0)
            {
                this.txt_BookType.Visible = false;
                this.button1.Visible = false;
                this.txt_remark.ReadOnly = true;

                BindData();
            }
            else
            {
                this.txt_BookType.Visible = false;
                BindData();
            }
        }

        private void BindData()
        {

            List<BookTypeInfo> list = BookTypeService.SelectBookTypeInfo();
            this.cmb_BookType.DataSource = list;
            this.cmb_BookType.ValueMember = "BookTypeID";
            this.cmb_BookType.DisplayMember = "BookTypeName";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (this.Opration == -1)
            {
                List<BookTypeInfo> _list = BookTypeService.SelectBookTypeInfo();

                for (int i = 0; i < _list.Count; i++)
                {

                    if (_list[i].BookTypeName == txt_BookType.Text)
                    {
                        MessageBox.Show("类型名称已存在", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        return;
                    }
                }

                if (txt_BookType.Text == "")
                {
                    MessageBox.Show("请填写要添加的类型", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    return;
                }
               

                BookTypeInfo bi = new BookTypeInfo();
                bi.BookTypeName = txt_BookType.Text;
                bi.Remark = txt_remark.Text;

                try
                {
                    BookTypeService.InsertBookTypeInfo(bi);
                    MessageBox.Show("添加成功", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    txt_BookType.Text = txt_remark.Text = "";
                }
                catch(Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }

                
            }
            else if (this.Opration == 1)
            {
                try
                {
                    BookTypeInfo _bi = (BookTypeInfo)this.cmb_BookType.SelectedItem;
                    BookTypeInfo bi = new BookTypeInfo();
                    bi.BookTypeID = _bi.BookTypeID;
                    bi.BookTypeName = _bi.BookTypeName;
                    bi.Remark = txt_remark.Text;


                    BookTypeService.UpdateBookTypeInfo(bi);
                    MessageBox.Show("修改成功", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    BindData();


                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void cmb_BookType_SelectedIndexChanged(object sender, EventArgs e)
        {
            BookTypeInfo _bi = (BookTypeInfo)this.cmb_BookType.SelectedItem;
            txt_remark.Text = _bi.Remark;
        }
    }
}
