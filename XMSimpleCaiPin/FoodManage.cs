using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
//using System.Data.SqlClient;
using System.Data.OleDb;

namespace FoodSearchSys
{
    public partial class FoodManage : Form
    {
        public FoodManage()
        {
            InitializeComponent();
        }

        OleDbConnection olecon;
        OleDbDataAdapter oleda;
        DataSet myds;
        //string str = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=FoodSerch.mdb";
        string str = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=FoodSerch.accdb;Persist Security Info=True";
        /// <summary>
        /// 高级查询事件
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnSelect_Click(object sender, EventArgs e)
        {
            string serchStr = this.txtSerchStr.Text.ToString();
            int typeId = int.Parse(this.cboFoodType.SelectedValue.ToString());
            //如果这两个条件都等于空
            if (typeId.ToString() == null && txtSerchStr == null)
            {
                MessageBox.Show("请选择一个查询条件！");
            }
            else if (txtSerchStr != null && typeId.ToString() != "")
            {
                olecon = new OleDbConnection(str);
                string sql = @"select foodId as 菜品编号,foodName as 菜品名,foodOldPrice
                                      as 原价,foodNewPrice as 现价,foodRemark as 备注 from Food
                                      where foodName like '%" + serchStr + "%' and typeId = " +
                                     typeId + "";
                oleda = new OleDbDataAdapter(sql, olecon);
                myds = new DataSet();
                oleda.Fill(myds);
                this.dvgFood.DataSource = myds.Tables[0].DefaultView;

//                SqlConnection con = new SqlConnection();
//                con.ConnectionString = "server=.;database=FoodDB;uid=sa;pwd=sasa";
//                con.Open();

//                if (con.State == ConnectionState.Open)
//                {
//                    string sql = @"select foodId as 菜品编号,foodName as 菜品名,foodOldPrice
//                                     as 原价,foodNewPrice as 现价,foodRemark as 备注 from Food
//                                    where foodName like '%" + serchStr + "%' and typeId = " +
//                                    typeId + "";
//                    SqlDataAdapter adapter = new SqlDataAdapter(sql, con);
//                    DataSet ds = new DataSet();
//                    adapter.Fill(ds);
//                    this.dvgFood.DataSource = ds.Tables[0].DefaultView;
//                }
            }
            else if (txtSerchStr != null)
            {
                olecon = new OleDbConnection(str);
                string sql = @"select foodId as 菜品编号,foodName as 菜品名,foodOldPrice as
                                      原价,foodNewPrice as 现价,foodRemark as 备注 from Food
                                      where foodName like '%" + serchStr + "%'";
                oleda = new OleDbDataAdapter(sql, olecon);
                myds = new DataSet();
                oleda.Fill(myds);
                this.dvgFood.DataSource = myds.Tables[0].DefaultView;
//                SqlConnection con = new SqlConnection();
//                con.ConnectionString = "server=.;database=foodDB;uid=sa;pwd=sasa";
//                con.Open();
//                if (con.State == ConnectionState.Open)
//                {
//                    string sql = @"select foodId as 菜品编号,foodName as 菜品名,foodOldPrice as
//                                    原价,foodNewPrice as 现价,foodRemark as 备注 from Food
//                                    where foodName like '%" + serchStr + "%'";
//                    SqlDataAdapter adapter = new SqlDataAdapter(sql, con);
//                    DataSet ds = new DataSet();
//                    adapter.Fill(ds);
//                    this.dvgFood.DataSource = ds.Tables[0].DefaultView;
//                }
            }
        }

        /// <summary>
        /// 查询所有
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnSelectAll_Click(object sender, EventArgs e)
        {
            olecon = new OleDbConnection(str);
            string sql = @"select foodId as 菜品编号,foodName as 菜品名,foodOldPrice as 原价
                                  ,foodNewPrice as 现价,foodRemark as 备注 from Food";
            oleda = new OleDbDataAdapter(sql, olecon);
            myds = new DataSet();
            oleda.Fill(myds);
            this.dvgFood.DataSource = myds.Tables[0].DefaultView;
//            SqlConnection con = new SqlConnection();
//            con.ConnectionString = "server=.;database=foodDB;uid=sa;pwd=sasa";
//            con.Open();
//            if (con.State == ConnectionState.Open)
//            {
//                string sql = @"select foodId as 菜品编号,foodName as 菜品名,foodOldPrice as 原价
//                                ,foodNewPrice as 现价,foodRemark as 备注 from Food";
//                SqlDataAdapter adapter = new SqlDataAdapter(sql, con);
//                DataSet ds = new DataSet();
//                adapter.Fill(ds);

//                this.dvgFood.DataSource = ds.Tables[0].DefaultView;
//            }
        }

