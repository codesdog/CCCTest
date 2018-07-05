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
    public partial class Jobs : System.Web.UI.Page
    {
        public string Jobposition,department,thewhere,limittime,email,requirement,Addtime;
        protected void Page_Load(object sender, EventArgs e)
        {
            pageload();           
        }
        protected void pageload()
        {
            //绑定页面内容

            LeftContents.strmytitlep = "招聘列表";
            LeftContents.strqryp = "Select * From T_Jobs order by id desc";
            LeftContents.strurlp = "Jobs.aspx?id=";
            LeftContents.strfieldp = "Jobposition";
            if (!IsPostBack)
            {
                string strqry = "";
                if (Request.QueryString.Count != 0)
                {
                    strqry = "Select  * From T_Jobs where id= " + Request.QueryString["id"] ;
                    // 下载于www.51aspx.com
                }               
                else
                {
                    strqry = "Select top 1 * From T_Jobs  order by id desc";
                    lbl_Title.Text = "最新招聘";
                }
                DataRow drw = DBFun.GetDataRow(strqry);
                if (drw == null)
                {
                    return;
                }
                lbl_Title.Text = drw["Jobposition"].ToString();
                Jobposition = drw["Jobposition"].ToString();
                department = drw["department"].ToString();
                thewhere = drw["thewhere"].ToString();
                email = drw["email"].ToString();
                limittime = ((DateTime)drw["limittime"]).ToString("yyyy年MM月dd日");
                Addtime = ((DateTime)drw["Addtime"]).ToString("yyyy年MM月dd日");
                requirement = drw["requirement"].ToString();

                if ((DateTime)drw["limittime"] < DateTime.Today)
                {
                    limittime += " <font color='red'>过期</font>";
                }

                
            }
        }
       
    }
}