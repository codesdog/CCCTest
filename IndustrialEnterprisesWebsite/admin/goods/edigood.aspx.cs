using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using dbAccessHelp;
using JsHelper;

namespace Webwangzhan.admin.goods
{
    public partial class edigood : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                bindgood();
                dlbind();
            }
        }
        /// <summary>
        /// 绑定要修改的产品信息
        /// </summary>
        public void bindgood() 
        {
            int id = Int32.Parse(Request.Params["id"]);
            string sqlstr = "select * from [tb_goods] where gid=" + id + "";
            DataTable dt = AccessHelper.getDataTable(sqlstr);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow row in dt.Rows)
                {
                    gmingcheng.Text = Convert.ToString(row["gname"]);
                    FCKeditor1.Value = Convert.ToString(row["gneirong"]);
                }
            }
            else
            {

            }
        }
        /// <summary>
        /// 绑定商品类别类别
        /// </summary>
        public void dlbind()
        {
            int id = Int32.Parse(Request.Params["id"]);
            string str = "select  distinct  * from tb_goods where gid=" + id + "";
            DataTable dt = dbAccessHelp.AccessHelper.getDataTable(str);
            classname.DataTextField = "gc_name";
            classname.DataValueField = "gid";
            classname.DataSource = dt;
            classname.DataBind();
            classname.SelectedValue = dt.Rows[0]["gid"].ToString();



            this.classname.Items.Insert(0, "--请选择类别--");
            string sql = "select  distinct  gc_name from tb_gclass";
            OleDbDataReader dr = AccessHelper.getDataReader(sql);
            while (dr.Read())
            {
                this.classname.Items.Add(dr["gc_name"].ToString());
            }

          
        }
        /// <summary>
        /// 上传产品图片
        /// </summary>
        /// <param name="sender">上传</param>
        /// <param name="e">addbt</param>
        protected void addbt_Click1(object sender, EventArgs e)
        {
            string fullname = FileUploadimg.FileName.ToString();
            string fn = DateTime.Now.ToString("yyyyMMddHHmmss") + fullname;
            string typ2 = fullname.Substring(fullname.LastIndexOf(".") + 1);
            string size = FileUploadimg.PostedFile.ContentLength.ToString();
            string caddtime = DateTime.Now.ToString();
            string caddadmin = Convert.ToString(Session["admin_name"]);
            if (typ2 == "gif" || typ2 == "jpg" || typ2 == "bmp" || typ2 == "png")
            {
                string filepath1 = "~/products/" + fn;
                FileUploadimg.SaveAs(Server.MapPath(filepath1));//将文件保存在跟目录的Picture文件夹下
                HiddenFieldtu.Value = Convert.ToString(filepath1);
                JsHelper.JsHelper.Alert("插入成功！");
                string imgname = FileUploadimg.FileName.ToString(); //获取数据库中的图像名称,采用了ibatis架构
                this.img1.Src = "~/products/" + fn; //获取文件上传的相对路径
                this.img1.Attributes.Add("onload", "javascript:DrawImage(this);"); //执行JS：显示缩略图
            }
            else
            {
                JsHelper.JsHelper.Alert("文件类型不支持！");
            }
        }
        /// <summary>
        /// 提交产品信息
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void tijiao_Click(object sender, EventArgs e)
        {
            int id = Int32.Parse(Request.Params["id"]);
            string gcname = classname.Text.ToString();
            string gname = gmingcheng.Text.Trim();
            string file = HiddenFieldtu.Value;//获取图片上传后的路径
            string neirong = FCKeditor1.Value.ToString();
            string str = "update tb_goods set gc_name='" + gcname + "',gname='" + gname + "',gtu='" + file + "',gneirong='" + neirong + "' where gid=" + id + "";
            string strsql = "update tb_goods set gc_name='" + gcname + "',gname='" + gname + "',gneirong='" + neirong + "' where gid=" + id + "";
            if (HiddenFieldtu.Value == null || HiddenFieldtu.Value == "" )
            {
                AccessHelper.ExecuteSql(strsql);
                JsHelper.JsHelper.Alert("修改成功！");
            }
            else
            {
                AccessHelper.ExecuteSql(str);
                JsHelper.JsHelper.Alert("操作成功！");
            }
        }

    }
}