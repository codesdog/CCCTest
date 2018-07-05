using System;
using System.Collections.Generic;
using System.Text;

namespace QiZhanBang.Core.Model
{
    public class Link
    {
        private int _linkid;
        private string _linkname;
        private string _linkurl;
        private int _orderno = 0;
        private DateTime _createtime;
        private string _includepic;
        private int _categoryid = 0;
        /// <summary>
        /// 
        /// </summary>
        public int linkid
        {
            set { _linkid = value; }
            get { return _linkid; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string linkname
        {
            set { _linkname = value; }
            get { return _linkname; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string linkurl
        {
            set { _linkurl = value; }
            get { return _linkurl; }
        }
        /// <summary>
        /// 
        /// </summary>
        public int orderno
        {
            set { _orderno = value; }
            get { return _orderno; }
        }
        /// <summary>
        /// 
        /// </summary>
        public DateTime createtime
        {
            set { _createtime = value; }
            get { return _createtime; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string includepic
        {
            set { _includepic = value; }
            get { return _includepic; }
        }
        /// <summary>
        /// 
        /// </summary>
        public int categoryid
        {
            set { _categoryid = value; }
            get { return _categoryid; }
        }
    }
}
