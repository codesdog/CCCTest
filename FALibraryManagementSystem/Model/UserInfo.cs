using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Jackone
{
    public class UserInfo
    {
        /// <summary>
        /// 用户ID
        /// </summary>
        public int Uid { get; set; }

        /// <summary>
        ///用户名
        /// </summary>
        public string UserName { get; set; }

        /// <summary>
        /// 密码
        /// </summary>
        public string PassWord { get; set; }

        /// <summary>
        /// 是否是管理员
        /// </summary>
        public int IsSysAdmin { get; set; }
    }
}
