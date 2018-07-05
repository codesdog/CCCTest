using System;
using System.Collections.Generic;
using System.Text;

namespace QiZhanBang.Core.Model
{
    public class LinkCategory
    {
        #region Model
        private int _categoryid;
        private string _categoryname;
        private string _linktype;
        /// <summary>
        /// 
        /// </summary>
        public int categoryid
        {
            set { _categoryid = value; }
            get { return _categoryid; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string categoryname
        {
            set { _categoryname = value; }
            get { return _categoryname; }
        }
        /// <summary>
        /// 链接类型,图片image ; 文本text
        /// </summary>
        public string linktype
        {
            set { _linktype = value; }
            get { return _linktype; }
        }
        #endregion Model
    }
}
