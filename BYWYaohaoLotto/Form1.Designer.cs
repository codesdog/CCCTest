namespace 抽奖
{
    partial class Form1
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.labNum1 = new System.Windows.Forms.Label();
            this.labNum2 = new System.Windows.Forms.Label();
            this.labNum3 = new System.Windows.Forms.Label();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.flowLayoutPanel1 = new System.Windows.Forms.FlowLayoutPanel();
            this.btnSwitch0 = new System.Windows.Forms.Button();
            this.btnSwitch1 = new System.Windows.Forms.Button();
            this.btnSwitch2 = new System.Windows.Forms.Button();
            this.btnSwitch4 = new System.Windows.Forms.Button();
            this.btnSwitch3 = new System.Windows.Forms.Button();
            this.btnReDo = new System.Windows.Forms.Button();
            this.btnOK = new System.Windows.Forms.Button();
            this.timer2 = new System.Windows.Forms.Timer(this.components);
            this.btnSwitch4_2 = new System.Windows.Forms.Button();
            this.btnSave = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // labNum1
            // 
            this.labNum1.AutoSize = true;
            this.labNum1.BackColor = System.Drawing.Color.Transparent;
            this.labNum1.Font = new System.Drawing.Font("Tahoma", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labNum1.Location = new System.Drawing.Point(55, 288);
            this.labNum1.Name = "labNum1";
            this.labNum1.Size = new System.Drawing.Size(0, 33);
            this.labNum1.TabIndex = 5;
            // 
            // labNum2
            // 
            this.labNum2.AutoSize = true;
            this.labNum2.BackColor = System.Drawing.Color.Transparent;
            this.labNum2.Font = new System.Drawing.Font("Tahoma", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labNum2.Location = new System.Drawing.Point(195, 288);
            this.labNum2.Name = "labNum2";
            this.labNum2.Size = new System.Drawing.Size(0, 33);
            this.labNum2.TabIndex = 6;
            // 
            // labNum3
            // 
            this.labNum3.AutoSize = true;
            this.labNum3.BackColor = System.Drawing.Color.Transparent;
            this.labNum3.Font = new System.Drawing.Font("Tahoma", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labNum3.Location = new System.Drawing.Point(335, 288);
            this.labNum3.Name = "labNum3";
            this.labNum3.Size = new System.Drawing.Size(0, 33);
            this.labNum3.TabIndex = 7;
            // 
            // timer1
            // 
            this.timer1.Interval = 50;
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.Color.Transparent;
            this.groupBox1.Controls.Add(this.flowLayoutPanel1);
            this.groupBox1.Font = new System.Drawing.Font("微软雅黑", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.groupBox1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(192)))), ((int)(((byte)(0)))));
            this.groupBox1.Location = new System.Drawing.Point(12, 82);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(968, 576);
            this.groupBox1.TabIndex = 18;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "幸运奖号码第一轮";
            // 
            // flowLayoutPanel1
            // 
            this.flowLayoutPanel1.Location = new System.Drawing.Point(19, 38);
            this.flowLayoutPanel1.Name = "flowLayoutPanel1";
            this.flowLayoutPanel1.Size = new System.Drawing.Size(933, 532);
            this.flowLayoutPanel1.TabIndex = 15;
            // 
            // btnSwitch0
            // 
            this.btnSwitch0.BackColor = System.Drawing.Color.Transparent;
            this.btnSwitch0.Font = new System.Drawing.Font("宋体", 9F);
            this.btnSwitch0.Location = new System.Drawing.Point(426, 677);
            this.btnSwitch0.Name = "btnSwitch0";
            this.btnSwitch0.Size = new System.Drawing.Size(73, 22);
            this.btnSwitch0.TabIndex = 19;
            this.btnSwitch0.Text = "特等奖";
            this.btnSwitch0.UseVisualStyleBackColor = false;
            this.btnSwitch0.Click += new System.EventHandler(this.btnSwitch0_Click);
            // 
            // btnSwitch1
            // 
            this.btnSwitch1.BackColor = System.Drawing.Color.Transparent;
            this.btnSwitch1.Font = new System.Drawing.Font("宋体", 9F);
            this.btnSwitch1.Location = new System.Drawing.Point(347, 677);
            this.btnSwitch1.Name = "btnSwitch1";
            this.btnSwitch1.Size = new System.Drawing.Size(73, 22);
            this.btnSwitch1.TabIndex = 20;
            this.btnSwitch1.Text = "一等奖";
            this.btnSwitch1.UseVisualStyleBackColor = false;
            this.btnSwitch1.Click += new System.EventHandler(this.btnSwitch1_Click);
            // 
            // btnSwitch2
            // 
            this.btnSwitch2.BackColor = System.Drawing.Color.Transparent;
            this.btnSwitch2.Font = new System.Drawing.Font("宋体", 9F);
            this.btnSwitch2.Location = new System.Drawing.Point(268, 677);
            this.btnSwitch2.Name = "btnSwitch2";
            this.btnSwitch2.Size = new System.Drawing.Size(73, 22);
            this.btnSwitch2.TabIndex = 21;
            this.btnSwitch2.Text = "二等奖";
            this.btnSwitch2.UseVisualStyleBackColor = false;
            this.btnSwitch2.Click += new System.EventHandler(this.btnSwitch2_Click);
            // 
            // btnSwitch4
            // 
            this.btnSwitch4.BackColor = System.Drawing.Color.Transparent;
            this.btnSwitch4.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnSwitch4.Location = new System.Drawing.Point(22, 677);
            this.btnSwitch4.Name = "btnSwitch4";
            this.btnSwitch4.Size = new System.Drawing.Size(73, 22);
            this.btnSwitch4.TabIndex = 22;
            this.btnSwitch4.Text = "幸运奖1";
            this.btnSwitch4.UseVisualStyleBackColor = false;
            this.btnSwitch4.Click += new System.EventHandler(this.btnSwitch4_Click);
            // 
            // btnSwitch3
            // 
            this.btnSwitch3.BackColor = System.Drawing.Color.Transparent;
            this.btnSwitch3.Font = new System.Drawing.Font("宋体", 9F);
            this.btnSwitch3.Location = new System.Drawing.Point(189, 677);
            this.btnSwitch3.Name = "btnSwitch3";
            this.btnSwitch3.Size = new System.Drawing.Size(73, 22);
            this.btnSwitch3.TabIndex = 23;
            this.btnSwitch3.Text = "三等奖";
            this.btnSwitch3.UseVisualStyleBackColor = false;
            this.btnSwitch3.Click += new System.EventHandler(this.btnSwitch3_Click);
            // 
            // btnReDo
            // 
            this.btnReDo.BackColor = System.Drawing.Color.Transparent;
            this.btnReDo.Enabled = false;
            this.btnReDo.Font = new System.Drawing.Font("宋体", 9F);
            this.btnReDo.Location = new System.Drawing.Point(668, 677);
            this.btnReDo.Name = "btnReDo";
            this.btnReDo.Size = new System.Drawing.Size(73, 22);
            this.btnReDo.TabIndex = 25;
            this.btnReDo.Text = "重选";
            this.btnReDo.UseVisualStyleBackColor = false;
            this.btnReDo.Click += new System.EventHandler(this.btnReDo_Click);
            // 
            // btnOK
            // 
            this.btnOK.BackColor = System.Drawing.Color.Transparent;
            this.btnOK.Font = new System.Drawing.Font("宋体", 9F);
            this.btnOK.Location = new System.Drawing.Point(589, 677);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(73, 22);
            this.btnOK.TabIndex = 26;
            this.btnOK.Text = "开始";
            this.btnOK.UseVisualStyleBackColor = false;
            this.btnOK.Click += new System.EventHandler(this.btnOK_Click);
            // 
            // timer2
            // 
            this.timer2.Interval = 1000;
            this.timer2.Tick += new System.EventHandler(this.timer2_Tick);
            // 
            // btnSwitch4_2
            // 
            this.btnSwitch4_2.BackColor = System.Drawing.Color.Transparent;
            this.btnSwitch4_2.Font = new System.Drawing.Font("宋体", 9F);
            this.btnSwitch4_2.Location = new System.Drawing.Point(101, 677);
            this.btnSwitch4_2.Name = "btnSwitch4_2";
            this.btnSwitch4_2.Size = new System.Drawing.Size(73, 22);
            this.btnSwitch4_2.TabIndex = 27;
            this.btnSwitch4_2.Text = "幸运奖2";
            this.btnSwitch4_2.UseVisualStyleBackColor = false;
            this.btnSwitch4_2.Click += new System.EventHandler(this.btnSwitch4_2_Click);
            // 
            // btnSave
            // 
            this.btnSave.BackColor = System.Drawing.Color.Transparent;
            this.btnSave.Enabled = false;
            this.btnSave.Location = new System.Drawing.Point(877, 677);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(73, 22);
            this.btnSave.TabIndex = 28;
            this.btnSave.Text = "保存";
            this.btnSave.UseVisualStyleBackColor = false;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
            this.ClientSize = new System.Drawing.Size(992, 711);
            this.Controls.Add(this.btnSave);
            this.Controls.Add(this.btnSwitch4_2);
            this.Controls.Add(this.btnOK);
            this.Controls.Add(this.btnReDo);
            this.Controls.Add(this.btnSwitch3);
            this.Controls.Add(this.btnSwitch4);
            this.Controls.Add(this.btnSwitch2);
            this.Controls.Add(this.btnSwitch1);
            this.Controls.Add(this.btnSwitch0);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.labNum3);
            this.Controls.Add(this.labNum2);
            this.Controls.Add(this.labNum1);
            this.MaximizeBox = false;
            this.Name = "Form1";
            this.Text = "抽奖程序";
            this.groupBox1.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label labNum1;
        private System.Windows.Forms.Label labNum2;
        private System.Windows.Forms.Label labNum3;
        private System.Windows.Forms.Timer timer1;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btnSwitch0;
        private System.Windows.Forms.Button btnSwitch1;
        private System.Windows.Forms.Button btnSwitch2;
        private System.Windows.Forms.Button btnSwitch4;
        private System.Windows.Forms.Button btnSwitch3;
        private System.Windows.Forms.FlowLayoutPanel flowLayoutPanel1;
        private System.Windows.Forms.Button btnReDo;
        private System.Windows.Forms.Button btnOK;
        private System.Windows.Forms.Timer timer2;
        private System.Windows.Forms.Button btnSwitch4_2;
        private System.Windows.Forms.Button btnSave;
    }
}

