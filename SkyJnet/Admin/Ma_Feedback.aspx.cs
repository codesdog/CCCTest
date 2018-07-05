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
    public partial class Feedback : System.Web.UI.Page,System.Web.UI.ICallbackEventHandler
    {
        protected  string clientstr;//客户端结果
        protected void Page_Load(object sender, EventArgs e)
        {
            
            //加载
            if (!IsPostBack)
            {
                CommFun.IsAdmin();
                string strqry;
                if (Request.QueryString["action"] == "Delete")
                {
                    //删除
                    strqry = "Delete From T_guestbook where ID=" + Request.QueryString["id"];
                    if (DBFun.ExecuteUpdate(strqry))
                    {
                        Response.Redirect(Request.UrlReferrer.ToString());
                    }

                }
                           
                               
                strqry = "select * From T_guestbook order by id desc";                

                //绑定数据
                DataView  dvlist = DBFun.GetDataView(strqry);           
                AspNetPager1.RecordCount = dvlist.Table.Rows.Count;
                Session["dvlist"] = dvlist;
                bindData();
                                
            }  
        }
        public void RaiseCallbackEvent(string eventArgument)
        {
            //服务端函数
            string strqry = string.Format("Select * From T_dGuestBook where id={0}", eventArgument);
            DataRow drw = DBFun.GetDataRow(strqry);
            if (drw == null)
            {
                clientstr = "读取失败！";
                return;
            }
            else
            {
                clientstr = "<table width=\"85%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" >"
                        + " <tr> "
                        + "   <td  align=\"left\" ><font color=\"#555555\">岗位名称：<font color=\"986A01\"><b>" + drw["jobposition"].ToString() + "</b></font><br/>"
                        + "     招聘部门：" + drw["department"].ToString() + "<br/>"
                        + "     工作地点：" + drw["thewhere"].ToString() + "</font></td>"
                        + "   <td  align=\"left\" ><font color=\"#555555\">发布时间：" + drw["Addtime"].ToString() + "<br/>有效时限：" + drw["limittime"].ToString() + "<br/>"
                        + "    联系信箱：<a href=\"mailto:" + drw["email"].ToString() + "\" class=\"link1\"><font color=\"#666666\">" + drw["email"].ToString() + "</font></a></font></td>"
                        + " </tr>"
                        + " </table>"
                        + " <table width=\"85%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">"
                        + "  <tr> "
                        + "    <td  align=\"left\" ><font color=\"#555555\">职位要求： <br>" + drw["requirement"].ToString() + "</font></td>"
                        + "  </tr>"

                        + "</table>";
                return;
            }
        }
        public string GetCallbackResult()
        {
            //返回结果
            return clientstr;
        }

        protected string panview(string id)
        {
            return "<tr style=\"display:none;\" id='tr" + id + "'><td colspan=\"6\" id='td" + id + "'></td</tr>";
        }

        private  void bindData()
        {
            PagedDataSource pds = new PagedDataSource();
            pds.AllowPaging = true;
            pds.PageSize = AspNetPager1.PageSize;
            pds.CurrentPageIndex = AspNetPager1.CurrentPageIndex - 1;
            pds.DataSource = (DataView)Session["dvlist"];
            rp_feedback.DataSource = pds;
            rp_feedback.DataBind();
        }
        protected void AspNetPager1_PageChanged(object sender, EventArgs e)
        {
            bindData();
        }
        
    
        
}
}
