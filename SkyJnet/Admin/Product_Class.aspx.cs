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
    
        public partial class Product_Class : System.Web.UI.Page
        {
            protected void Page_Load(object sender, EventArgs e)
            {
                //网页加载过程 
                CommFun.IsAdmin();
                if (!IsPostBack)
                {
                               
                    string strqry;
                    strqry= "Select id,classname from T_ProductClass order by id desc";
                    DBFun.FillDwList(dw_PClass,strqry);
                    dw_PClass.Items.Add(new ListItem("作为父类","0"));
                    dw_PClass.Text = "0";
                    strqry = "Select * From T_ProductClass order by id desc";
                    Repeater1.DataSource = DBFun.GetDataView(strqry);
                    Repeater1.DataBind();
                    string Action = Request.QueryString["Action"];
                    string id = Request.QueryString["ID"];
                    if (Action == "Edit")
                    {
                        //修改
                        strqry = "select * From T_ProductClass where id=" + id;
                        DataView dv = DBFun.GetDataView(strqry);
                        tb_ClassName.Text = dv.Table.Rows[0]["ClassName"].ToString();                      
                        
                        dw_PClass.Text = dv.Table.Rows[0]["PID"].ToString();
                        btn_Ok.Text = "保存";

                    }
                    if (Action == "Delete")
                    {
                        //删除
                        strqry = "Delete From T_ProductClass where ID=" + id;
                        if (DBFun.ExecuteUpdate(strqry))
                        {
                            Response.Redirect("Product_Class.aspx");
                        }

                    }                
               
                   
                }
            }
            protected void btn_Ok_Click(object sender, EventArgs e)
            {
                //添加或保存路径
                
                string strqry;
                if (btn_Ok.Text == "添加")
                {
                    strqry = string.Format("Insert Into T_ProductClass (ClassName,Pid) Values ('{0}',{1})",
                        tb_ClassName.Text,  dw_PClass.Text);
                    if (DBFun.ExecuteUpdate(strqry))
                     {
                        string NewID = DBFun.SearchValue("select Max(ID) from T_ProductClass");
                        Response.Write("<script>alert('添加成功！');window.location.href='Product_Class.aspx?Action=Edit&ID=" + NewID + "';</script>");      
                     }
                }
                else
                {
                    strqry = string.Format("Update T_ProductClass Set ClassName='{0}',Pid={1} where id = {2}",
                       tb_ClassName.Text,  dw_PClass.Text, Request.QueryString["ID"]);

                    if (DBFun.ExecuteUpdate(strqry))
                    {
                        strqry = "Select * From T_ProductClass order by id desc";
                        Repeater1.DataSource = DBFun.GetDataView(strqry);
                        Repeater1.DataBind();
                        Response.Write("<script>alert('数据修改成功！');</script>");
                        //重新绑定数据
 
                    }
                }

            }
            protected string GetPClass(string id)
            {
                //得到父类
               return  dw_PClass.Items.FindByValue(id).Text;
            }
        }
}

