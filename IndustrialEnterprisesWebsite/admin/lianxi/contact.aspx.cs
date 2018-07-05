using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using FineUI;
using dbAccessHelp;

namespace Webwangzhan.admin.lianxi
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
        /// <summary>
        /// 绑定要修改的新闻内容
        /// </summary>
        public void lianxibind()
        {
            string sqlstr = "select * from tb_contact";
            DataTable dt = AccessHelper.getDataTable(sqlstr);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow row in dt.Rows)
                {
                    FCKeditor1.Value = Convert.ToString(row["c_neirong"]);
                }
            }
            else
            {

            }
        }
        /// <summary>
        /// 提交操作
        /// </summary>
        /// <param name="sender">确认，提交</param>
        /// <param name="e"></param>
        protected void tijiao_Click(object sender, EventArgs e)
        {

            string neirong = FCKeditor1.Value.Trim();
            string sql = "insert into tb_contact(c_neirong) values('" + neirong + "')";
            string sqlstr = "select * from tb_contact";
            DataTable dt = AccessHelper.getDataTable(sqlstr);
            if (neirong == null || neirong == "")
            {
                Alert.Show("操作失败！");
            }
            else
            {

                if (dt.Rows.Count > 0)
                {
                    string strsql0 = "update tb_contact set c_neirong='" + neirong + "'";
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