        /// <summary>
        /// 往更新文本框添加值事件（选中DataGriView中的行）
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnSelectUpdateFood_Click(object sender, EventArgs e)
        {
            this.lblFoodId.Text = this.dvgFood.CurrentRow.Cells[0].Value.ToString();
            this.txtOldPrice.Text = this.dvgFood.CurrentRow.Cells[2].Value.ToString();
            this.txtNewPrice.Text = this.dvgFood.CurrentRow.Cells[3].Value.ToString();
            this.txtRemark.Text = this.dvgFood.CurrentRow.Cells[4].Value.ToString();
        }

        /// <summary>
        /// 执行更新事件
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnUpdatFood_Click(object sender, EventArgs e)
        {
            int foodId = int.Parse(this.lblFoodId.Text.ToString());
            float oldPrice = float.Parse(this.txtOldPrice.Text.ToString());
            float newPrice = float.Parse(this.txtNewPrice.Text.ToString());
            string remark = this.txtRemark.Text.ToString();

            olecon = new OleDbConnection(str);
            olecon.Open();
            string sql = @"update Food set foodOldPrice = " + oldPrice + ",foodNewPrice="
                      + newPrice + ",foodRemark = '" + remark + "'where foodId = " + foodId +"";
            OleDbCommand olecmd = new OleDbCommand(sql, olecon);

            int i = olecmd.ExecuteNonQuery();
            if (i == 0)
            {
                MessageBox.Show("更新失败！");
            }
            else
            {
                MessageBox.Show("更新成功！");
                //清空文本框的值
                this.txtOldPrice.Clear();
                this.txtRemark.Clear();
                this.txtNewPrice.Clear();
                this.lblFoodId.Text = "";
            }
            olecon.Close();
            //SqlConnection con = new SqlConnection();
            //con.ConnectionString = "server=.;database=foodDB;uid=sa;pwd=sasa";
            //con.Open();

            //if (con.State == ConnectionState.Open)
            //{
            //    SqlCommand cmd = new SqlCommand();
            //    cmd.Connection = con;
            //    string sql = @"update Food set foodOldPrice = " + oldPrice + ",foodNewPrice="
            //              + newPrice + ",foodRemark = '" + remark + "'where foodId = " + foodId +"";
            //    cmd.CommandText = sql;
            //    int i = cmd.ExecuteNonQuery();
            //    if (i == 0)
            //    {
            //        MessageBox.Show("更新失败！");
            //    }
            //    else
            //    {
            //        MessageBox.Show("更新成功！");
            //        //清空文本框的值
            //        this.txtOldPrice.Clear();
            //        this.txtRemark.Clear();
            //        this.txtNewPrice.Clear();
            //        this.lblFoodId.Text = "";
            //    }
            //}
        }

        /// <summary>
        /// 加载事件
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void FoodManage_Load(object sender, EventArgs e)
        {
            //查询所有的菜品类型
            selectAllTypeName();
            //查询所有的菜品信息
            selectAllFood();
        }

