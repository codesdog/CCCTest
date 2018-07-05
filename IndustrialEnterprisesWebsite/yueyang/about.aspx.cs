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
    public partial class about : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
               aboutbind();
            }
        }
        //绑定公司简介
        public void aboutbind()
        {
            string sqlstr = "select * from tb_about";
            DataTable dt = AccessHelper.getDataTable(sqlstr);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow row in dt.Rows)
                {
                    this.aboutLabel.Text = Convert.ToString(row["a_neirong"]);
                }
            }
            else
            {
                this.aboutLabel.Text = "暂无信息！";
            }
        }
    }
}