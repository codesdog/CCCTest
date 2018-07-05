namespace CJP
{
    partial class mainform
    {
        /// <summary>
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows 窗体设计器生成的代码

        /// <summary>
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(mainform));
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.设置ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.开始抽奖ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.停止抽奖ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.滚动ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.停止滚动ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.切换奖项ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.查看结果ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.退出ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.设置ToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.设置奖项ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.导入名单ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.参数设置ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.帮助ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.关于ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.statusStrip1 = new System.Windows.Forms.StatusStrip();
            this.toolStripStatusLabel1 = new System.Windows.Forms.ToolStripStatusLabel();
            this.toolStripStatusLabel2 = new System.Windows.Forms.ToolStripStatusLabel();
            this.menuStrip1.SuspendLayout();
            this.statusStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.设置ToolStripMenuItem,
            this.设置ToolStripMenuItem1,
            this.帮助ToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(292, 24);
            this.menuStrip1.TabIndex = 0;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // 设置ToolStripMenuItem
            // 
            this.设置ToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.开始抽奖ToolStripMenuItem,
            this.停止抽奖ToolStripMenuItem,
            this.滚动ToolStripMenuItem,
            this.停止滚动ToolStripMenuItem,
            this.切换奖项ToolStripMenuItem,
            this.查看结果ToolStripMenuItem,
            this.退出ToolStripMenuItem});
            this.设置ToolStripMenuItem.Name = "设置ToolStripMenuItem";
            this.设置ToolStripMenuItem.Size = new System.Drawing.Size(41, 20);
            this.设置ToolStripMenuItem.Text = "抽奖";
            // 
            // 开始抽奖ToolStripMenuItem
            // 
            this.开始抽奖ToolStripMenuItem.Name = "开始抽奖ToolStripMenuItem";
            this.开始抽奖ToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.开始抽奖ToolStripMenuItem.Text = "开始抽奖";
            this.开始抽奖ToolStripMenuItem.Click += new System.EventHandler(this.开始抽奖ToolStripMenuItem_Click);
            // 
            // 停止抽奖ToolStripMenuItem
            // 
            this.停止抽奖ToolStripMenuItem.Name = "停止抽奖ToolStripMenuItem";
            this.停止抽奖ToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.停止抽奖ToolStripMenuItem.Text = "停止抽奖";
            this.停止抽奖ToolStripMenuItem.Click += new System.EventHandler(this.停止抽奖ToolStripMenuItem_Click);
            // 
            // 滚动ToolStripMenuItem
            // 
            this.滚动ToolStripMenuItem.Name = "滚动ToolStripMenuItem";
            this.滚动ToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.滚动ToolStripMenuItem.Text = "滚动";
            this.滚动ToolStripMenuItem.Click += new System.EventHandler(this.滚动ToolStripMenuItem_Click);
            // 
            // 停止滚动ToolStripMenuItem
            // 
            this.停止滚动ToolStripMenuItem.Name = "停止滚动ToolStripMenuItem";
            this.停止滚动ToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.停止滚动ToolStripMenuItem.Text = "停止滚动";
            this.停止滚动ToolStripMenuItem.Click += new System.EventHandler(this.停止滚动ToolStripMenuItem_Click);
            // 
            // 切换奖项ToolStripMenuItem
            // 
            this.切换奖项ToolStripMenuItem.Name = "切换奖项ToolStripMenuItem";
            this.切换奖项ToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.切换奖项ToolStripMenuItem.Text = "切换奖项";
            this.切换奖项ToolStripMenuItem.Click += new System.EventHandler(this.切换奖项ToolStripMenuItem_Click);
            // 
            // 查看结果ToolStripMenuItem
            // 
            this.查看结果ToolStripMenuItem.Name = "查看结果ToolStripMenuItem";
            this.查看结果ToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.查看结果ToolStripMenuItem.Text = "查看结果";
            this.查看结果ToolStripMenuItem.Click += new System.EventHandler(this.查看结果ToolStripMenuItem_Click);
            // 
            // 退出ToolStripMenuItem
            // 
            this.退出ToolStripMenuItem.Name = "退出ToolStripMenuItem";
            this.退出ToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.退出ToolStripMenuItem.Text = "退出";
            this.退出ToolStripMenuItem.Click += new System.EventHandler(this.退出ToolStripMenuItem_Click);
            // 
            // 设置ToolStripMenuItem1
            // 
            this.设置ToolStripMenuItem1.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.设置奖项ToolStripMenuItem,
            this.导入名单ToolStripMenuItem,
            this.参数设置ToolStripMenuItem});
            this.设置ToolStripMenuItem1.Name = "设置ToolStripMenuItem1";
            this.设置ToolStripMenuItem1.Size = new System.Drawing.Size(41, 20);
            this.设置ToolStripMenuItem1.Text = "设置";
            // 
            // 设置奖项ToolStripMenuItem
            // 
            this.设置奖项ToolStripMenuItem.Name = "设置奖项ToolStripMenuItem";
            this.设置奖项ToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.设置奖项ToolStripMenuItem.Text = "设置奖项";
            this.设置奖项ToolStripMenuItem.Click += new System.EventHandler(this.设置奖项ToolStripMenuItem_Click);
            // 
            // 导入名单ToolStripMenuItem
            // 
            this.导入名单ToolStripMenuItem.Name = "导入名单ToolStripMenuItem";
            this.导入名单ToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.导入名单ToolStripMenuItem.Text = "导入名单";
            this.导入名单ToolStripMenuItem.Click += new System.EventHandler(this.导入名单ToolStripMenuItem_Click);
            // 
            // 参数设置ToolStripMenuItem
            // 
            this.参数设置ToolStripMenuItem.Name = "参数设置ToolStripMenuItem";
            this.参数设置ToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.参数设置ToolStripMenuItem.Text = "参数设置";
            this.参数设置ToolStripMenuItem.Click += new System.EventHandler(this.参数设置ToolStripMenuItem_Click);
            // 
            // 帮助ToolStripMenuItem
            // 
            this.帮助ToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.关于ToolStripMenuItem});
            this.帮助ToolStripMenuItem.Name = "帮助ToolStripMenuItem";
            this.帮助ToolStripMenuItem.Size = new System.Drawing.Size(41, 20);
            this.帮助ToolStripMenuItem.Text = "帮助";
            // 
            // 关于ToolStripMenuItem
            // 
            this.关于ToolStripMenuItem.Name = "关于ToolStripMenuItem";
            this.关于ToolStripMenuItem.Size = new System.Drawing.Size(94, 22);
            this.关于ToolStripMenuItem.Text = "关于";
            this.关于ToolStripMenuItem.Click += new System.EventHandler(this.关于ToolStripMenuItem_Click);
            // 
            // statusStrip1
            // 
            this.statusStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripStatusLabel1,
            this.toolStripStatusLabel2});
            this.statusStrip1.Location = new System.Drawing.Point(0, 244);
            this.statusStrip1.Name = "statusStrip1";
            this.statusStrip1.Size = new System.Drawing.Size(292, 22);
            this.statusStrip1.TabIndex = 1;
            this.statusStrip1.Text = "statusStrip1";
            // 
            // toolStripStatusLabel1
            // 
            this.toolStripStatusLabel1.Name = "toolStripStatusLabel1";
            this.toolStripStatusLabel1.Size = new System.Drawing.Size(131, 17);
            this.toolStripStatusLabel1.Text = "toolStripStatusLabel1";
            // 
            // toolStripStatusLabel2
            // 
            this.toolStripStatusLabel2.Name = "toolStripStatusLabel2";
            this.toolStripStatusLabel2.Size = new System.Drawing.Size(131, 17);
            this.toolStripStatusLabel2.Text = "toolStripStatusLabel2";
            // 
            // mainform
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(292, 266);
            this.Controls.Add(this.statusStrip1);
            this.Controls.Add(this.menuStrip1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "mainform";
            this.Text = "Form1";
            this.Paint += new System.Windows.Forms.PaintEventHandler(this.mainform_Paint);
            this.KeyDown += new System.Windows.Forms.KeyEventHandler(this.mainform_KeyDown);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.statusStrip1.ResumeLayout(false);
            this.statusStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem 设置ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem 开始抽奖ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem 停止抽奖ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem 设置ToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem 设置奖项ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem 导入名单ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem 帮助ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem 关于ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem 滚动ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem 停止滚动ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem 切换奖项ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem 查看结果ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem 退出ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem 参数设置ToolStripMenuItem;
        private System.Windows.Forms.StatusStrip statusStrip1;
        private System.Windows.Forms.ToolStripStatusLabel toolStripStatusLabel1;
        private System.Windows.Forms.ToolStripStatusLabel toolStripStatusLabel2;
    }
}

