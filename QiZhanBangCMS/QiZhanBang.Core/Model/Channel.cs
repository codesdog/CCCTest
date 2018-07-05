using System;
using System.Collections.Generic;
using System.Text;

namespace QiZhanBang.Core.Model
{
    public class Channel
    {
        #region Model
        private int _channelid;
        private string _channelname;
        private string _channeldesc = string.Empty;
        private int _orderid = 0;
        private string _channeltype = "article" ;
        private string _specialtype = string.Empty ;
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
        public string channeldesc
        {
            set { _channeldesc = value; }
            get { return _channeldesc; }
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
        /// 文章为article ;
        /// </summary>
        public string channeltype
        {
            set { _channeltype = value; }
            get { return _channeltype; }
        }
        /// <summary>
        /// 附加模型
        /// </summary>
        public string specialtype
        {
            set { _specialtype = value; }
            get { return _specialtype; }
        }
        #endregion Model
    }
}
