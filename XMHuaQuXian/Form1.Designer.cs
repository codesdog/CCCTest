namespace DrawTables
{
    partial class FrmMain
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmMain));
            this.btn_Line = new System.Windows.Forms.Button();
            this.btn_Cake = new System.Windows.Forms.Button();
            this.btn_rect = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // btn_Line
            // 
            this.btn_Line.Location = new System.Drawing.Point(12, 12);
            this.btn_Line.Name = "btn_Line";
            this.btn_Line.Size = new System.Drawing.Size(102, 46);
            this.btn_Line.TabIndex = 0;
            this.btn_Line.Text = "曲线(叠加) (&L)";
            this.btn_Line.UseVisualStyleBackColor = true;
            this.btn_Line.Click += new System.EventHandler(this.btn_Line_Click);
            // 
            // btn_Cake
            // 
            this.btn_Cake.Location = new System.Drawing.Point(134, 12);
            this.btn_Cake.Name = "btn_Cake";
            this.btn_Cake.Size = new System.Drawing.Size(102, 46);
            this.btn_Cake.TabIndex = 1;
            this.btn_Cake.Text = "圆饼图 (&C)";
            this.btn_Cake.UseVisualStyleBackColor = true;
            this.btn_Cake.Click += new System.EventHandler(this.btn_Cake_Click);
            // 
            // btn_rect
            // 
            this.btn_rect.Location = new System.Drawing.Point(256, 12);
            this.btn_rect.Name = "btn_rect";
            this.btn_rect.Size = new System.Drawing.Size(102, 46);
            this.btn_rect.TabIndex = 2;
            this.btn_rect.Text = "直方图 (&R)";
            this.btn_rect.UseVisualStyleBackColor = true;
            this.btn_rect.Click += new System.EventHandler(this.btn_rect_Click);
            // 
            // FrmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoValidate = System.Windows.Forms.AutoValidate.EnableAllowFocusChange;
            this.ClientSize = new System.Drawing.Size(369, 71);
            this.Controls.Add(this.btn_rect);
            this.Controls.Add(this.btn_Cake);
            this.Controls.Add(this.btn_Line);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FrmMain";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "控制绘图主窗体";
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btn_Line;
        private System.Windows.Forms.Button btn_Cake;
        private System.Windows.Forms.Button btn_rect;
    }
}

