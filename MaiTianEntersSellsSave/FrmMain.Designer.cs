namespace HDManagementSoft
{
    partial class FrmMain
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmMain));
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.添加商品ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.卖出商品ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.商品统计ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.库存统计ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.销量统计ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.用户管理ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.修改密码toolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.帮助ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.退出XToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.pParent = new System.Windows.Forms.Panel();
            this.statusStrip1 = new System.Windows.Forms.StatusStrip();
            this.slUser = new System.Windows.Forms.ToolStripStatusLabel();
            this.slDate = new System.Windows.Forms.ToolStripStatusLabel();
            this.slTime = new System.Windows.Forms.ToolStripStatusLabel();
            this.menuStrip1.SuspendLayout();
            this.statusStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.添加商品ToolStripMenuItem,
            this.卖出商品ToolStripMenuItem,
            this.商品统计ToolStripMenuItem,
            this.用户管理ToolStripMenuItem,
            this.修改密码toolStripMenuItem,
            this.帮助ToolStripMenuItem,
            this.退出XToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(784, 25);
            this.menuStrip1.TabIndex = 0;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // 添加商品ToolStripMenuItem
            // 
            this.添加商品ToolStripMenuItem.Name = "添加商品ToolStripMenuItem";
            this.添加商品ToolStripMenuItem.Size = new System.Drawing.Size(108, 21);
            this.添加商品ToolStripMenuItem.Text = "添加修改商品(&A)";
            this.添加商品ToolStripMenuItem.Click += new System.EventHandler(this.添加商品ToolStripMenuItem_Click);
            // 
            // 卖出商品ToolStripMenuItem
            // 
            this.卖出商品ToolStripMenuItem.Name = "卖出商品ToolStripMenuItem";
            this.卖出商品ToolStripMenuItem.Size = new System.Drawing.Size(108, 21);
            this.卖出商品ToolStripMenuItem.Text = "商器售出登记(&R)";
            this.卖出商品ToolStripMenuItem.Click += new System.EventHandler(this.卖出商品ToolStripMenuItem_Click);
            // 
            // 商品统计ToolStripMenuItem
            // 
            this.商品统计ToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.库存统计ToolStripMenuItem,
            this.销量统计ToolStripMenuItem});
            this.商品统计ToolStripMenuItem.Name = "商品统计ToolStripMenuItem";
            this.商品统计ToolStripMenuItem.Size = new System.Drawing.Size(83, 21);
            this.商品统计ToolStripMenuItem.Text = "商品统计(&S)";
            // 
            // 库存统计ToolStripMenuItem
            // 
            this.库存统计ToolStripMenuItem.Name = "库存统计ToolStripMenuItem";
            this.库存统计ToolStripMenuItem.Size = new System.Drawing.Size(140, 22);
            this.库存统计ToolStripMenuItem.Text = "库存统计(&L)";
            this.库存统计ToolStripMenuItem.Click += new System.EventHandler(this.库存统计ToolStripMenuItem_Click);
            // 
            // 销量统计ToolStripMenuItem
            // 
            this.销量统计ToolStripMenuItem.Name = "销量统计ToolStripMenuItem";
            this.销量统计ToolStripMenuItem.Size = new System.Drawing.Size(140, 22);
            this.销量统计ToolStripMenuItem.Text = "销量统计(&X)";
            this.销量统计ToolStripMenuItem.Click += new System.EventHandler(this.销量统计ToolStripMenuItem_Click);
            // 
            // 用户管理ToolStripMenuItem
            // 
            this.用户管理ToolStripMenuItem.Name = "用户管理ToolStripMenuItem";
            this.用户管理ToolStripMenuItem.Size = new System.Drawing.Size(88, 21);
            this.用户管理ToolStripMenuItem.Text = "用户管理(&M)";
            this.用户管理ToolStripMenuItem.Click += new System.EventHandler(this.用户管理ToolStripMenuItem_Click);
            // 
            // 修改密码toolStripMenuItem
            // 
            this.修改密码toolStripMenuItem.Name = "修改密码toolStripMenuItem";
            this.修改密码toolStripMenuItem.Size = new System.Drawing.Size(85, 21);
            this.修改密码toolStripMenuItem.Text = "修改密码(&U)";
            this.修改密码toolStripMenuItem.Click += new System.EventHandler(this.修改密码toolStripMenuItem_Click);
            // 
            // 帮助ToolStripMenuItem
            // 
            this.帮助ToolStripMenuItem.Name = "帮助ToolStripMenuItem";
            this.帮助ToolStripMenuItem.Size = new System.Drawing.Size(61, 21);
            this.帮助ToolStripMenuItem.Text = "帮助(&H)";
            this.帮助ToolStripMenuItem.Click += new System.EventHandler(this.帮助ToolStripMenuItem_Click);
            // 
            // 退出XToolStripMenuItem
            // 
            this.退出XToolStripMenuItem.Name = "退出XToolStripMenuItem";
            this.退出XToolStripMenuItem.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Alt | System.Windows.Forms.Keys.F4)));
            this.退出XToolStripMenuItem.Size = new System.Drawing.Size(60, 21);
            this.退出XToolStripMenuItem.Text = "退出(&X)";
            this.退出XToolStripMenuItem.Click += new System.EventHandler(this.退出XToolStripMenuItem_Click);
            // 
            // pParent
            // 
            this.pParent.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.pParent.Location = new System.Drawing.Point(0, 25);
            this.pParent.Name = "pParent";
            this.pParent.Size = new System.Drawing.Size(784, 513);
            this.pParent.TabIndex = 1;
            // 
            // statusStrip1
            // 
            this.statusStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.slUser,
            this.slDate,
            this.slTime});
            this.statusStrip1.Location = new System.Drawing.Point(0, 540);
            this.statusStrip1.Name = "statusStrip1";
            this.statusStrip1.Size = new System.Drawing.Size(784, 22);
            this.statusStrip1.TabIndex = 2;
            // 
            // slUser
            // 
            this.slUser.Name = "slUser";
            this.slUser.Size = new System.Drawing.Size(56, 17);
            this.slUser.Text = "用户名：";
            // 
            // slDate
            // 
            this.slDate.Name = "slDate";
            this.slDate.Size = new System.Drawing.Size(44, 17);
            this.slDate.Text = "日期：";
            // 
            // slTime
            // 
            this.slTime.Name = "slTime";
            this.slTime.Size = new System.Drawing.Size(44, 17);
            this.slTime.Text = "时间：";
            // 
            // FrmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(784, 562);
            this.Controls.Add(this.statusStrip1);
            this.Controls.Add(this.pParent);
            this.Controls.Add(this.menuStrip1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            //this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "FrmMain";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.FrmMain_FormClosing);
            this.Load += new System.EventHandler(this.FrmMain_Load);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.statusStrip1.ResumeLayout(false);
            this.statusStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem 添加商品ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem 卖出商品ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem 商品统计ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem 用户管理ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem 帮助ToolStripMenuItem;
        private System.Windows.Forms.Panel pParent;
        private System.Windows.Forms.StatusStrip statusStrip1;
        private System.Windows.Forms.ToolStripStatusLabel slUser;
        private System.Windows.Forms.ToolStripStatusLabel slDate;
        private System.Windows.Forms.ToolStripStatusLabel slTime;
        private System.Windows.Forms.ToolStripMenuItem 库存统计ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem 销量统计ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem 退出XToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem 修改密码toolStripMenuItem;
    }
}