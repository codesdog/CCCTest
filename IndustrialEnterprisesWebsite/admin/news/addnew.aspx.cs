using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FineUI;
using dbAccessHelp;

namespace Webwangzhan.admin.news
{
    public partial class addnew : System.Web.UI.Page
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
            btnSubmit.OnClientClick = ActiveWindow.GetConfirmHidePostBackReference();
        }
        /// <summary>
        /// 提交操作
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string biaoti = tbxUseraName.Text.Trim();
            string neirong = FCKeditor1.Value.Trim();
            string addtime  = DateTime.Now.ToString();
            string sql = "insert into tb_news(n_tname,n_neirong,n_time) values('" + biaoti + "','" + neirong + "','" + addtime + "')";
            if (neirong == null || neirong == "" || biaoti == null || biaoti=="")
            {
                Alert.Show("操作失败！");
            }
            else
            {
                AccessHelper.ExecuteSql(sql);
                Alert.Show("操作成功！");
                tbxUseraName.Text = "";
                FCKeditor1.Value = "";
            }
        }
    }
}