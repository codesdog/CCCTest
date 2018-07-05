using System;
using System.Collections.Generic;
using System.Text;

namespace QiZhanBang.Core.Model
{
    public class Message
    {
        private int _messageid = 0;
        public int messageid
        {
            get { return _messageid; }
            set { _messageid = value; }
        }

        private string _poster = string.Empty;
        public string poster
        {
            get { return _poster; }
            set { _poster = value; }
        }

        private string _email = string.Empty;
        public string email
        {
            get { return _email; }
            set { _email = value; }
        }

        private string _content = string.Empty;
        public string content
        {
            get { return _content; }
            set { _content = value; }
        }

        private string _reply = string.Empty;
        public string reply
        {
            get { return _reply; }
            set { _reply = value; }
        }

        private DateTime _createdate = DateTime.Now;
        public DateTime createdate
        {
            get { return _createdate; }
            set { _createdate = value; }
        }

        private bool _ischecked = true;
        public bool ischecked
        {
            get { return _ischecked; }
            set { _ischecked = value; }
        }
    }
}
