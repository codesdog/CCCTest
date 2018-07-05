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
namespace Web.Admin
{
    public partial class set : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            pageload();
            
        }
        private void pageload()
        {
            CommFun.IsAdmin();
            if (!IsPostBack)
            {

                string strqry = "select * From T_setup";
                DataRow drw = DBFun.GetDataRow(strqry);
                if (drw == null)
                {
                    Response.Write("读取数据库失败！");
                    Response.End();
                    return;
                }
                else
                {
                    ReadFromDb(drw);
                }
            }
        }
        private  void ReadFromDb(DataRow drw)
        {
            //从数据库读取信息到页面

            tb_WebSiteName.Text = drw["Name"].ToString();
            tb_WebSiteUrl.Text = drw["Url"].ToString();            
            tb_WebKey.Text = drw["webKeys"].ToString();
            tb_WebDes.Text = drw["webDes"].ToString();
            tb_Copyright.Text = drw["Copyright"].ToString();
            tb_Contact.Text = drw["contact"].ToString();
            tb_CorpIntro.Text = drw["Intro"].ToString();
            
        }
        private string GetDataForSave()
        {
           //获取网站设置信息，以便保存            
            string strsave = string.Format("Update T_setup set Name='{0}',Url='{1}'"
                    + ",webKeys='{2}',WebDes='{3}',copyright='{4}',contact='{5}',intro='{6}'",
                  tb_WebSiteName.Text,tb_WebSiteUrl.Text,tb_WebKey.Text,
                  tb_WebDes.Text, tb_Copyright.Text, tb_Contact.Text,tb_CorpIntro.Text );

            Application["SiteUrl"] = tb_WebSiteUrl.Text;
            Application["SiteKey"] = tb_WebKey.Text;
            Application["SiteDes"] = tb_WebDes.Text;
            Application["CopyRight"] = tb_Copyright.Text;
            Application["SiteName"] = tb_WebSiteName.Text;
            string[] contact = tb_Contact.Text.Split(',');
            Application["contact"] = contact;
            Application["AppSet"] = "yes";

            return strsave;
        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            //保存
            try
            {
                
                string strsql = GetDataForSave();
                //Response.Write(strsql);
                //Response.Write("<script>alert('保存dd！');</script>");
                if (DBFun.ExecuteUpdate(strsql))
                {

                    Response.Write("<script>alert('保存成功！');</script>");
                }
                else
                {
                    Response.Write("<script>alert('保存失败！');</script>");
                }
            }
            catch 
            {
                Response.Write("<script>alert('保存失败！');</script>");
            }
        }
}
}