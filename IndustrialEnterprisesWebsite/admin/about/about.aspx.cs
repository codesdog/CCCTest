using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FineUI;
using dbAccessHelp;
using System.Data;

namespace Webwangzhan.admin.about
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
        /// <summary>
        /// 绑定要修改的新闻内容
        /// </summary>
        public void aboutbind()
        {
            string sqlstr = "select * from tb_about";
            DataTable dt = AccessHelper.getDataTable(sqlstr);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow row in dt.Rows)
                {
                    FCKeditor1.Value = Convert.ToString(row["a_neirong"]);
                }
            }
            else
            {
                
            }
        }
        /// <summary>
        /// 提交操作
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button1_Click(object sender, EventArgs e)
        {
            string neirong = FCKeditor1.Value.Trim();
            string sql = "insert into tb_about(a_neirong) values('" + neirong + "')";
            string sqlstr = "select * from tb_about";
            DataTable dt = AccessHelper.getDataTable(sqlstr);
            if (neirong == null || neirong == "")
            {
                Alert.Show("操作失败！");
            }
            else
            {

                if (dt.Rows.Count > 0)
                {
                    string strsql0 = "update tb_about set a_neirong='" + neirong + "'";
                    AccessHelper.ExecuteSql(strsql0);
                    Alert.Show("操作成功，点击确定退出！");
                }
                else
                {
                    AccessHelper.ExecuteSql(sql);
                    Alert.Show("操作成功！");
                }

            }
        }
    }
}