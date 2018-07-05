using System;
using System.Data;
using System.IO;
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
    public partial class AddEdit_Jobs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            pageload();
        }
        private void pageload()
        {
            //网页加载

            if (!IsPostBack)
            {
                //软件类型
                CommFun.IsAdmin();
                string strqry;
               
                string Action = Request.QueryString["Action"];
                string id = Request.QueryString["ID"];               
                if (Action == "Edit" && id != null)
                {
                    //是示信息以供修改

                    strqry = string.Format("select * From T_Jobs where ID={0}", id);
                    DataRow dr = DBFun.GetDataView(strqry).Table.Rows[0];
                    tb_Position.Text = dr["Jobposition"].ToString();
                    tb_Department.Text = dr["department"].ToString();
                    tb_Thewhere.Text = dr["thewhere"].ToString();
                    tb_Email.Text = dr["email"].ToString();
                    tb_Limittime.Text = ((DateTime)dr["limittime"]).ToString("yyyy-MM-dd");
                    ftb_Requirement.Text = dr["requirement"].ToString();
                    btn_Ok.Text = "修改";
                }
                else
                {                   
                    btn_Ok.Text = "添加";
                    
                }


            }
        }
        protected void btn_Ok_Click(object sender, EventArgs e)
        {
            //修改
            modify();
           
        }
        private void modify()
        {
            string strsql;
            if (btn_Ok.Text == "修改")
            {
                string id = Request.QueryString["id"];
                if (id == null || id == "")
                    return;

                strsql=string.Format("Update T_Jobs set Jobposition='{0}',department='{1}',thewhere='{2}',"
                    +"email='{3}',limittime=#{4}#,requirement='{5}' where id={6}",
                    tb_Position.Text, tb_Department.Text, tb_Thewhere.Text,
                    tb_Email.Text, tb_Limittime.Text, ftb_Requirement.Text.Replace("'", "''"), id);
                
                if (DBFun.ExecuteUpdate(strsql))
                {
                    Response.Write("<script>alert('修改成功！');window.location.href='AddEdiT_Jobs.aspx?Action=Edit&ID=" + id + "';</script>");

                }
                else
                {


                    Response.Write("<script>alert('修改失败！请确认输入是否正确。');</script>");
                }
            }
            else
            {
                //添加

                strsql = string.Format("Insert into [T_Jobs] (Jobposition,department,thewhere,"
                    + "email,limittime,requirement) values('{0}','{1}','{2}','{3}',#{4}#,'{5}')",
                    tb_Position.Text, tb_Department.Text, tb_Thewhere.Text,
                    tb_Email.Text, tb_Limittime.Text, ftb_Requirement.Text.Replace("'", "''"));
                if (DBFun.ExecuteUpdate(strsql))
                {

                    string NewId = DBFun.SearchValue("Select Max(id) from T_Jobs");
                    Response.Write("<script>alert('添加成功！');window.location.href='AddEdiT_Jobs.aspx?Action=Edit&ID=" + NewId + "';</script>");

                }
                else
                {

                    Response.Write("<script>alert('添加失败！请确认输入是否正确。');</script>");
                }

            }
        }
        
        
      
    }
}
