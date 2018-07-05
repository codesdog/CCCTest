using System;
using System.Collections.Generic;
using System.Text;

namespace QiZhanBang.Core.Model
{
    public class Article
    {
        #region Model
        private int _articleid;
        private int _channelid = 0;
        private int _categoryid = 0;
        private string _title;
        private string _fulltitle;
        private string _includepicpath;
        private bool _iscommend;
        private bool _istop;
        private bool _ischecked;
        private bool _islink;
        private string _linkurl;
        private string _tags;
        private string _summary;
        private string _author;
        private string _copyfrom;
        private string _content;
        private int _hits = 0;
        private DateTime _createtime;
        private DateTime _updatetime;
        private int _ordernum = 0;
        private string _titlecolor;
        private string _titlestyle;
        
        /// <summary>
        /// 
        /// </summary>
        public int articleid
        {
            set { _articleid = value; }
            get { return _articleid; }
        }
        /// <summary>
        /// 
        /// </summary>
        public int channelid
        {
            set { _channelid = value; }
            get { return _channelid; }
        }
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
        public string title
        {
            set { _title = value; }
            get { return _title; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string fulltitle
        {
            set { _fulltitle = value; }
            get { return _fulltitle; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string includepicpath
        {
            set { _includepicpath = value; }
            get { return _includepicpath; }
        }
        /// <summary>
        /// 
        /// </summary>
        public bool iscommend
        {
            set { _iscommend = value; }
            get { return _iscommend; }
        }
        /// <summary>
        /// 
        /// </summary>
        public bool istop
        {
            set { _istop = value; }
            get { return _istop; }
        }
        /// <summary>
        /// 
        /// </summary>
        public bool ischecked
        {
            set { _ischecked = value; }
            get { return _ischecked; }
        }
        /// <summary>
        /// 
        /// </summary>
        public bool islink
        {
            set { _islink = value; }
            get { return _islink; }
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
        public string tags
        {
            set { _tags = value; }
            get { return _tags; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string summary
        {
            set { _summary = value; }
            get { return _summary; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string author
        {
            set { _author = value; }
            get { return _author; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string copyfrom
        {
            set { _copyfrom = value; }
            get { return _copyfrom; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string content
        {
            set { _content = value; }
            get { return _content; }
        }
        /// <summary>
        /// 
        /// </summary>
        public int hits
        {
            set { _hits = value; }
            get { return _hits; }
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
        public DateTime updatetime
        {
            set { _updatetime = value; }
            get { return _updatetime; }
        }
        /// <summary>
        /// 
        /// </summary>
        public int ordernum
        {
            set { _ordernum = value; }
            get { return _ordernum; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string titlecolor
        {
            set { _titlecolor = value; }
            get { return _titlecolor; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string titlestyle
        {
            set { _titlestyle = value; }
            get { return _titlestyle; }
        }

        public string linkstyle
        {
            get
            {
                string temp = string.Empty;
                if (this.titlecolor != string.Empty)
                    temp += "color:" + this.titlecolor + ";";

                if (this.titlestyle.IndexOf("italic") >= 0)
                    temp += "font-style:italic;";

                if (this.titlestyle.IndexOf("bold") >= 0)
                    temp += "font-weight:bold;";

                return temp;
            }
        }

        private string _language;
        public string language
        {
            set { _language = value; }
            get { return _language; }
        }

        #endregion Model
    }
}
