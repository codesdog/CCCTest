namespace FoodSearchSys
{
    partial class AddFoodType
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(AddFoodType));
            this.gbAddType = new System.Windows.Forms.GroupBox();
            this.btnAddFoodType = new System.Windows.Forms.Button();
            this.txtTypeName = new System.Windows.Forms.TextBox();
            this.lblType = new System.Windows.Forms.Label();
            this.lblShow = new System.Windows.Forms.Label();
            this.cboFoodType = new System.Windows.Forms.ComboBox();
            this.gbAddType.SuspendLayout();
            this.SuspendLayout();
            // 
            // gbAddType
            // 
            this.gbAddType.Controls.Add(this.btnAddFoodType);
            this.gbAddType.Controls.Add(this.txtTypeName);
            this.gbAddType.Controls.Add(this.lblType);
            this.gbAddType.Location = new System.Drawing.Point(12, 23);
            this.gbAddType.Name = "gbAddType";
            this.gbAddType.Size = new System.Drawing.Size(577, 100);
            this.gbAddType.TabIndex = 0;
            this.gbAddType.TabStop = false;
            this.gbAddType.Text = "添加菜品类型";
            // 
            // btnAddFoodType
            // 
            this.btnAddFoodType.Location = new System.Drawing.Point(464, 37);
            this.btnAddFoodType.Name = "btnAddFoodType";
            this.btnAddFoodType.Size = new System.Drawing.Size(86, 23);
            this.btnAddFoodType.TabIndex = 2;
            this.btnAddFoodType.Text = "添加类型";
            this.btnAddFoodType.UseVisualStyleBackColor = true;
            this.btnAddFoodType.Click += new System.EventHandler(this.btnAddFoodType_Click);
            // 
            // txtTypeName
            // 
            this.txtTypeName.Location = new System.Drawing.Point(214, 39);
            this.txtTypeName.Name = "txtTypeName";
            this.txtTypeName.Size = new System.Drawing.Size(150, 21);
            this.txtTypeName.TabIndex = 1;
            // 
            // lblType
            // 
            this.lblType.AutoSize = true;
            this.lblType.Location = new System.Drawing.Point(48, 48);
            this.lblType.Name = "lblType";
            this.lblType.Size = new System.Drawing.Size(89, 12);
            this.lblType.TabIndex = 0;
            this.lblType.Text = "请输入菜品类型";
            // 
            // lblShow
            // 
            this.lblShow.AutoSize = true;
            this.lblShow.Location = new System.Drawing.Point(60, 194);
            this.lblShow.Name = "lblShow";
            this.lblShow.Size = new System.Drawing.Size(77, 12);
            this.lblShow.TabIndex = 1;
            this.lblShow.Text = "显示菜品类型";
            // 
            // cboFoodType
            // 
            this.cboFoodType.FormattingEnabled = true;
            this.cboFoodType.Location = new System.Drawing.Point(240, 191);
            this.cboFoodType.Name = "cboFoodType";
            this.cboFoodType.Size = new System.Drawing.Size(136, 20);
            this.cboFoodType.TabIndex = 2;
            // 
            // AddFoodType
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(613, 267);
            this.Controls.Add(this.cboFoodType);
            this.Controls.Add(this.lblShow);
            this.Controls.Add(this.gbAddType);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "AddFoodType";
            this.Text = "添加菜品类型";
            this.Load += new System.EventHandler(this.AddFoodType_Load);
            this.gbAddType.ResumeLayout(false);
            this.gbAddType.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.GroupBox gbAddType;
        private System.Windows.Forms.Button btnAddFoodType;
        private System.Windows.Forms.TextBox txtTypeName;
        private System.Windows.Forms.Label lblType;
        private System.Windows.Forms.Label lblShow;
        private System.Windows.Forms.ComboBox cboFoodType;
    }
}