using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using FineUI;
using dbAccessHelp;
// 下载于www.51spx.com
namespace Webwangzhan.admin
{
    public partial class changmima : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                yonghubind();
            }
        }
        //绑定要修改的用户信息
        public void yonghubind() 
        {
            string sqlstr = "select * from [tb_admin] ";
            DataTable dt = AccessHelper.getDataTable(sqlstr);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow row in dt.Rows)
                {
                    tbxUserName.Text = Convert.ToString(row["admin_name"]);
                    tbxPassword.Text = Convert.ToString(row["admin_pwd"]);
                }
            }
            else
            {

            }
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (tbxUserName.Text == null|| newtbxPassword.Text ==null)
            {
                Alert.ShowInTop("不能有空值！");
            }
            else
            {
                string str = "update tb_admin set admin_name='" + tbxUserName.Text + "',admin_pwd='" + newtbxPassword.Text + "'";
                dbAccessHelp.AccessHelper.ExecuteSql(str);
                Alert.ShowInTop("修改成功，请退出重新登录！");
            }
        }


    }
}