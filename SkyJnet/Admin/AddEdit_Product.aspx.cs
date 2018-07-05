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
    public partial class AddEdit_Product : System.Web.UI.Page
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
                DBFun.FillDwList(dw_ProductClass, "select id,classname from T_ProductClass");
                string Action = Request.QueryString["Action"];
                string id = Request.QueryString["ID"];
                string pid = Request.QueryString["PID"];
                if (Action == "Edit" && id != null)
                {
                    //是示信息以供修改

                    strqry = string.Format("select * From T_Product where ID={0}", id);
                    DataRow dr = DBFun.GetDataView(strqry).Table.Rows[0];
                    tb_ProductName.Text = dr["ProductName"].ToString();
                    dw_ProductClass.Text = dr["classid"].ToString();

                    tb_ReadCount.Text = dr["ReadCount"].ToString();
                    tb_PicUrl.Text = dr["ProductPic"].ToString();
                    tb_PlayUrl.Text = dr["PlayUrl"].ToString();

                    ftb_Intro.Text = dr["intro"].ToString();
                    img_pic.Src = "..\\UploadPic\\" + dr["ProductPic"].ToString();
                    pan_Add.Visible = false;
                    pan_Edit.Visible = true;
                    btn_Ok.Text = "修改";
                }
                else
                {
                    pan_Add.Visible = true;
                    pan_Edit.Visible = false;
                    btn_Ok.Text = "添加";
                    img_pic.Visible = false;
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
                string img_url;
                img_url = UploadPicFile(myfileEdit);
                if (img_url == "")
                {
                    img_url = tb_PicUrl.Text;
                    if (img_url == "")
                        img_url = "nopic.jpg";  //不上传图片，默认为无图片
                }
                strsql = string.Format("Update T_Product set ProductName='{0}',classid={1},classname='{2}',"
                    + "ProductPic='{3}',ReadCount={4},PlayUrl='{5}',intro='{6}' where id={7}",
                    tb_ProductName.Text, dw_ProductClass.Text, dw_ProductClass.SelectedItem.Text,
                    img_url, tb_ReadCount.Text, tb_PlayUrl.Text, ftb_Intro.Text.Replace("'", "''"), id);
                if (DBFun.ExecuteUpdate(strsql))
                {
                    Response.Write("<script>alert('修改成功！');window.location.href='AddEdit_Product.aspx?Action=Edit&ID=" + id + "';</script>");

                }
                else
                {

                    Response.Write("<script>alert('修改失败！请确认输入是否正确。');</script>");
                }
            }
            else
            {
                //添加
                string img_url;
                img_url = UploadPicFile(myfileAdd);
                if (img_url == "")
                    img_url = "nopic.jpg";
                strsql = string.Format("Insert into [T_Product] (ProductName,classid,classname,"
                    + "ProductPic,ReadCount,PlayUrl,intro) values('{0}',{1},'{2}','{3}',{4},'{5}','{6}')",
                    tb_ProductName.Text, dw_ProductClass.Text, dw_ProductClass.SelectedItem.Text,
                    img_url, tb_ReadCount.Text, tb_PlayUrl.Text, ftb_Intro.Text.Replace("'", "''"));
                if (DBFun.ExecuteUpdate(strsql))
                {

                    string NewId = DBFun.SearchValue("Select Max(id) from T_Product");
                    Response.Write("<script>alert('添加成功！');window.location.href='AddEdit_Product.aspx?Action=Edit&ID=" + NewId + "';</script>");

                }
                else
                {

                    Response.Write("<script>alert('添加失败！请确认输入是否正确。');</script>");
                }

            }
        }
        
        
        private  string UploadPicFile(System.Web.UI.HtmlControls.HtmlInputFile  Fupload)
        {
            //文件上传
            try
            {
                if (Fupload.PostedFile.FileName == "")
                    return "";
                string dir = DateTime.Now.ToString("yyyyMM");
                if (!Directory.Exists(Server.MapPath("..\\uploadpic\\") + dir))
                {
                    Directory.CreateDirectory(Server.MapPath("..\\uploadpic\\") + dir);
                    if (!Directory.Exists(Server.MapPath("..\\uploadpic\\") + dir))
                        return "";
                }
                Random rd = new System.Random();
                string filename;
                string extname;

                if (Fupload.PostedFile.FileName != "")
                {
                    extname = Fupload.PostedFile.FileName.Substring(Fupload.PostedFile.FileName.LastIndexOf(".") + 1).ToUpper();
                    if ("JPG|GIF|BMP|PNG".IndexOf(extname) == -1)
                    {
                        return "";
                    }

                    filename = dir + "\\" + DateTime.Now.ToString("yyyyMM") + rd.Next(1000).ToString() + "." + extname;
                    Fupload.PostedFile.SaveAs(Server.MapPath("..\\uploadpic\\") + filename);
                    return filename;
                }
                return "";

            }
            catch { return ""; }
        }
    }
}
