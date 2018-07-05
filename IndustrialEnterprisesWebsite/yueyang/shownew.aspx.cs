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
    public partial class shownew : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            newbind();
        }
        //绑定公司简介
        public void newbind()
        {
            int New_id = Int32.Parse(Request.Params["id"]);
            string sqlstr = "select n_tname,n_neirong from [tb_news] where n_id=" + New_id + "";
            DataTable dt = AccessHelper.getDataTable(sqlstr);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow row in dt.Rows)
                {
                    this.biaoti.Text = Convert.ToString(row["n_tname"]);
                    this.neirong.Text = Convert.ToString(row["n_neirong"]);
                }
            }
            else
            {
                this.neirong.Text = "暂无信息！";
            }
        }
    }
}