using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using dbAccessHelp;

namespace Webwangzhan.yueyang
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                aboutbind();
                bindgd();
            }
        }
        /// <summary>
        /// 绑定产品
        /// </summary>
        public void bindgd() 
        {
            string sql = "select top 16 * from tb_goods order by gid desc";
            gdlist.DataSource = AccessHelper.getDataTable(sql);
            gdlist.DataBind();
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
                    this.aboutLabel.Text =GetStr( Convert.ToString(row["a_neirong"]));
                }
            }
            else
            {
                this.aboutLabel.Text = "暂无信息！";
            }
        }
        /// <summary>
        /// 截取字符串越界问题
        /// </summary>
        /// <param name="obj">GetStr</param>
        /// <returns>obj</returns>
        public string GetStr(object obj)
        {


            if (obj.ToString().Length <= 300)
            {
                return obj.ToString();
            }
            else
            {
                return obj.ToString().Substring(0, 300) + "...";
            }

        }
    }
}