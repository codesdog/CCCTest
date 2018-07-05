using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using FineUI;
using dbAccessHelp;

namespace Webwangzhan.admin.youqing
{
    public partial class ediyq : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                urlbind();
                LoadData1();
            }
        }
        /// <summary>
        /// 绑定要修改的url
        /// </summary>
        public void urlbind()
        {
            int id = Int32.Parse(Request.Params["id"]);
            string sqlstr = "select * from [tb_youqing] where yq_id=" + id + "";
            DataTable dt = AccessHelper.getDataTable(sqlstr);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow row in dt.Rows)
                {
                    this.yqname.Text = Convert.ToString(row["yq_name"]);
                    this.yqurl.Text = Convert.ToString(row["yq_url"]);
                }
            }
            else
            {

            }
        }
      
        /// <summary>
        /// 修改友情链接操作
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            int id = Int32.Parse(Request.Params["id"]);
            string name = yqname.Text.Trim();
            string url = yqurl.Text.Trim();
            string addtime = DateTime.Now.ToString();
            string str = "update tb_youqing set yq_url='" + url + "',yq_name='"+name+"' where yq_id=" + id + "";
            if (url == null || url == "")
            {
                Alert.ShowInTop("操作失败！");
            }
            else
            {
                AccessHelper.ExecuteSql(str);
                Alert.ShowInTop("操作成功！");
                yqurl.Text = "";
            }
        }
        private void LoadData1()
        {

            // 关闭按钮的客户端脚本：
            // 1. 首先确认窗体中表单是否被修改（如果已经被修改，则弹出是否关闭的确认对话框）
            // 2. 然后关闭本窗体，回发父窗体
            btnLogin.OnClientClick = ActiveWindow.GetConfirmHidePostBackReference();
        }
    }
}