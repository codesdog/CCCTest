using System;
using System.Collections.Generic;
using System.Text;

namespace QiZhanBang.Core.Model
{
    public class ArticleCategory
    {
        #region Model
        private int _categoryid;
        private int _channelid = 0;
        private string _channelname;
        private string _categoryname;
        private string _categoryname1;
        private string _categoryname2;
        private int _orderid = 0;
        private int _parentid = 0;
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
        public int channelid
        {
            set { _channelid = value; }
            get { return _channelid; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string channelname
        {
            set { _channelname = value; }
            get { return _channelname; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string categoryname
        {
            set { _categoryname = value; }
            get { return _categoryname; }
        }

        //用于英文版本
        public string categoryname1
        {
            set { _categoryname1 = value; }
            get { return _categoryname1; }
        }

        //用于德文版本
        public string categoryname2
        {
            set { _categoryname2 = value; }
            get { return _categoryname2; }
        }

        /// <summary>
        /// 
        /// </summary>
        public int orderid
        {
            set { _orderid = value; }
            get { return _orderid; }
        }
        /// <summary>
        /// 
        /// </summary>
        public int parentid
        {
            set { _parentid = value; }
            get { return _parentid; }
        }
        #endregion Model
    }
}
