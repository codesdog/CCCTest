using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Windows.Forms;

namespace Jackone
{
    public partial class FrmMain : Form
    {
        
        public FrmMain(string loginname)
        {
            InitializeComponent();
            dgv_bookinfo.AutoGenerateColumns = false;
             dgv_bookinfo.RowsDefaultCellStyle.BackColor = Color.Bisque;
             dgv_bookinfo.AlternatingRowsDefaultCellStyle.BackColor = Color.Beige;


            this.lbladmin.Text = loginname;
            lbltime.Text = "时间：" + System.DateTime.Now.ToString();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            lbltime.Text = "时间：" + System.DateTime.Now.ToString();
        }

        private void FrmMain_Load(object sender, EventArgs e)
        {
            LoadLeftView();
        }

        private void LoadLeftView()
        {
            tv_BookType.Nodes.Clear();
           
            List<BookTypeInfo> list = new List<BookTypeInfo>();
            try
            {
                 list = BookTypeService.SelectBookTypeInfo();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

            //创建根节点
            TreeNode root = new TreeNode("所有分类");

            //绑定到父容器
           tv_BookType.Nodes.Add(root);

            foreach (BookTypeInfo b in list)
            {
                TreeNode node = new TreeNode(b.BookTypeName);
                node.Tag = b;
                root.Nodes.Add(node);
            }


            if (tv_BookType.SelectedNode == null)
                tv_BookType.SelectedNode = root;

            tv_BookType.ImageList = imageListLeft;
            tv_BookType.ExpandAll();
            
            
          
        }

        private void FrmMain_FormClosing(object sender, FormClosingEventArgs e)
        {
            DialogResult dr = MessageBox.Show("是否退出", "提示", MessageBoxButtons.OKCancel, MessageBoxIcon.Information);
            if (dr == DialogResult.OK)
            {
                Environment.Exit(0);
            }
            else
            {
                e.Cancel = true;
            }
        }

        #region TreeView 
        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void tv_BookType_AfterSelect(object sender, TreeViewEventArgs e)
        {
            tv_BookType.SelectedImageIndex = 1;

            LoadBoolByType(tv_BookType.SelectedNode);
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void tv_BookType_AfterCollapse(object sender, TreeViewEventArgs e)
        {
            e.Node.SelectedImageIndex = 0;
            e.Node.ImageIndex = 0;
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void tv_BookType_AfterExpand(object sender, TreeViewEventArgs e)
        {
            e.Node.SelectedImageIndex = 1;
            e.Node.ImageIndex = 1;
        }


        #endregion

        /// <summary>
        /// 
        /// </summary>
        /// <param name="_node"></param>
        private void LoadBoolByType(TreeNode _node)
        {

            DataTable list = null;
            try
            {
                if (_node.Tag is BookTypeInfo)
                {
                    list = BookInfoService.LoadBookByType((_node.Tag as BookTypeInfo).BookTypeID);
                }
                else
                {
                    list = BookInfoService.LoadBookByType(-1);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

            List<BookTypeInfo> typelist = BookTypeService.SelectBookTypeInfo();
            comType.DataSource = typelist;
            comType.DisplayMember = "BookTypeName";
            comType.ValueMember = "BookTypeID";

            dgv_bookinfo.DataSource = list;



            if (list.Rows.Count > 0)
            {

                Loadimg(dgv_bookinfo.Rows[0]);
            }
            else
            {
                this.picimg.Image = null;
                this.txt_remark.Text = "";
            }
        }

        private void ts_AddBook_Click(object sender, EventArgs e)
        {
            Frm_Book _Addui = new Frm_Book(-1);

            if (_Addui.ShowDialog() == System.Windows.Forms.DialogResult.OK)
            {
                LoadBoolByType(tv_BookType.SelectedNode);
            }

        }

        private void tsm_AddUser_Click(object sender, EventArgs e)
        {
            FrmAddUser _FrmAddUser = new FrmAddUser();
            _FrmAddUser.ShowDialog();
        }

        private void tsm_ModifyPwd_Click(object sender, EventArgs e)
        {
            FrmUpdPwd _FrmUpdPwd = new FrmUpdPwd(this.lbladmin.Text);
            _FrmUpdPwd.ShowDialog();
        }

        private void tsm_DelUser_Click(object sender, EventArgs e)
        {
            FrmDelUser _FrmDelUser = new FrmDelUser();
            _FrmDelUser.ShowDialog();
        }

        private void tsm_AddBookType_Click(object sender, EventArgs e)
        {
            FrmBookType _FrmBookType = new FrmBookType(-1);
            _FrmBookType.ShowDialog();
        }

        private void tsm_UpdateBookType_Click(object sender, EventArgs e)
        {
            FrmBookType _FrmBookType = new FrmBookType(1);
            _FrmBookType.ShowDialog();
            
        }

        private void tsm_DelBookType_Click(object sender, EventArgs e)
        {
            if (tv_BookType.SelectedNode.Tag is BookTypeInfo)
            {
                DialogResult result = MessageBox.Show("是否删除", "提示", MessageBoxButtons.YesNo, MessageBoxIcon.Information);
                if (result == DialogResult.Yes)
                {
                    try
                    {
                        BookTypeInfo bi = tv_BookType.SelectedNode.Tag as BookTypeInfo;
                        BookTypeService.DeleteBookTypeInfo(bi.BookTypeID);
                      
                        MessageBox.Show("删除成功", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        LoadLeftView();
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message);
                    }
                }
            }
            else
            {
                MessageBox.Show("请选择要删除的图书类型", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void tsm_Detail_Click(object sender, EventArgs e)
        {
            FrmBookType _FrmBookType = new FrmBookType(0);
            _FrmBookType.ShowDialog();
        }

        private void tsm_Exit_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void left_refresh_Click(object sender, EventArgs e)
        {
            LoadLeftView();
        }

        private void LinkAuthor_Click(object sender, EventArgs e)
        {
            Author _Author = new Author();
            _Author.ShowDialog();
        }

        private void dgv_bookinfo_RowEnter(object sender, DataGridViewCellEventArgs e)
        {
            if (dgv_bookinfo.CurrentRow == null) return;

             int rowIndex = e.RowIndex;//获取当前行  

             Loadimg(dgv_bookinfo.Rows[rowIndex]);
 
        }

        private void Loadimg(DataGridViewRow _Var)
        {
            try
            {
                byte[] imgPho = _Var.Cells["ConverImage"].Value as byte[];
                using (System.IO.MemoryStream ms = new System.IO.MemoryStream(imgPho))
                {
                    this.picimg.Image = System.Drawing.Image.FromStream(ms);
                }
            }
            catch
            {
                this.picimg.Image = null;
            }


            this.txt_remark.Text = _Var.Cells["Summary"].Value as string;
        }

        private void tsm_updatebook_Click(object sender, EventArgs e)
        {
            if (dgv_bookinfo.CurrentRow != null)
            {
               Frm_Book _FrmBook=new Frm_Book((int)dgv_bookinfo.CurrentRow.Cells["BookID"].Value);
               _FrmBook.ShowDialog();

               LoadBoolByType(tv_BookType.SelectedNode);
            }
        }

        private void tsm_delBook_Click(object sender, EventArgs e)
        {
            if (dgv_bookinfo.CurrentRow != null)
            {
                BookInfoService.DeleteBookInfo((int)dgv_bookinfo.CurrentRow.Cells["BookID"].Value);
                LoadBoolByType(tv_BookType.SelectedNode);
            }
        }

        private void groupBox_Paint(object sender, PaintEventArgs e)
        {
            GroupBox _curBox = (GroupBox)sender;
            Function.DrawGroupBox(e, _curBox);
        }

       
    }
}
