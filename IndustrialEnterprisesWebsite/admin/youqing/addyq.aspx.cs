using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FineUI;
using dbAccessHelp;

namespace Webwangzhan.admin.youqing
{
    public partial class addyq : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData1();
            }
        }
        private void LoadData1()
        {

            // 关闭按钮的客户端脚本：
            // 1. 首先确认窗体中表单是否被修改（如果已经被修改，则弹出是否关闭的确认对话框）
            // 2. 然后关闭本窗体，回发父窗体
            btnLogin.OnClientClick = ActiveWindow.GetConfirmHidePostBackReference();
        }
        /// <summary>
        /// 添加友情链接操作
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string uname = yqname.Text.Trim();
            string url = yqurl.Text.Trim();
            string addtime = DateTime.Now.ToString();
            string sql = "insert into tb_youqing(yq_name,yq_url,yq_time) values('" + uname + "','" + url + "','" + addtime + "')";
            if (url == null || url == "")
            {
                Alert.ShowInTop("操作失败！");
            }
            else
            {
                this.yqurl.Attributes["onblur"] = "javascript:checkuserinfo();";
                AccessHelper.ExecuteSql(sql);
                Alert.ShowInTop("操作成功！");
                yqname.Text = "";
                yqurl.Text = "";
            }
        }
    }
}