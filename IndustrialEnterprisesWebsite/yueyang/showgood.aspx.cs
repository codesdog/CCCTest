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
    public partial class showgood : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                gdbind();
            }
        }
        /// <summary>
        /// 绑定产品简介
        /// </summary>
        public void gdbind()
        {
            int id = Int32.Parse(Request.Params["id"]);
            string sqlstr = "select * from [tb_goods] where gid=" + id + "";
            DataTable dt = AccessHelper.getDataTable(sqlstr);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow row in dt.Rows)
                {
                    this.Label1.Text = Convert.ToString(row["gname"]);
                    this.Image1.ImageUrl = Convert.ToString(row["gtu"]);
                    this.Label2.Text = Convert.ToString(row["gneirong"]);
                }
            }
            else
            {
                this.Label1.Text = "暂无信息！";
                this.Label2.Text = "";
            }
        }
    }
}