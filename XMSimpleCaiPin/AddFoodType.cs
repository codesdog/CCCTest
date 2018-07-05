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
    public partial class AddFoodType : Form
    {
        public AddFoodType()
        {
            InitializeComponent();
        }

        OleDbConnection olecon;
        OleDbDataAdapter oleda;
        DataSet myds;
        //string str = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=FoodSerch.mdb";
        string str = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=FoodSerch.accdb;Persist Security Info=True";
        /// <summary>
        ///  添加商品类型事件
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnAddFoodType_Click(object sender, EventArgs e)
        {
            string txtTypeName = this.txtTypeName.Text.ToString();
            //SqlConnection con = new SqlConnection();
            //con.ConnectionString = "server=.;database=FoodDB;uid=sa;pwd=sasa";
            //con.Open();
            olecon = new OleDbConnection(str);
            //if (con.State == ConnectionState.Open)
            //{
            //SqlCommand cmd = new SqlCommand();
            //cmd.Connection = con;
            string sql = "insert into FoodType(typeName)values('" + txtTypeName + "')";
            //cmd.CommandText = sql;
            //int i = cmd.ExecuteNonQuery();
            OleDbCommand olecmd = new OleDbCommand(sql, olecon);
            olecon.Open();
            int i = olecmd.ExecuteNonQuery();
            if (i == 0)
            {
                MessageBox.Show("菜品类型添加失败！");
            }
            else
            {
                MessageBox.Show("菜品类型添加成功 !");
            }

            olecon.Close();
            //con.Close();
            selectAllTypeName();
            //}
        }

        /// <summary>
        /// 查询所有类型名称
        /// </summary>
        public void selectAllTypeName()
        {
            //SqlConnection con = new SqlConnection();
            //con.ConnectionString = "server=.;database=FoodDB;uid=sa;pwd=sasa";
            //con.Open();
            olecon = new OleDbConnection(str);

            string sql = "select typeName from FoodType";
            oleda = new OleDbDataAdapter(sql, olecon);
            myds = new DataSet();
            oleda.Fill(myds);
            this.cboFoodType.DataSource = myds.Tables[0].DefaultView;
            this.cboFoodType.DisplayMember = "typeName";
           /* if (con.State == ConnectionState.Open)
            {
                string sql = "select typeName from FoodType";
                SqlDataAdapter adapter = new SqlDataAdapter(sql, con);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                this.cboFoodType.DataSource = ds.Tables[0].DefaultView;
                this.cboFoodType.DisplayMember = "typeName";
            }
            else
            {
                MessageBox.Show("数据库连接失败！");
            }*/
        }

        private void AddFoodType_Load(object sender, EventArgs e)
        {

        }
    }
}
