namespace FoodSearchSys
{
    partial class FoodManage
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FoodManage));
            this.gbSelect = new System.Windows.Forms.GroupBox();
            this.btnSelect = new System.Windows.Forms.Button();
            this.cboFoodType = new System.Windows.Forms.ComboBox();
            this.txtSerchStr = new System.Windows.Forms.TextBox();
            this.lblTerm = new System.Windows.Forms.Label();
            this.gbShow = new System.Windows.Forms.GroupBox();
            this.dvgFood = new System.Windows.Forms.DataGridView();
            this.gbUpdate = new System.Windows.Forms.GroupBox();
            this.lblFoodId = new System.Windows.Forms.Label();
            this.btnUpdatFood = new System.Windows.Forms.Button();
            this.txtRemark = new System.Windows.Forms.TextBox();
            this.txtNewPrice = new System.Windows.Forms.TextBox();
            this.txtOldPrice = new System.Windows.Forms.TextBox();
            this.lblNewPrie = new System.Windows.Forms.Label();
            this.lblRemark = new System.Windows.Forms.Label();
            this.lblOldPrice = new System.Windows.Forms.Label();
            this.btnSelectAll = new System.Windows.Forms.Button();
            this.btnSelectUpdateFood = new System.Windows.Forms.Button();
            this.gbSelect.SuspendLayout();
            this.gbShow.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dvgFood)).BeginInit();
            this.gbUpdate.SuspendLayout();
            this.SuspendLayout();
            // 
            // gbSelect
            // 
            this.gbSelect.Controls.Add(this.btnSelect);
            this.gbSelect.Controls.Add(this.cboFoodType);
            this.gbSelect.Controls.Add(this.txtSerchStr);
            this.gbSelect.Controls.Add(this.lblTerm);
            this.gbSelect.Location = new System.Drawing.Point(26, 12);
            this.gbSelect.Name = "gbSelect";
            this.gbSelect.Size = new System.Drawing.Size(753, 85);
            this.gbSelect.TabIndex = 0;
            this.gbSelect.TabStop = false;
            this.gbSelect.Text = "高级查询";
            // 
            // btnSelect
            // 
            this.btnSelect.Location = new System.Drawing.Point(642, 30);
            this.btnSelect.Name = "btnSelect";
            this.btnSelect.Size = new System.Drawing.Size(87, 23);
            this.btnSelect.TabIndex = 3;
            this.btnSelect.Text = "高级查询";
            this.btnSelect.UseVisualStyleBackColor = true;
            this.btnSelect.Click += new System.EventHandler(this.btnSelect_Click);
            // 
            // cboFoodType
            // 
            this.cboFoodType.FormattingEnabled = true;
            this.cboFoodType.Location = new System.Drawing.Point(421, 33);
            this.cboFoodType.Name = "cboFoodType";
            this.cboFoodType.Size = new System.Drawing.Size(147, 20);
            this.cboFoodType.TabIndex = 2;
            // 
            // txtSerchStr
            // 
            this.txtSerchStr.Location = new System.Drawing.Point(183, 33);
            this.txtSerchStr.Name = "txtSerchStr";
            this.txtSerchStr.Size = new System.Drawing.Size(132, 21);
            this.txtSerchStr.TabIndex = 1;
            // 
            // lblTerm
            // 
            this.lblTerm.AutoSize = true;
            this.lblTerm.Location = new System.Drawing.Point(52, 41);
            this.lblTerm.Name = "lblTerm";
            this.lblTerm.Size = new System.Drawing.Size(77, 12);
            this.lblTerm.TabIndex = 0;
            this.lblTerm.Text = "输入查询条件";
            // 
            // gbShow
            // 
            this.gbShow.Controls.Add(this.dvgFood);
            this.gbShow.Location = new System.Drawing.Point(26, 120);
            this.gbShow.Name = "gbShow";
            this.gbShow.Size = new System.Drawing.Size(753, 189);
            this.gbShow.TabIndex = 0;
            this.gbShow.TabStop = false;
            this.gbShow.Text = "显示菜品";
            // 
            // dvgFood
            // 
            this.dvgFood.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dvgFood.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dvgFood.Location = new System.Drawing.Point(3, 17);
            this.dvgFood.Name = "dvgFood";
            this.dvgFood.RowTemplate.Height = 23;
            this.dvgFood.Size = new System.Drawing.Size(747, 169);
            this.dvgFood.TabIndex = 0;
            this.dvgFood.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dvgFood_CellDoubleClick);
            // 
            // gbUpdate
            // 
            this.gbUpdate.Controls.Add(this.lblFoodId);
            this.gbUpdate.Controls.Add(this.btnUpdatFood);
            this.gbUpdate.Controls.Add(this.txtRemark);
            this.gbUpdate.Controls.Add(this.txtNewPrice);
            this.gbUpdate.Controls.Add(this.txtOldPrice);
            this.gbUpdate.Controls.Add(this.lblNewPrie);
            this.gbUpdate.Controls.Add(this.lblRemark);
            this.gbUpdate.Controls.Add(this.lblOldPrice);
            this.gbUpdate.Location = new System.Drawing.Point(26, 333);
            this.gbUpdate.Name = "gbUpdate";
            this.gbUpdate.Size = new System.Drawing.Size(615, 109);
            this.gbUpdate.TabIndex = 0;
            this.gbUpdate.TabStop = false;
            this.gbUpdate.Text = "更新菜品";
            // 
            // lblFoodId
            // 
            this.lblFoodId.AutoSize = true;
            this.lblFoodId.Location = new System.Drawing.Point(346, 76);
            this.lblFoodId.Name = "lblFoodId";
            this.lblFoodId.Size = new System.Drawing.Size(0, 12);
            this.lblFoodId.TabIndex = 5;
            // 
            // btnUpdatFood
            // 
            this.btnUpdatFood.Location = new System.Drawing.Point(493, 71);
            this.btnUpdatFood.Name = "btnUpdatFood";
            this.btnUpdatFood.Size = new System.Drawing.Size(75, 23);
            this.btnUpdatFood.TabIndex = 6;
            this.btnUpdatFood.Text = "更新菜品";
            this.btnUpdatFood.UseVisualStyleBackColor = true;
            this.btnUpdatFood.Click += new System.EventHandler(this.btnUpdatFood_Click);
            // 
            // txtRemark
            // 
            this.txtRemark.Location = new System.Drawing.Point(110, 73);
            this.txtRemark.Name = "txtRemark";
            this.txtRemark.ScrollBars = System.Windows.Forms.ScrollBars.Both;
            this.txtRemark.Size = new System.Drawing.Size(100, 21);
            this.txtRemark.TabIndex = 5;
            // 
            // txtNewPrice
            // 
            this.txtNewPrice.Location = new System.Drawing.Point(468, 24);
            this.txtNewPrice.Name = "txtNewPrice";
            this.txtNewPrice.Size = new System.Drawing.Size(100, 21);
            this.txtNewPrice.TabIndex = 4;
            // 
            // txtOldPrice
            // 
            this.txtOldPrice.Location = new System.Drawing.Point(110, 24);
            this.txtOldPrice.Name = "txtOldPrice";
            this.txtOldPrice.Size = new System.Drawing.Size(100, 21);
            this.txtOldPrice.TabIndex = 3;
            // 
            // lblNewPrie
            // 
            this.lblNewPrie.AutoSize = true;
            this.lblNewPrie.Location = new System.Drawing.Point(358, 27);
            this.lblNewPrie.Name = "lblNewPrie";
            this.lblNewPrie.Size = new System.Drawing.Size(29, 12);
            this.lblNewPrie.TabIndex = 2;
            this.lblNewPrie.Text = "现价";
            // 
            // lblRemark
            // 
            this.lblRemark.AutoSize = true;
            this.lblRemark.Location = new System.Drawing.Point(17, 76);
            this.lblRemark.Name = "lblRemark";
            this.lblRemark.Size = new System.Drawing.Size(29, 12);
            this.lblRemark.TabIndex = 1;
            this.lblRemark.Text = "备注";
            // 
            // lblOldPrice
            // 
            this.lblOldPrice.AutoSize = true;
            this.lblOldPrice.Location = new System.Drawing.Point(17, 33);
            this.lblOldPrice.Name = "lblOldPrice";
            this.lblOldPrice.Size = new System.Drawing.Size(29, 12);
            this.lblOldPrice.TabIndex = 0;
            this.lblOldPrice.Text = "原价";
            // 
            // btnSelectAll
            // 
            this.btnSelectAll.Location = new System.Drawing.Point(680, 347);
            this.btnSelectAll.Name = "btnSelectAll";
            this.btnSelectAll.Size = new System.Drawing.Size(75, 23);
            this.btnSelectAll.TabIndex = 3;
            this.btnSelectAll.Text = "查询所有";
            this.btnSelectAll.UseVisualStyleBackColor = true;
            this.btnSelectAll.Click += new System.EventHandler(this.btnSelectAll_Click);
            // 
            // btnSelectUpdateFood
            // 
            this.btnSelectUpdateFood.Location = new System.Drawing.Point(668, 401);
            this.btnSelectUpdateFood.Name = "btnSelectUpdateFood";
            this.btnSelectUpdateFood.Size = new System.Drawing.Size(108, 23);
            this.btnSelectUpdateFood.TabIndex = 4;
            this.btnSelectUpdateFood.Text = "选择更新菜品";
            this.btnSelectUpdateFood.UseVisualStyleBackColor = true;
            this.btnSelectUpdateFood.Click += new System.EventHandler(this.btnSelectUpdateFood_Click);
            // 
            // FoodManage
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(791, 445);
            this.Controls.Add(this.btnSelectAll);
            this.Controls.Add(this.btnSelectUpdateFood);
            this.Controls.Add(this.gbShow);
            this.Controls.Add(this.gbUpdate);
            this.Controls.Add(this.gbSelect);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FoodManage";
            this.Text = "管理菜品";
            this.Load += new System.EventHandler(this.FoodManage_Load);
            this.gbSelect.ResumeLayout(false);
            this.gbSelect.PerformLayout();
            this.gbShow.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dvgFood)).EndInit();
            this.gbUpdate.ResumeLayout(false);
            this.gbUpdate.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox gbSelect;
        private System.Windows.Forms.GroupBox gbShow;
        private System.Windows.Forms.GroupBox gbUpdate;
        private System.Windows.Forms.Button btnSelect;
        private System.Windows.Forms.ComboBox cboFoodType;
        private System.Windows.Forms.TextBox txtSerchStr;
        private System.Windows.Forms.Label lblTerm;
        private System.Windows.Forms.DataGridView dvgFood;
        private System.Windows.Forms.Button btnUpdatFood;
        private System.Windows.Forms.TextBox txtRemark;
        private System.Windows.Forms.TextBox txtNewPrice;
        private System.Windows.Forms.TextBox txtOldPrice;
        private System.Windows.Forms.Label lblNewPrie;
        private System.Windows.Forms.Label lblRemark;
        private System.Windows.Forms.Label lblOldPrice;
        private System.Windows.Forms.Button btnSelectAll;
        private System.Windows.Forms.Button btnSelectUpdateFood;
        private System.Windows.Forms.Label lblFoodId;
    }
}