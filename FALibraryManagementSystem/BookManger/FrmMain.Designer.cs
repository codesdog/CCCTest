namespace Jackone
{
    partial class FrmMain
    {
        /// <summary>
        /// 設計工具所需的變數。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// 清除任何使用中的資源。
        /// </summary>
        /// <param name="disposing">如果應該處置 Managed 資源則為 true，否則為 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form 設計工具產生的程式碼

        /// <summary>
        /// 此為設計工具支援所需的方法 - 請勿使用程式碼編輯器
        /// 修改這個方法的內容。
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmMain));
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.系统管理ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.用户管理ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.tsm_ModifyPwd = new System.Windows.Forms.ToolStripMenuItem();
            this.tsm_AddUser = new System.Windows.Forms.ToolStripMenuItem();
            this.tsm_DelUser = new System.Windows.Forms.ToolStripMenuItem();
            this.图书管理ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ts_AddBook = new System.Windows.Forms.ToolStripMenuItem();
            this.tsm_updatebook = new System.Windows.Forms.ToolStripMenuItem();
            this.tsm_delBook = new System.Windows.Forms.ToolStripMenuItem();
            this.图书类型ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.tsm_AddBookType = new System.Windows.Forms.ToolStripMenuItem();
            this.tsm_UpdateBookType = new System.Windows.Forms.ToolStripMenuItem();
            this.tsm_DelBookType = new System.Windows.Forms.ToolStripMenuItem();
            this.tsm_Detail = new System.Windows.Forms.ToolStripMenuItem();
            this.LinkAuthor = new System.Windows.Forms.ToolStripMenuItem();
            this.tsm_Exit = new System.Windows.Forms.ToolStripMenuItem();
            this.statusStrip1 = new System.Windows.Forms.StatusStrip();
            this.toolStripStatusLabel1 = new System.Windows.Forms.ToolStripStatusLabel();
            this.lbladmin = new System.Windows.Forms.ToolStripStatusLabel();
            this.lbltime = new System.Windows.Forms.ToolStripStatusLabel();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.tv_BookType = new System.Windows.Forms.TreeView();
            this.contextMenuStrip1 = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.left_add = new System.Windows.Forms.ToolStripMenuItem();
            this.left_update = new System.Windows.Forms.ToolStripMenuItem();
            this.left_detail = new System.Windows.Forms.ToolStripMenuItem();
            this.left_del = new System.Windows.Forms.ToolStripMenuItem();
            this.left_refresh = new System.Windows.Forms.ToolStripMenuItem();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.dgv_bookinfo = new System.Windows.Forms.DataGridView();
            this.BookID = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.BookName = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.comType = new System.Windows.Forms.DataGridViewComboBoxColumn();
            this.Author = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Press = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.PubData = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Pricing = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Page = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ConverImage = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Summary = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.groupBox5 = new System.Windows.Forms.GroupBox();
            this.txt_remark = new System.Windows.Forms.TextBox();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            this.picimg = new System.Windows.Forms.PictureBox();
            this.imageListLeft = new System.Windows.Forms.ImageList(this.components);
            this.menuStrip1.SuspendLayout();
            this.statusStrip1.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.contextMenuStrip1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_bookinfo)).BeginInit();
            this.groupBox3.SuspendLayout();
            this.groupBox5.SuspendLayout();
            this.groupBox4.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picimg)).BeginInit();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.BackColor = System.Drawing.SystemColors.Control;
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.系统管理ToolStripMenuItem,
            this.图书管理ToolStripMenuItem,
            this.图书类型ToolStripMenuItem,
            this.LinkAuthor,
            this.tsm_Exit});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(1038, 25);
            this.menuStrip1.TabIndex = 0;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // 系统管理ToolStripMenuItem
            // 
            this.系统管理ToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.用户管理ToolStripMenuItem});
            this.系统管理ToolStripMenuItem.Name = "系统管理ToolStripMenuItem";
            this.系统管理ToolStripMenuItem.Size = new System.Drawing.Size(68, 21);
            this.系统管理ToolStripMenuItem.Text = "系统管理";
            // 
            // 用户管理ToolStripMenuItem
            // 
            this.用户管理ToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tsm_ModifyPwd,
            this.tsm_AddUser,
            this.tsm_DelUser});
            this.用户管理ToolStripMenuItem.Name = "用户管理ToolStripMenuItem";
            this.用户管理ToolStripMenuItem.Size = new System.Drawing.Size(124, 22);
            this.用户管理ToolStripMenuItem.Text = "用户管理";
            // 
            // tsm_ModifyPwd
            // 
            this.tsm_ModifyPwd.Name = "tsm_ModifyPwd";
            this.tsm_ModifyPwd.Size = new System.Drawing.Size(124, 22);
            this.tsm_ModifyPwd.Text = "修改密码";
            this.tsm_ModifyPwd.Click += new System.EventHandler(this.tsm_ModifyPwd_Click);
            // 
            // tsm_AddUser
            // 
            this.tsm_AddUser.Name = "tsm_AddUser";
            this.tsm_AddUser.Size = new System.Drawing.Size(124, 22);
            this.tsm_AddUser.Text = "增加用户";
            this.tsm_AddUser.Click += new System.EventHandler(this.tsm_AddUser_Click);
            // 
            // tsm_DelUser
            // 
            this.tsm_DelUser.Name = "tsm_DelUser";
            this.tsm_DelUser.Size = new System.Drawing.Size(124, 22);
            this.tsm_DelUser.Text = "删除用户";
            this.tsm_DelUser.Click += new System.EventHandler(this.tsm_DelUser_Click);
            // 
            // 图书管理ToolStripMenuItem
            // 
            this.图书管理ToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.ts_AddBook,
            this.tsm_updatebook,
            this.tsm_delBook});
            this.图书管理ToolStripMenuItem.Name = "图书管理ToolStripMenuItem";
            this.图书管理ToolStripMenuItem.Size = new System.Drawing.Size(68, 21);
            this.图书管理ToolStripMenuItem.Text = "图书管理";
            // 
            // ts_AddBook
            // 
            this.ts_AddBook.Name = "ts_AddBook";
            this.ts_AddBook.Size = new System.Drawing.Size(124, 22);
            this.ts_AddBook.Text = "新增图书";
            this.ts_AddBook.Click += new System.EventHandler(this.ts_AddBook_Click);
            // 
            // tsm_updatebook
            // 
            this.tsm_updatebook.Name = "tsm_updatebook";
            this.tsm_updatebook.Size = new System.Drawing.Size(124, 22);
            this.tsm_updatebook.Text = "修改图书";
            this.tsm_updatebook.Click += new System.EventHandler(this.tsm_updatebook_Click);
            // 
            // tsm_delBook
            // 
            this.tsm_delBook.Name = "tsm_delBook";
            this.tsm_delBook.Size = new System.Drawing.Size(124, 22);
            this.tsm_delBook.Text = "删除图书";
            this.tsm_delBook.Click += new System.EventHandler(this.tsm_delBook_Click);
            // 
            // 图书类型ToolStripMenuItem
            // 
            this.图书类型ToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tsm_AddBookType,
            this.tsm_UpdateBookType,
            this.tsm_DelBookType,
            this.tsm_Detail});
            this.图书类型ToolStripMenuItem.Name = "图书类型ToolStripMenuItem";
            this.图书类型ToolStripMenuItem.Size = new System.Drawing.Size(68, 21);
            this.图书类型ToolStripMenuItem.Text = "类型管理";
            // 
            // tsm_AddBookType
            // 
            this.tsm_AddBookType.Name = "tsm_AddBookType";
            this.tsm_AddBookType.Size = new System.Drawing.Size(100, 22);
            this.tsm_AddBookType.Text = "新增";
            this.tsm_AddBookType.Click += new System.EventHandler(this.tsm_AddBookType_Click);
            // 
            // tsm_UpdateBookType
            // 
            this.tsm_UpdateBookType.Name = "tsm_UpdateBookType";
            this.tsm_UpdateBookType.Size = new System.Drawing.Size(100, 22);
            this.tsm_UpdateBookType.Text = "修改";
            this.tsm_UpdateBookType.Click += new System.EventHandler(this.tsm_UpdateBookType_Click);
            // 
            // tsm_DelBookType
            // 
            this.tsm_DelBookType.Name = "tsm_DelBookType";
            this.tsm_DelBookType.Size = new System.Drawing.Size(100, 22);
            this.tsm_DelBookType.Text = "删除";
            this.tsm_DelBookType.Click += new System.EventHandler(this.tsm_DelBookType_Click);
            // 
            // tsm_Detail
            // 
            this.tsm_Detail.Name = "tsm_Detail";
            this.tsm_Detail.Size = new System.Drawing.Size(100, 22);
            this.tsm_Detail.Text = "详细";
            this.tsm_Detail.Click += new System.EventHandler(this.tsm_Detail_Click);
            // 
            // LinkAuthor
            // 
            this.LinkAuthor.Name = "LinkAuthor";
            this.LinkAuthor.Size = new System.Drawing.Size(68, 21);
            this.LinkAuthor.Text = "联系作者";
            this.LinkAuthor.Click += new System.EventHandler(this.LinkAuthor_Click);
            // 
            // tsm_Exit
            // 
            this.tsm_Exit.Name = "tsm_Exit";
            this.tsm_Exit.Size = new System.Drawing.Size(44, 21);
            this.tsm_Exit.Text = "退出";
            this.tsm_Exit.Click += new System.EventHandler(this.tsm_Exit_Click);
            // 
            // statusStrip1
            // 
            this.statusStrip1.GripMargin = new System.Windows.Forms.Padding(2, 2, 0, 2);
            this.statusStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripStatusLabel1,
            this.lbladmin,
            this.lbltime});
            this.statusStrip1.Location = new System.Drawing.Point(0, 600);
            this.statusStrip1.Name = "statusStrip1";
            this.statusStrip1.Size = new System.Drawing.Size(1038, 22);
            this.statusStrip1.SizingGrip = false;
            this.statusStrip1.TabIndex = 1;
            this.statusStrip1.Text = "statusStrip1";
            // 
            // toolStripStatusLabel1
            // 
            this.toolStripStatusLabel1.Name = "toolStripStatusLabel1";
            this.toolStripStatusLabel1.Size = new System.Drawing.Size(80, 17);
            this.toolStripStatusLabel1.Text = "欢迎管理员：";
            // 
            // lbladmin
            // 
            this.lbladmin.Name = "lbladmin";
            this.lbladmin.Size = new System.Drawing.Size(899, 17);
            this.lbladmin.Spring = true;
            this.lbladmin.Text = "admin";
            this.lbladmin.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // lbltime
            // 
            this.lbltime.Name = "lbltime";
            this.lbltime.Size = new System.Drawing.Size(44, 17);
            this.lbltime.Text = "时间：";
            // 
            // timer1
            // 
            this.timer1.Enabled = true;
            this.timer1.Interval = 1000;
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.SystemColors.Control;
            this.groupBox1.Controls.Add(this.tv_BookType);
            this.groupBox1.ForeColor = System.Drawing.SystemColors.ControlText;
            this.groupBox1.Location = new System.Drawing.Point(13, 29);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(200, 568);
            this.groupBox1.TabIndex = 2;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "图书类型";
            this.groupBox1.Paint += new System.Windows.Forms.PaintEventHandler(this.groupBox_Paint);
            // 
            // tv_BookType
            // 
            this.tv_BookType.ContextMenuStrip = this.contextMenuStrip1;
            this.tv_BookType.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tv_BookType.Location = new System.Drawing.Point(3, 17);
            this.tv_BookType.Name = "tv_BookType";
            this.tv_BookType.Size = new System.Drawing.Size(194, 548);
            this.tv_BookType.TabIndex = 0;
            this.tv_BookType.AfterCollapse += new System.Windows.Forms.TreeViewEventHandler(this.tv_BookType_AfterCollapse);
            this.tv_BookType.AfterExpand += new System.Windows.Forms.TreeViewEventHandler(this.tv_BookType_AfterExpand);
            this.tv_BookType.AfterSelect += new System.Windows.Forms.TreeViewEventHandler(this.tv_BookType_AfterSelect);
            // 
            // contextMenuStrip1
            // 
            this.contextMenuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.left_add,
            this.left_update,
            this.left_detail,
            this.left_del,
            this.left_refresh});
            this.contextMenuStrip1.Name = "contextMenuStrip1";
            this.contextMenuStrip1.Size = new System.Drawing.Size(101, 114);
            // 
            // left_add
            // 
            this.left_add.Name = "left_add";
            this.left_add.Size = new System.Drawing.Size(100, 22);
            this.left_add.Text = "新增";
            this.left_add.Click += new System.EventHandler(this.tsm_AddBookType_Click);
            // 
            // left_update
            // 
            this.left_update.Name = "left_update";
            this.left_update.Size = new System.Drawing.Size(100, 22);
            this.left_update.Text = "修改";
            this.left_update.Click += new System.EventHandler(this.tsm_UpdateBookType_Click);
            // 
            // left_detail
            // 
            this.left_detail.Name = "left_detail";
            this.left_detail.Size = new System.Drawing.Size(100, 22);
            this.left_detail.Text = "详细";
            this.left_detail.Click += new System.EventHandler(this.tsm_Detail_Click);
            // 
            // left_del
            // 
            this.left_del.Name = "left_del";
            this.left_del.Size = new System.Drawing.Size(100, 22);
            this.left_del.Text = "删除";
            this.left_del.Click += new System.EventHandler(this.tsm_DelBookType_Click);
            // 
            // left_refresh
            // 
            this.left_refresh.Name = "left_refresh";
            this.left_refresh.Size = new System.Drawing.Size(100, 22);
            this.left_refresh.Text = "刷新";
            this.left_refresh.Click += new System.EventHandler(this.left_refresh_Click);
            // 
            // groupBox2
            // 
            this.groupBox2.BackColor = System.Drawing.SystemColors.Control;
            this.groupBox2.Controls.Add(this.dgv_bookinfo);
            this.groupBox2.Location = new System.Drawing.Point(220, 29);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(818, 356);
            this.groupBox2.TabIndex = 3;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "图书列表";
            this.groupBox2.Paint += new System.Windows.Forms.PaintEventHandler(this.groupBox_Paint);
            // 
            // dgv_bookinfo
            // 
            this.dgv_bookinfo.AllowUserToAddRows = false;
            this.dgv_bookinfo.AllowUserToDeleteRows = false;
            this.dgv_bookinfo.BackgroundColor = System.Drawing.Color.White;
            this.dgv_bookinfo.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv_bookinfo.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.BookID,
            this.BookName,
            this.comType,
            this.Author,
            this.Press,
            this.PubData,
            this.Pricing,
            this.Page,
            this.ConverImage,
            this.Summary});
            this.dgv_bookinfo.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgv_bookinfo.Location = new System.Drawing.Point(3, 17);
            this.dgv_bookinfo.Name = "dgv_bookinfo";
            this.dgv_bookinfo.ReadOnly = true;
            this.dgv_bookinfo.RowTemplate.Height = 23;
            this.dgv_bookinfo.Size = new System.Drawing.Size(812, 336);
            this.dgv_bookinfo.TabIndex = 0;
            this.dgv_bookinfo.RowEnter += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgv_bookinfo_RowEnter);
            // 
            // BookID
            // 
            this.BookID.DataPropertyName = "BookID";
            this.BookID.HeaderText = "图书编号";
            this.BookID.Name = "BookID";
            this.BookID.ReadOnly = true;
            this.BookID.Width = 80;
            // 
            // BookName
            // 
            this.BookName.DataPropertyName = "BookName";
            this.BookName.HeaderText = "书名";
            this.BookName.Name = "BookName";
            this.BookName.ReadOnly = true;
            this.BookName.Width = 130;
            // 
            // comType
            // 
            this.comType.DataPropertyName = "TypeID";
            this.comType.DisplayStyle = System.Windows.Forms.DataGridViewComboBoxDisplayStyle.Nothing;
            this.comType.HeaderText = "图书类型";
            this.comType.Name = "comType";
            this.comType.ReadOnly = true;
            this.comType.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.comType.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            this.comType.Width = 110;
            // 
            // Author
            // 
            this.Author.DataPropertyName = "Author";
            this.Author.HeaderText = "作者";
            this.Author.Name = "Author";
            this.Author.ReadOnly = true;
            // 
            // Press
            // 
            this.Press.DataPropertyName = "Press";
            this.Press.HeaderText = "出版社";
            this.Press.Name = "Press";
            this.Press.ReadOnly = true;
            this.Press.Width = 110;
            // 
            // PubData
            // 
            this.PubData.DataPropertyName = "PubData";
            this.PubData.HeaderText = "出版时间";
            this.PubData.Name = "PubData";
            this.PubData.ReadOnly = true;
            this.PubData.Width = 120;
            // 
            // Pricing
            // 
            this.Pricing.DataPropertyName = "Pricing";
            this.Pricing.HeaderText = "价格";
            this.Pricing.Name = "Pricing";
            this.Pricing.ReadOnly = true;
            this.Pricing.Width = 71;
            // 
            // Page
            // 
            this.Page.DataPropertyName = "Page";
            this.Page.HeaderText = "总页数";
            this.Page.Name = "Page";
            this.Page.ReadOnly = true;
            this.Page.Width = 80;
            // 
            // ConverImage
            // 
            this.ConverImage.DataPropertyName = "ConverImage";
            this.ConverImage.HeaderText = "ConverImage";
            this.ConverImage.Name = "ConverImage";
            this.ConverImage.ReadOnly = true;
            this.ConverImage.Visible = false;
            // 
            // Summary
            // 
            this.Summary.DataPropertyName = "Summary";
            this.Summary.HeaderText = "Summary";
            this.Summary.Name = "Summary";
            this.Summary.ReadOnly = true;
            this.Summary.Visible = false;
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.groupBox5);
            this.groupBox3.Controls.Add(this.groupBox4);
            this.groupBox3.Location = new System.Drawing.Point(220, 391);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(801, 206);
            this.groupBox3.TabIndex = 4;
            this.groupBox3.TabStop = false;
            this.groupBox3.Paint += new System.Windows.Forms.PaintEventHandler(this.groupBox_Paint);
            // 
            // groupBox5
            // 
            this.groupBox5.Controls.Add(this.txt_remark);
            this.groupBox5.Controls.Add(this.textBox1);
            this.groupBox5.Location = new System.Drawing.Point(221, 20);
            this.groupBox5.Name = "groupBox5";
            this.groupBox5.Size = new System.Drawing.Size(580, 180);
            this.groupBox5.TabIndex = 1;
            this.groupBox5.TabStop = false;
            this.groupBox5.Text = "图书简介";
            this.groupBox5.Paint += new System.Windows.Forms.PaintEventHandler(this.groupBox_Paint);
            // 
            // txt_remark
            // 
            this.txt_remark.Dock = System.Windows.Forms.DockStyle.Fill;
            this.txt_remark.Location = new System.Drawing.Point(3, 17);
            this.txt_remark.Multiline = true;
            this.txt_remark.Name = "txt_remark";
            this.txt_remark.ReadOnly = true;
            this.txt_remark.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.txt_remark.Size = new System.Drawing.Size(574, 160);
            this.txt_remark.TabIndex = 1;
            // 
            // textBox1
            // 
            this.textBox1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.textBox1.Location = new System.Drawing.Point(3, 17);
            this.textBox1.Multiline = true;
            this.textBox1.Name = "textBox1";
            this.textBox1.ReadOnly = true;
            this.textBox1.Size = new System.Drawing.Size(574, 160);
            this.textBox1.TabIndex = 0;
            // 
            // groupBox4
            // 
            this.groupBox4.Controls.Add(this.picimg);
            this.groupBox4.Location = new System.Drawing.Point(6, 20);
            this.groupBox4.Name = "groupBox4";
            this.groupBox4.Size = new System.Drawing.Size(200, 180);
            this.groupBox4.TabIndex = 0;
            this.groupBox4.TabStop = false;
            this.groupBox4.Text = "图书封面";
            this.groupBox4.Paint += new System.Windows.Forms.PaintEventHandler(this.groupBox_Paint);
            // 
            // picimg
            // 
            this.picimg.Location = new System.Drawing.Point(7, 17);
            this.picimg.Name = "picimg";
            this.picimg.Size = new System.Drawing.Size(187, 157);
            this.picimg.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.picimg.TabIndex = 0;
            this.picimg.TabStop = false;
            // 
            // imageListLeft
            // 
            this.imageListLeft.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("imageListLeft.ImageStream")));
            this.imageListLeft.TransparentColor = System.Drawing.Color.Transparent;
            this.imageListLeft.Images.SetKeyName(0, "0.jpg");
            this.imageListLeft.Images.SetKeyName(1, "1.jpg");
            // 
            // FrmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Control;
            this.ClientSize = new System.Drawing.Size(1038, 622);
            this.Controls.Add(this.groupBox3);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.statusStrip1);
            this.Controls.Add(this.menuStrip1);
            this.DoubleBuffered = true;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "FrmMain";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "图书管理系统";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.FrmMain_FormClosing);
            this.Load += new System.EventHandler(this.FrmMain_Load);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.statusStrip1.ResumeLayout(false);
            this.statusStrip1.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.contextMenuStrip1.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgv_bookinfo)).EndInit();
            this.groupBox3.ResumeLayout(false);
            this.groupBox5.ResumeLayout(false);
            this.groupBox5.PerformLayout();
            this.groupBox4.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.picimg)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem 系统管理ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem 用户管理ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem tsm_ModifyPwd;
        private System.Windows.Forms.ToolStripMenuItem tsm_AddUser;
        private System.Windows.Forms.ToolStripMenuItem tsm_DelUser;
        private System.Windows.Forms.ToolStripMenuItem 图书管理ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ts_AddBook;
        private System.Windows.Forms.ToolStripMenuItem tsm_updatebook;
        private System.Windows.Forms.ToolStripMenuItem tsm_delBook;
        private System.Windows.Forms.ToolStripMenuItem 图书类型ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem tsm_AddBookType;
        private System.Windows.Forms.ToolStripMenuItem tsm_UpdateBookType;
        private System.Windows.Forms.ToolStripMenuItem tsm_DelBookType;
        private System.Windows.Forms.StatusStrip statusStrip1;
        private System.Windows.Forms.ToolStripStatusLabel toolStripStatusLabel1;
        private System.Windows.Forms.ToolStripStatusLabel lbladmin;
        private System.Windows.Forms.ToolStripStatusLabel lbltime;
        private System.Windows.Forms.Timer timer1;
        private System.Windows.Forms.ToolStripMenuItem LinkAuthor;
        private System.Windows.Forms.ToolStripMenuItem tsm_Exit;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.GroupBox groupBox5;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.GroupBox groupBox4;
        private System.Windows.Forms.TreeView tv_BookType;
        private System.Windows.Forms.ImageList imageListLeft;
        private System.Windows.Forms.DataGridView dgv_bookinfo;
        private System.Windows.Forms.ToolStripMenuItem tsm_Detail;
        private System.Windows.Forms.ContextMenuStrip contextMenuStrip1;
        private System.Windows.Forms.ToolStripMenuItem left_add;
        private System.Windows.Forms.ToolStripMenuItem left_update;
        private System.Windows.Forms.ToolStripMenuItem left_detail;
        private System.Windows.Forms.ToolStripMenuItem left_del;
        private System.Windows.Forms.ToolStripMenuItem left_refresh;
        private System.Windows.Forms.TextBox txt_remark;
        private System.Windows.Forms.PictureBox picimg;
        private System.Windows.Forms.DataGridViewTextBoxColumn BookID;
        private System.Windows.Forms.DataGridViewTextBoxColumn BookName;
        private System.Windows.Forms.DataGridViewComboBoxColumn comType;
        private System.Windows.Forms.DataGridViewTextBoxColumn Author;
        private System.Windows.Forms.DataGridViewTextBoxColumn Press;
        private System.Windows.Forms.DataGridViewTextBoxColumn PubData;
        private System.Windows.Forms.DataGridViewTextBoxColumn Pricing;
        private System.Windows.Forms.DataGridViewTextBoxColumn Page;
        private System.Windows.Forms.DataGridViewTextBoxColumn ConverImage;
        private System.Windows.Forms.DataGridViewTextBoxColumn Summary;
    }
}

