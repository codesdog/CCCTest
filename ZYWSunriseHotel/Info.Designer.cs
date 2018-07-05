namespace 东方日出大酒店
{
    partial class Info
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.TreeNode treeNode18 = new System.Windows.Forms.TreeNode("基本设置");
            System.Windows.Forms.TreeNode treeNode19 = new System.Windows.Forms.TreeNode("退出");
            System.Windows.Forms.TreeNode treeNode20 = new System.Windows.Forms.TreeNode("系统", new System.Windows.Forms.TreeNode[] {
            treeNode18,
            treeNode19});
            System.Windows.Forms.TreeNode treeNode21 = new System.Windows.Forms.TreeNode("新开房间");
            System.Windows.Forms.TreeNode treeNode22 = new System.Windows.Forms.TreeNode("查看账目");
            System.Windows.Forms.TreeNode treeNode23 = new System.Windows.Forms.TreeNode("普通日常管理", new System.Windows.Forms.TreeNode[] {
            treeNode21,
            treeNode22});
            System.Windows.Forms.TreeNode treeNode24 = new System.Windows.Forms.TreeNode("添加员工");
            System.Windows.Forms.TreeNode treeNode25 = new System.Windows.Forms.TreeNode("删除员工");
            System.Windows.Forms.TreeNode treeNode26 = new System.Windows.Forms.TreeNode("员工管理", new System.Windows.Forms.TreeNode[] {
            treeNode24,
            treeNode25});
            System.Windows.Forms.TreeNode treeNode27 = new System.Windows.Forms.TreeNode("添加房间类型");
            System.Windows.Forms.TreeNode treeNode28 = new System.Windows.Forms.TreeNode("删除房间类型");
            System.Windows.Forms.TreeNode treeNode29 = new System.Windows.Forms.TreeNode("显示房间类型");
            System.Windows.Forms.TreeNode treeNode30 = new System.Windows.Forms.TreeNode("房间类型管理", new System.Windows.Forms.TreeNode[] {
            treeNode27,
            treeNode28,
            treeNode29});
            System.Windows.Forms.TreeNode treeNode31 = new System.Windows.Forms.TreeNode("添加客房");
            System.Windows.Forms.TreeNode treeNode32 = new System.Windows.Forms.TreeNode("删除客房");
            System.Windows.Forms.TreeNode treeNode33 = new System.Windows.Forms.TreeNode("显示客房");
            System.Windows.Forms.TreeNode treeNode34 = new System.Windows.Forms.TreeNode("客房管理", new System.Windows.Forms.TreeNode[] {
            treeNode31,
            treeNode32,
            treeNode33});
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.button2 = new System.Windows.Forms.Button();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.d1 = new System.Windows.Forms.DataGridView();
            this.treeView1 = new System.Windows.Forms.TreeView();
            this.button3 = new System.Windows.Forms.Button();
            this.contextMenuStrip1 = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.开房ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.退房ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.查看账目ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.d1)).BeginInit();
            this.contextMenuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.button3);
            this.groupBox1.Controls.Add(this.button2);
            this.groupBox1.Controls.Add(this.textBox1);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.button1);
            this.groupBox1.ForeColor = System.Drawing.Color.Black;
            this.groupBox1.Location = new System.Drawing.Point(145, 13);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(1011, 46);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "房间查询";
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(407, 16);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(1, 1);
            this.button2.TabIndex = 3;
            this.button2.Text = " ";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click_1);
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(140, 19);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(68, 21);
            this.textBox1.TabIndex = 2;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(72, 22);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(47, 12);
            this.label1.TabIndex = 1;
            this.label1.Text = "房间号:";
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(248, 17);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 0;
            this.button1.Text = "查询";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.d1);
            this.groupBox2.ForeColor = System.Drawing.Color.Black;
            this.groupBox2.Location = new System.Drawing.Point(145, 65);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(1014, 596);
            this.groupBox2.TabIndex = 1;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "开房详细信息";
            // 
            // d1
            // 
            this.d1.AllowUserToAddRows = false;
            this.d1.AllowUserToDeleteRows = false;
            dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.d1.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle2;
            this.d1.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.d1.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.DisplayedCells;
            this.d1.BackgroundColor = System.Drawing.Color.White;
            this.d1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.d1.ContextMenuStrip = this.contextMenuStrip1;
            this.d1.Cursor = System.Windows.Forms.Cursors.NoMove2D;
            this.d1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.d1.Location = new System.Drawing.Point(3, 17);
            this.d1.Name = "d1";
            this.d1.ReadOnly = true;
            this.d1.RowTemplate.Height = 23;
            this.d1.Size = new System.Drawing.Size(1008, 576);
            this.d1.TabIndex = 0;
            this.d1.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.d1_CellClick);
            // 
            // treeView1
            // 
            this.treeView1.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.treeView1.Dock = System.Windows.Forms.DockStyle.Left;
            this.treeView1.ItemHeight = 20;
            this.treeView1.Location = new System.Drawing.Point(0, 0);
            this.treeView1.Name = "treeView1";
            treeNode18.Name = "节点2";
            treeNode18.Text = "基本设置";
            treeNode19.Name = "节点7";
            treeNode19.Text = "退出";
            treeNode20.Name = "节点1";
            treeNode20.NodeFont = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            treeNode20.Text = "系统";
            treeNode21.Name = "节点17";
            treeNode21.Text = "新开房间";
            treeNode22.Name = "节点18";
            treeNode22.Text = "查看账目";
            treeNode23.Name = "节点16";
            treeNode23.NodeFont = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            treeNode23.Text = "普通日常管理";
            treeNode24.Name = "节点8";
            treeNode24.Text = "添加员工";
            treeNode25.Name = "节点9";
            treeNode25.Text = "删除员工";
            treeNode26.Name = "节点3";
            treeNode26.NodeFont = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            treeNode26.Text = "员工管理";
            treeNode27.Name = "节点10";
            treeNode27.Text = "添加房间类型";
            treeNode28.Name = "节点11";
            treeNode28.Text = "删除房间类型";
            treeNode29.Name = "节点12";
            treeNode29.Text = "显示房间类型";
            treeNode30.Name = "节点4";
            treeNode30.NodeFont = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            treeNode30.Text = "房间类型管理";
            treeNode31.Name = "节点13";
            treeNode31.Text = "添加客房";
            treeNode32.Name = "节点14";
            treeNode32.Text = "删除客房";
            treeNode33.Name = "节点15";
            treeNode33.Text = "显示客房";
            treeNode34.Name = "节点5";
            treeNode34.NodeFont = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            treeNode34.Text = "客房管理";
            this.treeView1.Nodes.AddRange(new System.Windows.Forms.TreeNode[] {
            treeNode20,
            treeNode23,
            treeNode26,
            treeNode30,
            treeNode34});
            this.treeView1.Size = new System.Drawing.Size(139, 673);
            this.treeView1.TabIndex = 4;
            this.treeView1.AfterSelect += new System.Windows.Forms.TreeViewEventHandler(this.treeView1_AfterSelect);
            // 
            // button3
            // 
            this.button3.Location = new System.Drawing.Point(347, 17);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(61, 23);
            this.button3.TabIndex = 4;
            this.button3.Text = "退房";
            this.button3.UseVisualStyleBackColor = true;
            this.button3.Click += new System.EventHandler(this.button3_Click);
            // 
            // contextMenuStrip1
            // 
            this.contextMenuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.开房ToolStripMenuItem,
            this.退房ToolStripMenuItem,
            this.查看账目ToolStripMenuItem});
            this.contextMenuStrip1.Name = "contextMenuStrip1";
            this.contextMenuStrip1.Size = new System.Drawing.Size(123, 70);
            // 
            // 开房ToolStripMenuItem
            // 
            this.开房ToolStripMenuItem.Name = "开房ToolStripMenuItem";
            this.开房ToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.开房ToolStripMenuItem.Text = "开房";
            this.开房ToolStripMenuItem.Click += new System.EventHandler(this.开房ToolStripMenuItem_Click);
            // 
            // 退房ToolStripMenuItem
            // 
            this.退房ToolStripMenuItem.Name = "退房ToolStripMenuItem";
            this.退房ToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.退房ToolStripMenuItem.Text = "退房";
            this.退房ToolStripMenuItem.Click += new System.EventHandler(this.退房ToolStripMenuItem_Click);
            // 
            // 查看账目ToolStripMenuItem
            // 
            this.查看账目ToolStripMenuItem.Name = "查看账目ToolStripMenuItem";
            this.查看账目ToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.查看账目ToolStripMenuItem.Text = "查看账目";
            this.查看账目ToolStripMenuItem.Click += new System.EventHandler(this.查看账目ToolStripMenuItem_Click);
            // 
            // Info
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1164, 673);
            this.Controls.Add(this.treeView1);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Name = "Info";
            this.ShowIcon = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "操作界面";
            this.Load += new System.EventHandler(this.Info_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.d1)).EndInit();
            this.contextMenuStrip1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.DataGridView d1;
        private System.Windows.Forms.TreeView treeView1;
        public System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.ContextMenuStrip contextMenuStrip1;
        private System.Windows.Forms.ToolStripMenuItem 开房ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem 退房ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem 查看账目ToolStripMenuItem;

    }
}