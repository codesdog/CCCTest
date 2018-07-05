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

using QiZhanBang.Core.Business;
namespace QiZhanBang.Web.backend
{
    public partial class admincp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            QiZhanBang.Core.Business.Security.CheckAdministerAndRedirect();

            LoginMember m = QiZhanBang.Core.Business.Security.Check();
            if (m != null)
            {
                this.LoginUid = m.uid;
                //this.ltlUsername.Text = m.username ;
            }
        }

        private int _loginUid = 0;
        public int LoginUid
        {
            get { return _loginUid; }
            set { _loginUid = value; }
        }
    }
}
