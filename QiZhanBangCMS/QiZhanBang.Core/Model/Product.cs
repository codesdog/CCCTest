using System;
using System.Collections.Generic;
using System.Text;

namespace QiZhanBang.Core.Model
{
    public class Product
    {
        private int _productid = 0 ;
        public int productid
        {
            set { _productid = value; }
            get { return _productid; }
        }

        private string _productname = string.Empty ;
        public string productname
        {
            set { _productname = value; }
            get { return _productname; }
        }

        private string _includepicpath = string.Empty;
        public string includepicpath
        {
            set { _includepicpath = value; }
            get { return _includepicpath; }
        }

        private string _productcode = string.Empty;
        public string productcode
        {
            set { _productcode = value; }
            get { return _productcode; }
        }

        private string _description = string.Empty;
        public string description
        {
            set { _description = value; }
            get { return _description; }
        }

        private string _specification = string.Empty;
        public string specification
        {
            set { _specification = value; }
            get { return _specification; }
        }

        private int _salecount = 0;
        public int salecount
        {
            set { _salecount = value; }
            get { return _salecount; }
        }

        private int _hits = 0;
        public int hits
        {
            set { _hits = value; }
            get { return _hits; }
        }

        private decimal _price;
        public decimal price
        {
            get { return _price; }
            set { _price = value; }
        }

        private int _categoryid = 0;
        public int categoryid
        {
            set { _categoryid = value; }
            get { return _categoryid; }
        }

        private int _channelid = 0;
        public int channelid
        {
            set { _channelid = value; }
            get { return _channelid; }
        }

        private DateTime _createtime = DateTime.Now ;
        public DateTime createtime
        {
            get { return _createtime; }
            set { _createtime = value; }
        }

        private string _language;
        public string language
        {
            set { _language = value; }
            get { return _language; }
        }

        private bool _iscommend;
        public bool iscommend
        {
            set { _iscommend = value; }
            get { return _iscommend; }
        }
    }
}
