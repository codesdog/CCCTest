using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using dbAccessHelp;

namespace Webwangzhan.admin.webguanli
{
    public partial class webcanshu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                bind();
            }
        }
        public void bind() 
        {
            string sqlstr = "select * from tb_webshezhi";
            DataTable dt = AccessHelper.getDataTable(sqlstr);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow row in dt.Rows)
                {
                    gmingcheng.Text = Convert.ToString(row["web_name"]);
                    TextBox1.Text = Convert.ToString(row["web_ren"]);
                    TextBox2.Text = Convert.ToString(row["web_no"]);
                    TextBox3.Text = Convert.ToString(row["web_dizhi"]);
                }
            }
            else
            {

            }
        }
        /// <summary>
        /// 网站参数设置
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void tijiao_Click(object sender, EventArgs e)
        {
            string name = gmingcheng.Text.Trim();
            string lianxiren = TextBox1.Text.Trim();
            string shouji = TextBox2.Text.Trim();
            string dizhi = TextBox3.Text.Trim();
            if (name != null || lianxiren != null || shouji != null || dizhi != null)
            {
                //string sql = "insert into tb_webshezhi(web_name,web_ren,web_no,web_dizhi) values('" + name + "','" + lianxiren + "','" + shouji + "','" + dizhi + "')";
                string str = "update tb_webshezhi set web_name='" + name + "',web_ren='" + lianxiren + "',web_no='" + shouji + "',web_dizhi='" + dizhi + "'";
                dbAccessHelp.AccessHelper.ExecuteSql(str);
                JsHelper.JsHelper.Alert("操作成功！");
            }
            else 
            {
                JsHelper.JsHelper.Alert("有空值！");
            }
       }
    }
}