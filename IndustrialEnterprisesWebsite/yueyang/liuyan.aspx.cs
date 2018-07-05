using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using dbAccessHelp;

namespace Webwangzhan.yueyang
{
    public partial class liuyan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                
            }
        }
        /// <summary>
        /// 提交订单
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        //protected void sublb_Click(object sender, EventArgs e)
        //{
        //    string d1 = TextBox1.Text.Trim();
        //    string d2 = TextBox2.Text.Trim();
        //    string d3 = TextBox3.Text.Trim();
        //    string d4 = TextBox4.Text.Trim();
        //    string sql = "insert into tb_order(oname,ono,oren,odianhua) values('" + d1 + "','" + d2 + "','" + d3 + "','" + d4 + "')";
        //    if (TextBox1.Text == null || TextBox2.Text == null || TextBox3.Text == null || TextBox4.Text == null)
        //    {
        //        //this.Label1.Text = "有空值，保存失败！";
        //        //JsHelper.JsHelper.Alert("有空值，保存失败！");
        //        this.sublb.Attributes.Add("onload", "javascript:test2();");

        //    }
        //    else
        //    {
        //        dbAccessHelp.AccessHelper.ExecuteSql(sql);
        //        Response.Write("<script> function test2() { scscms_alert('成功提示信息', 'ok');}</script>");

        //        //this.Label1.Text = "保存成功！";
        //        //JsHelper.JsHelper.Alert("保存成功！");
        //        TextBox1.Text = "";
        //        TextBox2.Text = "";
        //        TextBox3.Text = "";
        //        TextBox4.Text = "";
        //    }
        //}
    }
}