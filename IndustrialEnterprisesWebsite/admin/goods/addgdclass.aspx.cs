using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FineUI;
using dbAccessHelp;

namespace Webwangzhan.admin.goods
{
    public partial class addgdclass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadData1();
        }
        private void LoadData1()
        {

            // 关闭按钮的客户端脚本：
            // 1. 首先确认窗体中表单是否被修改（如果已经被修改，则弹出是否关闭的确认对话框）
            // 2. 然后关闭本窗体，回发父窗体
            btnLogin.OnClientClick = ActiveWindow.GetConfirmHidePostBackReference();
        }
        /// <summary>
        /// 添加产品类别操作
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string leibie = classname.Text.Trim();
            string addtime = DateTime.Now.ToString();
            string sql = "insert into tb_gclass(gc_name,gc_time) values('" + leibie + "','" + addtime + "')";
            if (leibie == null || leibie == "")
            {
                Alert.ShowInTop("操作失败！");
            }
            else 
            {
                AccessHelper.ExecuteSql(sql);
                Alert.ShowInTop("操作成功！");
                classname.Text = "";
            }
        }
    }
}