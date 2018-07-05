using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.OleDb;
using System.Text;
namespace Web
{
	
    public partial class GuestBook : System.Web.UI.Page
    {
      
        private void Page_Load(object sender, System.EventArgs e)
        {
            // 在此处放置用户代码以初始化页面

            LeftContents.strmytitlep = "意见反馈";
            LeftContents.strqryp = "Select * From T_submenu";
            LeftContents.strurlp = "guestbook.aspx?id=";
            LeftContents.strfieldp = "itemname";
            if (Request.QueryString["Action"] == "send")
            {
                string strsql = string.Format("Insert into T_guestbook (topic,myname,corpname,address,phone,fax,email,content) "
                    + " values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}')",
                    Request.Form["topic"], Request.Form["myname"], Request.Form["corpname"], Request.Form["address"],
                    Request.Form["phone"], Request.Form["fax"], Request.Form["email"], Request.Form["content"]);
                if (DBFun.ExecuteUpdate(strsql))
                {
                    Response.Write("<script>alert('留言成功，感谢您的使用！');window.location.href='guestbook.aspx';</script>");
                }
                    
            }
            
        }
      
       
    }
}