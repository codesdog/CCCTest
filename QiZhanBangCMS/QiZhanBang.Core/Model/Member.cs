using System;
using System.Collections.Generic;
using System.Text;

namespace QiZhanBang.Core.Model
{
    public class Member
    {
        #region Model
        private int _uid;
        private string _username;
        private string _userpwd;
        private string _email = string.Empty;
        private string _tel = string.Empty;
        private int _usertype = 2;
        private DateTime _lastlogindate = DateTime.Now ;
        private DateTime _createdate = DateTime.Now ;
        private string _lastloginip = string.Empty ;
        /// <summary>
        /// 
        /// </summary>
        public int uid
        {
            set { _uid = value; }
            get { return _uid; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string username
        {
            set { _username = value; }
            get { return _username; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string userpwd
        {
            set { _userpwd = value; }
            get { return _userpwd; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string email
        {
            set { _email = value; }
            get { return _email; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string tel
        {
            set { _tel = value; }
            get { return _tel; }
        }
        /// <summary>
        /// 
        /// </summary>
        public DateTime createdate
        {
            set { _createdate = value; }
            get { return _createdate; }
        }
        /// <summary>
        ///  1 表示创始人；2表示网站管理员；3表示信息管理员 ；10以上表示其他用户
        /// </summary>
        public int usertype
        {
            set { _usertype = value; }
            get { return _usertype; }
        }
        /// <summary>
        /// 
        /// </summary>
        public DateTime lastlogindate
        {
            set { _lastlogindate = value; }
            get { return _lastlogindate; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string lastloginip
        {
            set { _lastloginip = value; }
            get { return _lastloginip; }
        }
        #endregion Model

    }
}
