using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using FineUI;
using dbAccessHelp;

namespace Webwangzhan.admin.goods
{
    public partial class edigdclass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                classbind();
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
        /// 绑定要修改的类别名
        /// </summary>
        public void classbind()
        {
            int id = Int32.Parse(Request.Params["id"]);
            string sqlstr = "select gc_name from [tb_gclass] where gc_id=" + id + "";
            DataTable dt = AccessHelper.getDataTable(sqlstr);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow row in dt.Rows)
                {
                    this.classname.Text = Convert.ToString(row["gc_name"]);
                }
            }
            else
            {

            }
        }
        /// <summary>
        /// 修改操作
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            int id = Int32.Parse(Request.Params["id"]);
            string leibie = classname.Text.Trim();
            string sql = "update [tb_gclass] set gc_name='" + leibie + "' where gc_id=" + id + "";
            if (leibie == null || leibie == "")
            {
                Alert.ShowInTop("操作失败！");
            }
            else
            {
                AccessHelper.ExecuteSql(sql);
                Alert.ShowInTop("操作成功！");
            }
        }
    }
}