        /// <summary>
        /// 查询所有的菜品 
        /// </summary>
        public void selectAllFood()
        {
            olecon = new OleDbConnection(str);
            string sql = @"select foodId as 菜品编号,foodName as 菜品名,foodOldPrice as 原价
                                  ,foodNewPrice as 现价,foodRemark as 备注 from Food";
            oleda = new OleDbDataAdapter(sql, olecon);
            myds = new DataSet();
            oleda.Fill(myds);

            this.dvgFood.DataSource = myds.Tables[0].DefaultView;
//            SqlConnection con = new SqlConnection();
//            con.ConnectionString = "server=.;database=FoodDB;uid=sa;pwd=sasa";
//            con.Open();
//            if (con.State == ConnectionState.Open)
//            {
//                string sql = @"select foodId as 菜品编号,foodName as 菜品名,foodOldPrice as 原价
//                                ,foodNewPrice as 现价,foodRemark as 备注 from Food";
//                SqlDataAdapter adapter = new SqlDataAdapter(sql, con);
//                DataSet ds = new DataSet();
//                adapter.Fill(ds);

//                this.dvgFood.DataSource = ds.Tables[0].DefaultView;
//            }
        }

//        /// <summary>
//        /// 查询所有类型商品
//        /// </summary>
//        public void selectAllTypeName()
//        {
//            SqlConnection con = new SqlConnection();
//            con.ConnectionString = "server=.;database=FoodDB;uid=sa;pwd=sasa";
//            con.Open();
//            if (con.State == ConnectionState.Open)
//            {
//                string sql = @"select foodId as 菜品编号,foodName as 菜品名,foodOldPrice as 原价
//                               ,foodNewPrice as 现价,foodRemark as 备注 from Food";
//                SqlDataAdapter adapter = new SqlDataAdapter(sql, con);
//                DataSet ds = new DataSet();
//                adapter.Fill(ds);

//                this.dvgFood.DataSource = ds.Tables[0].DefaultView;
//            }
//        }

        /// <summary>
        /// 查询所有类型名称
        /// </summary>
        public void selectAllTypeName()
        {
            olecon = new OleDbConnection(str);
            string sql = "select typeName,typeId from FoodType";
            oleda = new OleDbDataAdapter(sql, olecon);
            myds = new DataSet();
            oleda.Fill(myds);

            this.cboFoodType.DataSource = myds.Tables[0].DefaultView;
            this.cboFoodType.DisplayMember = "typeName";
            this.cboFoodType.ValueMember = "typeId";
            //SqlConnection con = new SqlConnection();
            //con.ConnectionString = "server=.;database=FoodDB;uid=sa;pwd=sasa";
            //con.Open();
            //if (con.State == ConnectionState.Open)
            //{
            //    string sql = "select typeName,typeId from FoodType";
            //    SqlDataAdapter adapter = new SqlDataAdapter(sql, con);
            //    DataSet ds = new DataSet();
            //    adapter.Fill(ds);
            //    this.cboFoodType.DataSource = ds.Tables[0].DefaultView;
            //    this.cboFoodType.DisplayMember = "typeName";
            //    this.cboFoodType.ValueMember = "typeId";
            //}
            //else
            //{

            //}
        }

        private void dvgFood_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            //获取当前行的第0列的值，即获得ID值
            string id = this.dvgFood.CurrentRow.Cells[0].Value.ToString();
            //ID值不为空就执行删除代码块
            if (id.ToString() != "")
            {
                if (MessageBox.Show("确认删除吗？", "提示", MessageBoxButtons.YesNo) == DialogResult.Yes)
                {
                    olecon = new OleDbConnection(str);
                    olecon.Open();
                    string sql = "delete Food where foodId = " + id + "";
                    OleDbCommand olecmd = new OleDbCommand(sql, olecon);
                    int i = olecmd.ExecuteNonQuery();
                    if (i == 0)
                    {
                        MessageBox.Show("删除失败！");
                    }
                    else
                    {
                        MessageBox.Show("删除成功!");
                        selectAllFood();
                    }
                    //SqlConnection con = new SqlConnection();
                    //con.ConnectionString = "server=.;database=FoodDB;uid=sa;pwd=sasa";
                    //con.Open();
                    //if (con.State == ConnectionState.Open)
                    //{
                    //    SqlCommand cmd = new SqlCommand();
                    //    cmd.Connection = con;
                    //    string sql = "delete Food where foodId = " + id + "";
                    //    cmd.CommandText = sql;
                    //    int i = cmd.ExecuteNonQuery();
                    //    if (i == 0)
                    //    {
                    //        MessageBox.Show("删除失败！");
                    //    }
                    //    else
                    //    {
                    //        MessageBox.Show("删除成功!");
                    //        selectAllFood();
                    //    }
                    //}
                }
            }
            else
            {
                MessageBox.Show("不能选择空行哦！");
            }
        }

    }
}
