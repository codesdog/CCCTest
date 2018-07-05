namespace Jackone
{
    partial class Frm_Book
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Frm_Book));
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.txt_Author = new System.Windows.Forms.TextBox();
            this.txt_price = new System.Windows.Forms.TextBox();
            this.txt_page = new System.Windows.Forms.TextBox();
            this.txt_Press = new System.Windows.Forms.TextBox();
            this.txt_time = new System.Windows.Forms.DateTimePicker();
            this.cmb_booktype = new System.Windows.Forms.ComboBox();
            this.txt_BookName = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            this.txt_Summary = new System.Windows.Forms.TextBox();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.BtnLinkimg = new System.Windows.Forms.Button();
            this.ptb_img = new System.Windows.Forms.PictureBox();
            this.BtnOk = new System.Windows.Forms.Button();
            this.BtnExit = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox4.SuspendLayout();
            this.groupBox3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.ptb_img)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.SystemColors.Control;
            this.groupBox1.Controls.Add(this.txt_Author);
            this.groupBox1.Controls.Add(this.txt_price);
            this.groupBox1.Controls.Add(this.txt_page);
            this.groupBox1.Controls.Add(this.txt_Press);
            this.groupBox1.Controls.Add(this.txt_time);
            this.groupBox1.Controls.Add(this.cmb_booktype);
            this.groupBox1.Controls.Add(this.txt_BookName);
            this.groupBox1.Controls.Add(this.label7);
            this.groupBox1.Controls.Add(this.label6);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Location = new System.Drawing.Point(4, 1);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(253, 379);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            // 
            // txt_Author
            // 
            this.txt_Author.Location = new System.Drawing.Point(79, 128);
            this.txt_Author.Name = "txt_Author";
            this.txt_Author.Size = new System.Drawing.Size(168, 21);
            this.txt_Author.TabIndex = 13;
            // 
            // txt_price
            // 
            this.txt_price.Location = new System.Drawing.Point(79, 180);
            this.txt_price.Name = "txt_price";
            this.txt_price.Size = new System.Drawing.Size(168, 21);
            this.txt_price.TabIndex = 12;
            this.txt_price.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txt_price_KeyPress);
            // 
            // txt_page
            // 
            this.txt_page.Location = new System.Drawing.Point(79, 229);
            this.txt_page.Name = "txt_page";
            this.txt_page.Size = new System.Drawing.Size(168, 21);
            this.txt_page.TabIndex = 11;
            this.txt_page.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txt_page_KeyPress);
            // 
            // txt_Press
            // 
            this.txt_Press.Location = new System.Drawing.Point(79, 283);
            this.txt_Press.Name = "txt_Press";
            this.txt_Press.Size = new System.Drawing.Size(168, 21);
            this.txt_Press.TabIndex = 10;
            // 
            // txt_time
            // 
            this.txt_time.Location = new System.Drawing.Point(79, 329);
            this.txt_time.Name = "txt_time";
            this.txt_time.Size = new System.Drawing.Size(168, 21);
            this.txt_time.TabIndex = 9;
            // 
            // cmb_booktype
            // 
            this.cmb_booktype.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmb_booktype.FormattingEnabled = true;
            this.cmb_booktype.Location = new System.Drawing.Point(79, 77);
            this.cmb_booktype.Name = "cmb_booktype";
            this.cmb_booktype.Size = new System.Drawing.Size(168, 20);
            this.cmb_booktype.TabIndex = 8;
            // 
            // txt_BookName
            // 
            this.txt_BookName.Location = new System.Drawing.Point(79, 36);
            this.txt_BookName.Name = "txt_BookName";
            this.txt_BookName.Size = new System.Drawing.Size(168, 21);
            this.txt_BookName.TabIndex = 7;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(8, 335);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(65, 12);
            this.label7.TabIndex = 6;
            this.label7.Text = "出版时间：";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(8, 286);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(65, 12);
            this.label6.TabIndex = 5;
            this.label6.Text = "出 版 社：";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(8, 232);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(65, 12);
            this.label5.TabIndex = 4;
            this.label5.Text = "页    数：";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(8, 180);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(65, 12);
            this.label4.TabIndex = 3;
            this.label4.Text = "价    格：";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(8, 137);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(65, 12);
            this.label3.TabIndex = 2;
            this.label3.Text = "作    者：";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(8, 86);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(65, 12);
            this.label2.TabIndex = 1;
            this.label2.Text = "类    型：";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(8, 39);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(65, 12);
            this.label1.TabIndex = 0;
            this.label1.Text = "书    名：";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.groupBox4);
            this.groupBox2.Controls.Add(this.groupBox3);
            this.groupBox2.Location = new System.Drawing.Point(265, 1);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(277, 338);
            this.groupBox2.TabIndex = 1;
            this.groupBox2.TabStop = false;
            // 
            // groupBox4
            // 
            this.groupBox4.Controls.Add(this.txt_Summary);
            this.groupBox4.Location = new System.Drawing.Point(16, 204);
            this.groupBox4.Name = "groupBox4";
            this.groupBox4.Size = new System.Drawing.Size(255, 128);
            this.groupBox4.TabIndex = 1;
            this.groupBox4.TabStop = false;
            this.groupBox4.Text = "简介";
            // 
            // txt_Summary
            // 
            this.txt_Summary.Dock = System.Windows.Forms.DockStyle.Fill;
            this.txt_Summary.Location = new System.Drawing.Point(3, 17);
            this.txt_Summary.Multiline = true;
            this.txt_Summary.Name = "txt_Summary";
            this.txt_Summary.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.txt_Summary.Size = new System.Drawing.Size(249, 108);
            this.txt_Summary.TabIndex = 0;
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.BtnLinkimg);
            this.groupBox3.Controls.Add(this.ptb_img);
            this.groupBox3.Location = new System.Drawing.Point(16, 20);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(255, 178);
            this.groupBox3.TabIndex = 0;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "图片";
            // 
            // BtnLinkimg
            // 
            this.BtnLinkimg.Location = new System.Drawing.Point(195, 149);
            this.BtnLinkimg.Name = "BtnLinkimg";
            this.BtnLinkimg.Size = new System.Drawing.Size(54, 23);
            this.BtnLinkimg.TabIndex = 1;
            this.BtnLinkimg.Text = "浏览";
            this.BtnLinkimg.UseVisualStyleBackColor = true;
            this.BtnLinkimg.Click += new System.EventHandler(this.BtnLinkimg_Click);
            // 
            // ptb_img
            // 
            this.ptb_img.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.ptb_img.Location = new System.Drawing.Point(14, 20);
            this.ptb_img.Name = "ptb_img";
            this.ptb_img.Size = new System.Drawing.Size(175, 152);
            this.ptb_img.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.ptb_img.TabIndex = 0;
            this.ptb_img.TabStop = false;
            // 
            // BtnOk
            // 
            this.BtnOk.Location = new System.Drawing.Point(312, 345);
            this.BtnOk.Name = "BtnOk";
            this.BtnOk.Size = new System.Drawing.Size(75, 23);
            this.BtnOk.TabIndex = 2;
            this.BtnOk.Text = "确定";
            this.BtnOk.UseVisualStyleBackColor = true;
            this.BtnOk.Click += new System.EventHandler(this.BtnOk_Click);
            // 
            // BtnExit
            // 
            this.BtnExit.Location = new System.Drawing.Point(440, 348);
            this.BtnExit.Name = "BtnExit";
            this.BtnExit.Size = new System.Drawing.Size(75, 23);
            this.BtnExit.TabIndex = 3;
            this.BtnExit.Text = "退出";
            this.BtnExit.UseVisualStyleBackColor = true;
            this.BtnExit.Click += new System.EventHandler(this.BtnExit_Click);
            // 
            // Frm_Book
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Control;
            this.ClientSize = new System.Drawing.Size(554, 383);
            this.Controls.Add(this.BtnExit);
            this.Controls.Add(this.BtnOk);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.DoubleBuffered = true;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Frm_Book";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Add_Book";
            this.Load += new System.EventHandler(this.Add_Book_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox4.ResumeLayout(false);
            this.groupBox4.PerformLayout();
            this.groupBox3.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.ptb_img)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox txt_Author;
        private System.Windows.Forms.TextBox txt_price;
        private System.Windows.Forms.TextBox txt_page;
        private System.Windows.Forms.TextBox txt_Press;
        private System.Windows.Forms.DateTimePicker txt_time;
        private System.Windows.Forms.ComboBox cmb_booktype;
        private System.Windows.Forms.TextBox txt_BookName;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.GroupBox groupBox4;
        private System.Windows.Forms.TextBox txt_Summary;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.Button BtnLinkimg;
        private System.Windows.Forms.PictureBox ptb_img;
        private System.Windows.Forms.Button BtnOk;
        private System.Windows.Forms.Button BtnExit;
    }
}