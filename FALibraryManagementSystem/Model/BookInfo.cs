using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Jackone
{
    public class BookInfo
    {
        /*
            BookID int identity(1,1) not null,  --图书编号
	        BookName nvarchar(50) not null,	    --图书名称
	        TypeID int foreign key references BookTypeInfo(BookTypeID),--图书分类编号
	        Author nvarchar(50) not null,       --作者
	        Press  nvarchar(50) not null,       --出版社
	        PubDate datetime not null,          --出版日期
	        Pricing float ,                     --定价
	        Page int,                           --页数
	        CoverImage varbinary,               --图书封面
	        Summary nvarchar(maxr)			    --图书简介 
         */

        /// <summary>
        /// 图书编号
        /// </summary>
        public int BookID { get; set; }

        /// <summary>
        /// 图书名称
        /// </summary>
        public string BookName { get; set; }

        /// <summary>
        /// 图书分类编号
        /// </summary>
        public int TypeID { get; set; }

        /// <summary>
        /// 作者
        /// </summary>
        public string Author { get; set; }

        /// <summary>
        /// 出版社
        /// </summary>
        public string Press { get; set; }

        /// <summary>
        /// 出版日期
        /// </summary>
        public DateTime PubData { get; set; }

        /// <summary>
        /// 定价
        /// </summary>
        public float Pricing { get; set; }

        /// <summary>
        /// 页数
        /// </summary>
        public int Page { get; set; }

        /// <summary>
        /// 图书封面
        /// </summary>
        public byte[] ConverImage { get; set; }

        /// <summary>
        /// 图书简介 
        /// </summary>
        public string Summary { get; set; }

       
    }
}
