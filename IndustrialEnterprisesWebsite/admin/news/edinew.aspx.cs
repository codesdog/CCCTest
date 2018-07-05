using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FineUI;
using dbAccessHelp;
using System.Data;
using System.Data.OleDb;


namespace Webwangzhan.admin.news
{
    public partial class edinew : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                newbind();
                LoadData1();
            }
            
        }
        private void LoadData1()
        {

            // 关闭按钮的客户端脚本：
            // 1. 首先确认窗体中表单是否被修改（如果已经被修改，则弹出是否关闭的确认对话框）
            // 2. 然后关闭本窗体，回发父窗体
            btnSubmit.OnClientClick =ActiveWindow.GetConfirmHidePostBackReference();


        }
        /// <summary>
        /// 绑定要修改的新闻内容
        /// </summary>
        public void newbind()
        {
            int New_id = Int32.Parse(Request.Params["id"]);
            string sqlstr = "select * from [tb_news] where n_id=" + New_id + "";
            DataTable dt = AccessHelper.getDataTable(sqlstr);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow row in dt.Rows)
                {
                    tbxUseraName.Text = Convert.ToString(row["n_tname"]);
                    FCKeditor1.Value = Convert.ToString(row["n_neirong"]);
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
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int New_id = Int32.Parse(Request.Params["id"]);
            string biaoti = tbxUseraName.Text.Trim();
            string neirong = FCKeditor1.Value.Trim();
            string str = "update [tb_news] set n_tname='" + biaoti + "',n_neirong='" + neirong + "' where n_id=" + New_id + "";
            if (neirong == null || neirong == "" || biaoti == null || biaoti=="")
            {
                Alert.ShowInTop("操作失败！");
            }
            else
            {
                AccessHelper.ExecuteSql(str);
                Alert.ShowInTop("修改成功！");

            }
        }
    }
}