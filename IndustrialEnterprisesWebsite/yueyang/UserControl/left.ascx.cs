using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using dbAccessHelp;

namespace Webwangzhan.yueyang.UserControl
{
    public partial class left : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                bindurl();
                lianxibind();
                bindcalss();
            }
        }
        /// <summary>
        /// 绑定产品类别
        /// </summary>
        public void bindcalss() 
        {
            string sql = "select *  from tb_gclass";
            gclist.DataSource = AccessHelper.getDataReader(sql);
            gclist.DataBind();
        }
        //绑定公司联系方式
        public void lianxibind()
        {
            string sqlstr = "select * from tb_webshezhi";
            DataTable dt = AccessHelper.getDataTable(sqlstr);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow row in dt.Rows)
                {
                    this.lianxiLabel.Text = Convert.ToString(row["web_name"]);
                    this.Label1.Text = Convert.ToString(row["web_ren"]);
                    this.Label2.Text = Convert.ToString(row["web_no"]);
                    this.Label3.Text = Convert.ToString(row["web_dizhi"]);
                }
            }
            else
            {
                this.lianxiLabel.Text = "暂无信息！";
            }
        }
        /// <summary>
        /// 绑定友情链接
        /// </summary>
        public void bindurl() 
        {
            string sql = "select *  from tb_youqing";
            youqing.DataSource = AccessHelper.getDataReader(sql);
            youqing.DataBind();
        }
    }
}