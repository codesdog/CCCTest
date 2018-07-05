namespace FoodSearchSys
{
    partial class main
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(main));
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.菜品管理ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.AddFood = new System.Windows.Forms.ToolStripMenuItem();
            this.foodManage = new System.Windows.Forms.ToolStripMenuItem();
            this.addFoodType = new System.Windows.Forms.ToolStripMenuItem();
            this.帮助ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.菜品管理ToolStripMenuItem,
            this.帮助ToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(897, 24);
            this.menuStrip1.TabIndex = 1;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // 菜品管理ToolStripMenuItem
            // 
            this.菜品管理ToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.AddFood,
            this.foodManage,
            this.addFoodType});
            this.菜品管理ToolStripMenuItem.Name = "菜品管理ToolStripMenuItem";
            this.菜品管理ToolStripMenuItem.Size = new System.Drawing.Size(67, 20);
            this.菜品管理ToolStripMenuItem.Text = "菜品管理";
            // 
            // AddFood
            // 
            this.AddFood.Name = "AddFood";
            this.AddFood.Size = new System.Drawing.Size(152, 22);
            this.AddFood.Text = "添加菜品";
            this.AddFood.Click += new System.EventHandler(this.AddFood_Click);
            // 
            // foodManage
            // 
            this.foodManage.Name = "foodManage";
            this.foodManage.Size = new System.Drawing.Size(152, 22);
            this.foodManage.Text = "管理菜品";
            this.foodManage.Click += new System.EventHandler(this.foodManage_Click);
            // 
            // addFoodType
            // 
            this.addFoodType.Name = "addFoodType";
            this.addFoodType.Size = new System.Drawing.Size(152, 22);
            this.addFoodType.Text = "添加菜品类型";
            this.addFoodType.Click += new System.EventHandler(this.addFoodType_Click);
            // 
            // 帮助ToolStripMenuItem
            // 
            this.帮助ToolStripMenuItem.Name = "帮助ToolStripMenuItem";
            this.帮助ToolStripMenuItem.Size = new System.Drawing.Size(43, 20);
            this.帮助ToolStripMenuItem.Text = "帮助";
            // 
            // main
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(897, 429);
            this.Controls.Add(this.menuStrip1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.IsMdiContainer = true;
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "main";
            this.Text = "菜品查询系统";
            this.Load += new System.EventHandler(this.main_Load);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem 菜品管理ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem AddFood;
        private System.Windows.Forms.ToolStripMenuItem foodManage;
        private System.Windows.Forms.ToolStripMenuItem 帮助ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem addFoodType;
    }
}

