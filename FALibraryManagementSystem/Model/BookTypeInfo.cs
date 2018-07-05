using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Jackone
{
    public class BookTypeInfo
    {
        /*
         BookTypeID int identity(1,1) primary key, --图书分类编号
         BookTypeName nvarchar(50) not null,	--图书分类名称
         Remark nvarchar(max)	--图书分类备注
         */

        /// <summary>
        /// 图书分类编号
        /// </summary>
        public int BookTypeID { get; set; }

        /// <summary>
        /// 图书分类名称
        /// </summary>
        public string BookTypeName { get; set; }

        /// <summary>
        /// 图书分类备注
        /// </summary>
        public string Remark { get; set; }
    }
}
