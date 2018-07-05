using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Text.RegularExpressions;
using System.IO;

using QiZhanBang.Core.Common;
using QiZhanBang.Core.Factory;
using QiZhanBang.Core.Model;
namespace QiZhanBang.Web.backend
{
    public partial class articleedit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            QiZhanBang.Core.Business.Security.CheckAdministerAndRedirect();
            if (!Page.IsPostBack)
            {
                LoadArticleCategorys();
                LoadArticleInfo();
            }
        }

        private void LoadArticleCategorys()
        {
            this.ddlArticleCategory.DataTextField = "categoryname" ;
            this.ddlArticleCategory.DataValueField = "categoryid" ;
            this.ddlArticleCategory.DataSource = ArticleCategoryFactory.GetAll(HYRequest.GetInt("channelid", 0));
            this.ddlArticleCategory.DataBind();

            int categoryid = HYRequest.GetInt("categoryid", 0);
            if (this.Action == "add" && categoryid > 0)
            {
                try
                {
                    this.ddlArticleCategory.Items.FindByValue(categoryid.ToString()).Selected = true;
                }
                catch { }
            }
        }

        private void LoadArticleInfo()
        {
            if (this.Action == "edit")
            {
                int articleid = HYRequest.GetQueryInt("articleid", 0);
                Article info = ArticleFactory.Get(articleid);

                this.txtauthor.Text = info.author;
                this.txtcopyfrom.Text = info.copyfrom;
                this.txthits.Text = info.hits.ToString();
                this.txtincludepicpath.Text = info.includepicpath;
                this.txtlinkurl.Text = info.linkurl;
                this.txtsummary.Text = info.summary;
                this.txttags.Text = info.tags;
                this.txttitle.Text = info.title;
                this.chkIsBold.Checked = info.titlestyle.IndexOf("bold") >= 0 ? true : false;
                this.chkischecked.Checked = info.ischecked;
                this.chkiscommend.Checked = info.iscommend;
                this.chkIsItalic.Checked = info.titlestyle.IndexOf("italic") >= 0 ? true : false;
                this.chkistop.Checked = info.istop;

                try
                {
                    this.titlecolor.Items.FindByValue(info.titlecolor).Selected = true;
                }
                catch { }

                if (info.islink)
                {
                    this.rbtislinkyes.Checked = true;
                }
                else
                {
                    this.rbtislinkno.Checked = true;
                }

                try
                {
                    this.ddlArticleCategory.Items.FindByValue(info.categoryid.ToString()).Selected = true;
                    this.ddlLanguage.Items.FindByValue(info.language).Selected = true;
                }
                catch { }

                this.editorcontent.Value = info.content;
            }
        }


        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (this.Action == "add")
            {
                Article info = new Article();
                info.author = this.txtauthor.Text.Trim();

                info.categoryid = Int32.Parse(this.ddlArticleCategory.SelectedItem.Value);

                info.content = HYRequest.GetFormString("editorcontent");
                info.copyfrom = this.txtcopyfrom.Text.Trim();
                info.createtime = DateTime.Now;
                info.fulltitle = this.txttitle.Text.Trim();
                info.hits = Int32.Parse(this.txthits.Text);
                info.includepicpath = this.txtincludepicpath.Text.Trim();
                info.ischecked = this.chkischecked.Checked;
                info.iscommend = this.chkiscommend.Checked;
                info.islink = this.rbtislinkyes.Checked;
                info.istop = this.chkistop.Checked;
                info.linkurl = this.txtlinkurl.Text.Trim();
                info.summary = this.txtsummary.Text.Trim();

                if (info.summary == string.Empty)
                {
                    info.summary = Utils.CutStr(HtmlHelper.Html2Text(info.content, false), 100, "");
                }

                info.tags = this.txttags.Text.Trim();
                info.title = this.txttitle.Text.Trim();
                info.titlecolor = HYRequest.GetFormString("titlecolor");
                info.titlestyle = (this.chkIsBold.Checked ? "bold" : "") + "|" + (this.chkIsItalic.Checked ? "italic" : "");
                info.language = this.ddlLanguage.SelectedValue;
                info.updatetime = DateTime.Now;


                info.channelid = HYRequest.GetInt("channelid", 0);

                //保存远程图片到本地
                if (this.chkIsSaveRemotePhoto.Checked)
                {
                    this.DownLoadRemotePic(info);
                }

                ArticleFactory.Add(info);
            }
            else if (this.Action == "edit")
            {
                int articleid = HYRequest.GetQueryInt("articleid", 0);
                Article info = ArticleFactory.Get(articleid);

                info.author = this.txtauthor.Text.Trim();
                info.categoryid = Int32.Parse(this.ddlArticleCategory.SelectedItem.Value);
                info.content = HYRequest.GetFormString("editorcontent");
                info.copyfrom = this.txtcopyfrom.Text.Trim();
                info.fulltitle = this.txttitle.Text.Trim();
                info.hits = Int32.Parse(this.txthits.Text);
                info.includepicpath = this.txtincludepicpath.Text.Trim();
                info.ischecked = this.chkischecked.Checked;
                info.iscommend = this.chkiscommend.Checked;
                info.islink = this.rbtislinkyes.Checked;
                info.istop = this.chkistop.Checked;
                info.linkurl = this.txtlinkurl.Text.Trim();
                info.summary = this.txtsummary.Text.Trim();

                if (info.summary == string.Empty)
                {
                    info.summary = Utils.CutStr(HtmlHelper.Html2Text(info.content, false), 100, "");
                }

                info.tags = this.txttags.Text.Trim();
                info.title = this.txttitle.Text.Trim();
                info.titlecolor = HYRequest.GetFormString("titlecolor");
                info.titlestyle = (this.chkIsBold.Checked ? "bold" : "") + "|" + (this.chkIsItalic.Checked ? "italic" : "");
                info.language = this.ddlLanguage.SelectedValue;
                info.updatetime = DateTime.Now;

                //保存远程图片到本地
                if (this.chkIsSaveRemotePhoto.Checked)
                {
                    this.DownLoadRemotePic(info);
                }

                ArticleFactory.Update(info);
            }

            ClientScript.RegisterStartupScript(this.GetType(), "AddEditTips", "<script language=\"javascript\">window.location='articlelist.aspx?channelid=" + HYRequest.GetInt("channelid", 0) + "';</script>");
        }

        //下载远程图片
        private void DownLoadRemotePic(Article info)
        {
            #region ==DownLoadRemotePic==
            Hashtable htPicUrl = new Hashtable();
            Hashtable htLocalPicUrl = new Hashtable();
            Regex regRemotePicUrl = new Regex("(?<imgsrc>http://[^>]+(?:jpg|jpeg|gif|bmp|png))[^>]+>", RegexOptions.Compiled | RegexOptions.IgnoreCase);

            //查找文章内容页的远程图片URL
            foreach (Match m in regRemotePicUrl.Matches(info.content))
            {
                if (!htPicUrl.ContainsKey(m.Groups["imgsrc"].Value))
                {
                    htPicUrl.Add(m.Groups["imgsrc"].Value, m.Groups["imgsrc"].Value);
                }
            }

            //文件存放规则：attachments + 年月 + 文件名+ 后缀
            string year = DateTime.Now.Year.ToString();
            string month = DateTime.Now.Month.ToString();

            string rootPath = Path.Combine("/attachments", year.ToString() + month.ToString());
            rootPath = Server.MapPath(rootPath);

            string siteFilePath = string.Format("/attachments/{0}{1}/", year.ToString(), month.ToString());

            if (!Directory.Exists(rootPath))
                Directory.CreateDirectory(rootPath);


            //下载远程图片到本地
            string savePath = string.Empty;
            System.Net.WebClient wc = new System.Net.WebClient();

            foreach (DictionaryEntry de in htPicUrl)
            {
                string filename = Utils.GetRandomFilename(de.Key.ToString());
                savePath = Path.Combine(rootPath, filename);
                try
                {
                    wc.DownloadFile(de.Key.ToString(), savePath);
                    htLocalPicUrl.Add(de.Key, siteFilePath + filename);
                }
                catch { }
            }
            wc.Dispose();

            //替换文章中的远程图片为本地地址
            foreach (DictionaryEntry de in htPicUrl)
            {
                if (htLocalPicUrl.ContainsKey(de.Key))
                {
                    info.content = info.content.Replace(de.Key.ToString(), htLocalPicUrl[de.Key].ToString());
                }
            }
            #endregion
        }

        private string Action
        {
            get
            {
                return HYRequest.GetQueryString("action");
            }
        }
    }
}
