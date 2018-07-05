using System;
using System.Collections.Generic;
using System.Text;

namespace QiZhanBang.Core.Model
{
    public class Order
    {
        private int _orderid = 0;
        public int orderid
        {
            get { return _orderid; }
            set { _orderid = value; }
        }

        private int _productid = 0;
        public int productid
        {
            get { return _productid; }
            set { _productid = value; }
        }

        private string _productname = string.Empty;
        public string productname
        {
            get { return _productname; }
            set { _productname = value; }
        }

        private int _buycount = 1;
        public int buycount
        {
            get { return _buycount; }
            set { _buycount = value; }
        }

        private string _customername = string.Empty;
        public string customername
        {
            get { return _customername; }
            set { _customername = value; }
        }

        private string _tel = string.Empty;
        public string tel
        {
            get { return _tel; }
            set { _tel = value; }
        }

        private string _address = string.Empty;
        public string address
        {
            get { return _address; }
            set { _address = value; }
        }

        private DateTime _createtime = DateTime.Now;
        public DateTime createtime
        {
            get { return _createtime; }
            set { _createtime = value; }
        }
    }
}
