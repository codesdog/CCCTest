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
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                lianxibind();
            }
        }
        //绑定公司联系方式
        public void lianxibind()
        {
            string sqlstr = "select * from tb_contact";
            DataTable dt = AccessHelper.getDataTable(sqlstr);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow row in dt.Rows)
                {
                    this.lianxiLabel.Text = Convert.ToString(row["c_neirong"]);
                }
            }
            else
            {
                this.lianxiLabel.Text = "暂无信息！";
            }
        }
    }
}