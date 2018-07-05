namespace UpLoad
{
    partial class Form2
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
            this.lblSID = new System.Windows.Forms.Label();
            this.lblNAME = new System.Windows.Forms.Label();
            this.lblAGE = new System.Windows.Forms.Label();
            this.lblSEX = new System.Windows.Forms.Label();
            this.lblEMAIL = new System.Windows.Forms.Label();
            this.btnADDRESS = new System.Windows.Forms.Label();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.btnModify = new System.Windows.Forms.Button();
            this.btnClose = new System.Windows.Forms.Button();
            this.txtSID = new System.Windows.Forms.TextBox();
            this.txtNAME = new System.Windows.Forms.TextBox();
            this.txtAGE = new System.Windows.Forms.TextBox();
            this.txtEMAIL = new System.Windows.Forms.TextBox();
            this.txtADDRESS = new System.Windows.Forms.TextBox();
            this.txtSEX = new System.Windows.Forms.ComboBox();
            this.btnDEL = new System.Windows.Forms.Button();
            this.btnChangePIC = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // lblSID
            // 
            this.lblSID.AutoSize = true;
            this.lblSID.Location = new System.Drawing.Point(21, 20);
            this.lblSID.Name = "lblSID";
            this.lblSID.Size = new System.Drawing.Size(29, 12);
            this.lblSID.TabIndex = 0;
            this.lblSID.Text = "学号";
            // 
            // lblNAME
            // 
            this.lblNAME.AutoSize = true;
            this.lblNAME.Location = new System.Drawing.Point(207, 20);
            this.lblNAME.Name = "lblNAME";
            this.lblNAME.Size = new System.Drawing.Size(29, 12);
            this.lblNAME.TabIndex = 1;
            this.lblNAME.Text = "姓名";
            // 
            // lblAGE
            // 
            this.lblAGE.AutoSize = true;
            this.lblAGE.Location = new System.Drawing.Point(21, 63);
            this.lblAGE.Name = "lblAGE";
            this.lblAGE.Size = new System.Drawing.Size(29, 12);
            this.lblAGE.TabIndex = 2;
            this.lblAGE.Text = "年龄";
            // 
            // lblSEX
            // 
            this.lblSEX.AutoSize = true;
            this.lblSEX.Location = new System.Drawing.Point(207, 63);
            this.lblSEX.Name = "lblSEX";
            this.lblSEX.Size = new System.Drawing.Size(29, 12);
            this.lblSEX.TabIndex = 3;
            this.lblSEX.Text = "性别";
            // 
            // lblEMAIL
            // 
            this.lblEMAIL.AutoSize = true;
            this.lblEMAIL.Location = new System.Drawing.Point(21, 110);
            this.lblEMAIL.Name = "lblEMAIL";
            this.lblEMAIL.Size = new System.Drawing.Size(35, 12);
            this.lblEMAIL.TabIndex = 4;
            this.lblEMAIL.Text = "email";
            // 
            // btnADDRESS
            // 
            this.btnADDRESS.AutoSize = true;
            this.btnADDRESS.Location = new System.Drawing.Point(207, 110);
            this.btnADDRESS.Name = "btnADDRESS";
            this.btnADDRESS.Size = new System.Drawing.Size(29, 12);
            this.btnADDRESS.TabIndex = 5;
            this.btnADDRESS.Text = "地址";
            // 
            // pictureBox1
            // 
            this.pictureBox1.Location = new System.Drawing.Point(38, 151);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(224, 182);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 6;
            this.pictureBox1.TabStop = false;
            // 
            // btnModify
            // 
            this.btnModify.Location = new System.Drawing.Point(308, 219);
            this.btnModify.Name = "btnModify";
            this.btnModify.Size = new System.Drawing.Size(75, 23);
            this.btnModify.TabIndex = 7;
            this.btnModify.Text = "修改";
            this.btnModify.UseVisualStyleBackColor = true;
            this.btnModify.Click += new System.EventHandler(this.btnModify_Click);
            // 
            // btnClose
            // 
            this.btnClose.Location = new System.Drawing.Point(308, 310);
            this.btnClose.Name = "btnClose";
            this.btnClose.Size = new System.Drawing.Size(75, 23);
            this.btnClose.TabIndex = 8;
            this.btnClose.Text = "关闭";
            this.btnClose.UseVisualStyleBackColor = true;
            this.btnClose.Click += new System.EventHandler(this.btnClose_Click);
            // 
            // txtSID
            // 
            this.txtSID.Location = new System.Drawing.Point(75, 17);
            this.txtSID.Name = "txtSID";
            this.txtSID.Size = new System.Drawing.Size(100, 21);
            this.txtSID.TabIndex = 9;
            // 
            // txtNAME
            // 
            this.txtNAME.Location = new System.Drawing.Point(268, 17);
            this.txtNAME.Name = "txtNAME";
            this.txtNAME.Size = new System.Drawing.Size(100, 21);
            this.txtNAME.TabIndex = 10;
            // 
            // txtAGE
            // 
            this.txtAGE.Location = new System.Drawing.Point(75, 60);
            this.txtAGE.Name = "txtAGE";
            this.txtAGE.Size = new System.Drawing.Size(100, 21);
            this.txtAGE.TabIndex = 11;
            // 
            // txtEMAIL
            // 
            this.txtEMAIL.Location = new System.Drawing.Point(75, 101);
            this.txtEMAIL.Name = "txtEMAIL";
            this.txtEMAIL.Size = new System.Drawing.Size(100, 21);
            this.txtEMAIL.TabIndex = 12;
            // 
            // txtADDRESS
            // 
            this.txtADDRESS.Location = new System.Drawing.Point(268, 107);
            this.txtADDRESS.Name = "txtADDRESS";
            this.txtADDRESS.Size = new System.Drawing.Size(100, 21);
            this.txtADDRESS.TabIndex = 13;
            // 
            // txtSEX
            // 
            this.txtSEX.FormattingEnabled = true;
            this.txtSEX.Items.AddRange(new object[] {
            "男",
            "女"});
            this.txtSEX.Location = new System.Drawing.Point(268, 63);
            this.txtSEX.Name = "txtSEX";
            this.txtSEX.Size = new System.Drawing.Size(63, 20);
            this.txtSEX.TabIndex = 14;
            // 
            // btnDEL
            // 
            this.btnDEL.Location = new System.Drawing.Point(308, 264);
            this.btnDEL.Name = "btnDEL";
            this.btnDEL.Size = new System.Drawing.Size(75, 23);
            this.btnDEL.TabIndex = 15;
            this.btnDEL.Text = "删除";
            this.btnDEL.UseVisualStyleBackColor = true;
            this.btnDEL.Click += new System.EventHandler(this.btnDEL_Click);
            // 
            // btnChangePIC
            // 
            this.btnChangePIC.Location = new System.Drawing.Point(308, 174);
            this.btnChangePIC.Name = "btnChangePIC";
            this.btnChangePIC.Size = new System.Drawing.Size(75, 23);
            this.btnChangePIC.TabIndex = 16;
            this.btnChangePIC.Text = "上传图片";
            this.btnChangePIC.UseVisualStyleBackColor = true;
            this.btnChangePIC.Click += new System.EventHandler(this.btnChangePIC_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.lblSID);
            this.groupBox1.Controls.Add(this.btnChangePIC);
            this.groupBox1.Controls.Add(this.lblNAME);
            this.groupBox1.Controls.Add(this.btnDEL);
            this.groupBox1.Controls.Add(this.lblAGE);
            this.groupBox1.Controls.Add(this.txtSEX);
            this.groupBox1.Controls.Add(this.lblSEX);
            this.groupBox1.Controls.Add(this.txtADDRESS);
            this.groupBox1.Controls.Add(this.lblEMAIL);
            this.groupBox1.Controls.Add(this.txtEMAIL);
            this.groupBox1.Controls.Add(this.btnADDRESS);
            this.groupBox1.Controls.Add(this.txtAGE);
            this.groupBox1.Controls.Add(this.pictureBox1);
            this.groupBox1.Controls.Add(this.txtNAME);
            this.groupBox1.Controls.Add(this.btnModify);
            this.groupBox1.Controls.Add(this.txtSID);
            this.groupBox1.Controls.Add(this.btnClose);
            this.groupBox1.Location = new System.Drawing.Point(23, 23);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(389, 357);
            this.groupBox1.TabIndex = 17;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "数据操作";
            // 
            // Form2
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(439, 407);
            this.Controls.Add(this.groupBox1);
            this.Name = "Form2";
            this.Text = "Form2";
            this.Load += new System.EventHandler(this.Form2_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Label lblSID;
        private System.Windows.Forms.Label lblNAME;
        private System.Windows.Forms.Label lblAGE;
        private System.Windows.Forms.Label lblSEX;
        private System.Windows.Forms.Label lblEMAIL;
        private System.Windows.Forms.Label btnADDRESS;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Button btnModify;
        private System.Windows.Forms.Button btnClose;
        private System.Windows.Forms.TextBox txtSID;
        private System.Windows.Forms.TextBox txtNAME;
        private System.Windows.Forms.TextBox txtAGE;
        private System.Windows.Forms.TextBox txtEMAIL;
        private System.Windows.Forms.TextBox txtADDRESS;
        private System.Windows.Forms.ComboBox txtSEX;
        private System.Windows.Forms.Button btnDEL;
        private System.Windows.Forms.Button btnChangePIC;
        private System.Windows.Forms.GroupBox groupBox1;
    }
}