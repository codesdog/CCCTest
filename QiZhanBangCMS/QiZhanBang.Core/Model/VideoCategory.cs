using System;
using System.Collections.Generic;
using System.Text;

namespace QiZhanBang.Core.Model
{
    public class VideoCategory
    {
        #region Model
        private int _categoryid;
        private int _channelid = 0;
        private string _channelname;
        private string _categoryname;
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
