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
    public partial class news : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            newbind();
        }
        public void newbind()
        {
            string sqlstr = "select * from tb_news";
            DataTable dt = AccessHelper.getDataTable(sqlstr);
            newslist.DataSource = dt;
            newslist.DataBind();
        }
    }
}