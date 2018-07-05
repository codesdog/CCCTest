using System;
using System.Collections.Generic;
using System.Text;

namespace QiZhanBang.Core.Model
{
    public class Leaguer
    {
        private int _leaguerid = 0;
        public int leaguerid
        {
            get { return _leaguerid; }
            set { _leaguerid = value; }
        }

        private string _leaguername = string.Empty;
        public string leaguername
        {
            get { return _leaguername; }
            set { _leaguername = value; }
        }

        private string _avatar = string.Empty;
        public string avatar
        {
            get { return _avatar; }
            set { _avatar = value; }
        }

        private int _orderno = 0;
        public int orderno
        {
            get { return _orderno; }
            set { _orderno = value; }
        }

        private string _resume = string.Empty;
        public string resume
        {
            get { return _resume; }
            set { _resume = value; }
        }
    }
}
