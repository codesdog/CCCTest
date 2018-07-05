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

using QiZhanBang.Core;
using QiZhanBang.Core.Model;
using QiZhanBang.Core.Factory;
using QiZhanBang.Core.Common;
namespace QiZhanBang.Web
{
    public partial class helpshow : QiZhanBang.Core.PageControler.WebPageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                int articleid = HYRequest.GetInt("articleid", 0);


                Article a = ArticleFactory.Get(articleid);
                if (a == null)
                {
                    Response.Write("not exists");
                    Response.End();
                }

                this.article = a;
                ArticleFactory.UpdateHits(articleid);
            }
        }

        private Article _article = new Article();
        public Article article
        {
            get { return _article; }
            set { _article = value; }
        }
    }
}
