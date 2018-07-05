using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace FoodSearchSys
{
    public partial class main : Form
    {
        public main()
        {
            InitializeComponent();
        }

        private void main_Load(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// 显示添加菜品窗体事件
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void AddFood_Click(object sender, EventArgs e)
        {
            AddFood af = new AddFood();
            //设置MDI窗体的子窗体的MDI父窗体为this,this表示当前窗体
            af.MdiParent = this;
            af.Show();
        }

        /// <summary>
        /// 显示管理菜品窗体事件
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void foodManage_Click(object sender, EventArgs e)
        {
            FoodManage fm = new FoodManage();
            fm.MdiParent = this;
            fm.Show();
        }

        /// <summary>
        /// 显示添加菜品类型窗体事件
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void addFoodType_Click(object sender, EventArgs e)
        {
            AddFoodType aft = new AddFoodType();
            aft.MdiParent = this;
            aft.Show();
        }
    }
}
