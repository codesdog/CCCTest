using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using dbAccessHelp;

namespace Webwangzhan.yueyang
{
    public partial class goods : System.Web.UI.Page
    {
        DataSet ds;
        OleDbDataAdapter dr;
        OleDbCommand com;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string strconn = System.Configuration.ConfigurationManager.ConnectionStrings["mydb"].ToString();
                OleDbConnection con = new OleDbConnection(strconn);
                con.Open();
                com = new OleDbCommand();
                com.Connection = con;
                com.CommandText = "select count(*) from tb_goods";
                AspNetPager1.AlwaysShow = true;
                AspNetPager1.PageSize = 16;
                AspNetPager1.RecordCount = (int)com.ExecuteScalar();
                con.Close();

                RepeaterDataBind();
            }
        }
        /// <summary>
        /// 绑定产品
        /// </summary>
        private void RepeaterDataBind()
        {
            string sql = "select * from tb_goods order by gid desc";
            dr = new OleDbDataAdapter(sql, AccessHelper.GetCon());
            ds = new DataSet();
            dr.Fill(ds, AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1), AspNetPager1.PageSize, "tb_goods");
            this.gdlist.DataSource = ds.Tables["tb_goods"];
            this.gdlist.DataBind();
        }

        protected void AspNetPager1_PageChanged(object sender, EventArgs e)
        {
            RepeaterDataBind();
        } 
    }
}