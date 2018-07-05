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
    public partial class AddFood : Form
    {
        public AddFood()
        {
            InitializeComponent();
        }

        OleDbConnection olecon;
        OleDbDataAdapter oleda;
        DataSet myds;
        //string str = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=FoodSerch.mdb";
        string str = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=FoodSerch.accdb;Persist Security Info=True";
        /// <summary>
        ///  添加菜品
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnSave_Click(object sender, EventArgs e)
        {
            string txtFoodName = this.txtFoodName.Text.ToString();
            float txtOldPrice = float.Parse(this.txtOldPrice.Text.ToString());
            float txtNewPrice = float.Parse(this.txtNewPrice.Text.ToString());
            string txtRemark = this.txtRemark.Text.ToString();
            int typeId = int.Parse(this.cboFoodType.SelectedValue.ToString());

            olecon = new OleDbConnection(str);
            olecon.Open();
            //SqlConnection con = new SqlConnection();
            //con.ConnectionString = "server=.;database=FoodDB;uid=sa;pwd=sasa";
            //con.Open();
            string sql = "insert into Food(foodName,foodOldPrice,foodNewPrice,foodRemark,typeId)values('" + txtFoodName + "'," + txtOldPrice + ","
                    + txtNewPrice + ",'" + txtRemark + "'," + typeId + ")";
            OleDbCommand olecmd = new OleDbCommand(sql, olecon);
            int i = olecmd.ExecuteNonQuery();
            if (i == 0)
            {
                MessageBox.Show("菜品添加失败！");
            }
            else
            {
                MessageBox.Show("菜品添加成功！");
            }
            olecon.Close();
            /*
            if (con.State == ConnectionState.Open)
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                string sql = "insert into Food values('" + txtFoodName + "'," + txtOldPrice + ","
                    + txtNewPrice + ",'" + txtRemark + "'," + typeId + ")";
                cmd.CommandText = sql;
                int i = cmd.ExecuteNonQuery();

                if (i == 0)
                {
                    MessageBox.Show("菜品添加失败！");
                }
                else
                {
                    MessageBox.Show("菜品添加成功！");
                }
            }*/
        }

        /// <summary>
        /// 查询所有类型
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
            //con.ConnectionString = "server=.;database=FoodDb;uid=sa;pwd=sasa";
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
            //    MessageBox.Show("数据库连接失败！");
            //}
        }

        /// <summary>
        /// 窗体加载事件
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void AddFood_Load(object sender, EventArgs e)
        {
            //查询菜品类型名称
            selectAllTypeName();
        }
    }
}
