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
    public partial class addgood: System.Web.UI.Page

    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                dlbind();
            }
        }
        /// <summary>
        /// 绑定商品类别类别
        /// </summary>
        public void dlbind()
        {
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
            string gcname = classname.Text.ToString();
            string gname = gmingcheng.Text.Trim();
            string file = HiddenFieldtu.Value;//获取图片上传后的路径
            string neirong = FCKeditor1.Value.ToString();
            string addtime = DateTime.Now.ToString();
            string sql = "insert into tb_goods(gc_name,gname,gtu,gneirong,gtime) values('" + gcname + "','" + gname + "','" + file + "','" + neirong + "','" + addtime + "')";
            if (gname == null || gname == "" || neirong == null || neirong == "" || neirong == "" || neirong == null)
            {
                JsHelper.JsHelper.Alert("添加失败，有空值！");
            }
            else 
            {
                AccessHelper.ExecuteSql(sql);
                JsHelper.JsHelper.Alert("添加成功！");
                gmingcheng.Text = "";
                HiddenFieldtu.Value = "";
                FCKeditor1.Value = "";
            }
        }

     
    }
}