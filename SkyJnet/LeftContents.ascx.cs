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
namespace Web
{
    public partial class LeftContents : System.Web.UI.UserControl
    {
        private  string strqry,strurl,strfield,strmytitle;  //四个变量供外站调用.分别为SQL语句,超链接地址,列表字段名,菜单名
        protected string address, post, phone, fax, email;
        public string strqryp
        {
            set
            {
                strqry = value;
            }
            get
            {
                return strqry;
            }
        }
        public string strurlp
        {
            set
            {
                strurl = value;
            }
            get
            {
                return strurl;
            }
        }
        public string strfieldp
        {
            set
            {
                strfield = value;
            }
            get
            {
                return strfield;
            }
        }
        public string strmytitlep
        {
            set
            {
                strmytitle = value;
            }
            get
            {
                return strmytitle;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            pageload();
        }
        private void pageload()
        {
           
            DataView dv;
            dv = DBFun.GetDataView(strqry);
            rp_menu.DataSource = dv;
            rp_menu.DataBind();
            if (Application["contact"] != null)
            {
                string[] contact=(string[])Application["contact"];
                address = contact[0];
            }

        }
    }
}