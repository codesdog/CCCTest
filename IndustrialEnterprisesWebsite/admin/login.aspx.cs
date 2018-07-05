using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using JsHelper;
using dbAccessHelp;

namespace Webwangzhan.admin
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        /// <summary>
        /// 管理员登陆入口
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void IbtnEnter_Click(object sender, EventArgs e)
        {
            string sName = this.TxtUserName.Text.Trim();
            string sPwd = this.TxtPassword.Text.Trim();

            if (sName == null || sName == "" || sPwd == null || sPwd=="")
            {
                JsHelper.JsHelper.Alert("用户名或密码为空！");
                
            }
            else
            {
               
                string sql = "select count(*) from tb_admin where admin_name='" + sName + "' and admin_pwd='" + sPwd + "'";
                DataTable dt = dbAccessHelp.AccessHelper.getDataTable(sql);
                if (Convert.ToInt32(dt.Rows[0][0]) > 0)
                {
                    Session["admin_name"] = sName;
                    JsHelper.JsHelper.AlertAndRedirect("登录成功！", "manage.aspx");
                }
                else
                {
                    JsHelper.JsHelper.Alert("用户名或密码错误！");
                }
            }
        }
    }
}