using System;
using System.Web;
using System.Diagnostics;
using System.Text;
using System.Text.RegularExpressions;
using System.IO;
using System.Security.Cryptography;
using System.Collections.Generic;

namespace QiZhanBang.Core.Common
{
    public class Utils
    {
        /// <summary>
        /// string型转换为int型
        /// </summary>
        /// <param name="strValue">要转换的字符串</param>
        /// <param name="defValue">缺省值</param>
        /// <returns>转换后的int类型结果</returns>
        public static int StrToInt(object strValue, int defValue)
        {
            if ((strValue == null) || (strValue.ToString() == string.Empty) || (strValue.ToString().Length > 10))
            {
                return defValue;
            }

            string val = strValue.ToString();
            string firstletter = val[0].ToString();

            if (val.Length == 10 && IsNumber(firstletter) && int.Parse(firstletter) > 1)
            {
                return defValue;
            }
            else if (val.Length == 10 && !IsNumber(firstletter))
            {
                return defValue;
            }


            int intValue = defValue;
            if (strValue != null)
            {
                bool IsInt = new Regex(@"^([-]|[0-9])[0-9]*$").IsMatch(strValue.ToString());
                if (IsInt)
                {
                    intValue = Convert.ToInt32(strValue);
                }
            }

            return intValue;
        }

        /// <summary>
        /// string型转换为float型
        /// </summary>
        /// <param name="strValue">要转换的字符串</param>
        /// <param name="defValue">缺省值</param>
        /// <returns>转换后的int类型结果</returns>
        public static float StrToFloat(object strValue, float defValue)
        {
            if ((strValue == null) || (strValue.ToString().Length > 10))
            {
                return defValue;
            }

            float intValue = defValue;
            if (strValue != null)
            {
                bool IsFloat = new Regex(@"^([-]|[0-9])[0-9]*(\.\w*)?$").IsMatch(strValue.ToString());
                if (IsFloat)
                {
                    intValue = Convert.ToSingle(strValue);
                }
            }
            return intValue;
        }



        /// <summary>
        /// 判断给定的字符串(strNumber)是否是数值型
        /// </summary>
        /// <param name="strNumber">要确认的字符串</param>
        /// <returns>是则返加true 不是则返回 false</returns>
        public static bool IsNumber(string strNumber)
        {
            return new Regex(@"^([0-9])[0-9]*(\.\w*)?$").IsMatch(strNumber);
        }

        /// <summary>
        /// MD5函数
        /// </summary>
        /// <param name="str">原始字符串</param>
        /// <returns>MD5结果</returns>
        public static string MD5(string str)
        {
            byte[] b = Encoding.Default.GetBytes(str);
            b = new MD5CryptoServiceProvider().ComputeHash(b);
            string ret = "";
            for (int i = 0; i < b.Length; i++)
                ret += b[i].ToString("x").PadLeft(2, '0');
            return ret;

            //说明：此处被改为兼容动易ASP模式的MD5
            //return System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(str, "MD5").ToLower().Substring(8, 16);
        }

        /// <summary>
        /// 是否为ip
        /// </summary>
        /// <param name="ip"></param>
        /// <returns></returns>
        public static bool IsIP(string ip)
        {
            return Regex.IsMatch(ip, @"^((2[0-4]\d|25[0-5]|[01]?\d\d?)\.){3}(2[0-4]\d|25[0-5]|[01]?\d\d?)$");
        }

        /// <summary>
        /// 返回字符串真实长度, 1个汉字长度为2
        /// </summary>
        /// <returns></returns>
        public static int GetStringLength(string str)
        {
            return Encoding.Default.GetBytes(str).Length;
        }

        /// <summary>
        /// 获得随机的文件名
        /// </summary>
        /// <param name="oldfilename"></param>
        /// <returns></returns>
        public static string GetRandomFilename(string oldfilename)
        {
            string fileext = Path.GetExtension(oldfilename);
            string newfilename = DateTime.Now.Ticks.ToString();

            return newfilename + fileext;
        }

        /// <summary>
        /// 获得随机的文件名【文件名加扩展部分】
        /// </summary>
        /// <param name="oldfilename"></param>
        /// <returns></returns>
        public static string GetRandomFilenameEx(string oldfilename, string filenameEx)
        {
            string fileext = Path.GetExtension(oldfilename);
            string newfilename = DateTime.Now.Ticks.ToString();

            return newfilename + filenameEx + fileext;
        }

        /// <summary>
        /// 计算总页数
        /// </summary>
        /// <param name="totalRecords">总记录数</param>
        /// <param name="pageSize">每页记录数</param>
        public static int CalculateTotalPages(int totalRecords, int pageSize)
        {
            int totalPagesAvailable;

            totalPagesAvailable = totalRecords / pageSize;

            //由于C#的整形除法 会把所有余数舍入为0，所以需要判断是否需要加1
            if ((totalRecords % pageSize) > 0)
                totalPagesAvailable++;

            return totalPagesAvailable;
        }

        public static string CutStr(string str, int len, string dotstr)
        {
            if (str.Length <= len)
            {
                return str;
            }
            else
            {
                return str.Substring(0, len) + dotstr;
            }
        }


        /// <summary>
        /// 获得随机数
        /// </summary>
        /// <param name="len">长度</param>
        /// <param name="onlyNum">是否仅为数字</param>
        /// <returns></returns>
        public static string GetRandomCode(int len, bool onlyNum)
        {
            if (!onlyNum)
            {
                return GetRandomCode(len);
            }
            int number;
            StringBuilder checkCode = new StringBuilder();

            Random random = new Random();

            for (int i = 0; i < len; i++)
            {
                number = random.Next();
                checkCode.Append((char)('0' + (char)(number % 10)));
            }

            return checkCode.ToString();
        }

        /// <summary>
        /// 获得随机数
        /// </summary>
        /// <param name="len">长度</param>
        /// <returns></returns>
        public static string GetRandomCode(int len)
        {
            int number;
            StringBuilder checkCode = new StringBuilder();

            Random random = new Random();

            for (int i = 0; i < len; i++)
            {
                number = random.Next();

                if (number % 2 == 0)
                {
                    checkCode.Append((char)('0' + (char)(number % 10)));
                }
                else
                {
                    checkCode.Append((char)('A' + (char)(number % 26)));
                }

            }

            return checkCode.ToString();
        }

        /// <summary>
        /// 字段串是否为Null或为""(空)
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static bool StrIsNullOrEmpty(string str)
        {
            if (str == null || str.Trim() == string.Empty)
                return true;

            return false;
        }

        /// <summary>
        /// 分割字符串
        /// </summary>
        public static string[] SplitString(string strContent, string strSplit)
        {
            if (!Utils.StrIsNullOrEmpty(strContent))
            {
                if (strContent.IndexOf(strSplit) < 0)
                    return new string[] { strContent };

                return Regex.Split(strContent, Regex.Escape(strSplit), RegexOptions.IgnoreCase);
            }
            else
                return new string[0] { };
        }

        public static string BuildPager(int totalcount, int pagesize, int pageindex, string url)
        {
            if (totalcount <= 0)
                return string.Empty;

            int pagecount = CalculateTotalPages(totalcount, pagesize);

            if (pagecount == 1)
                return string.Empty;

            StringBuilder sb = new StringBuilder("");

            //首页,上一页
            if (pageindex > 1)
            {
                sb.Append(@"<a href='" + string.Format(url, 1) + "'>首页</a> ");
                sb.Append(string.Format(@"<a href='" + url + "'>上一页</a> ", pageindex - 1));
            }

            int pstart = pageindex - 2;
            int pend = pageindex + 5;

            if (pend > pagecount)
                pend = pagecount;

            if (pend - pstart < 7)
                pstart = pend - 7;

            if (pstart < 1)
                pstart = 1;

            for (int p = pstart; p <= pend; p++)
            {
                if (p == pageindex)
                {
                    sb.Append(string.Format(@"<span>{0}</span> ", p));
                }
                else
                {
                    sb.Append(string.Format(@"<a href='" + url + "'>{1}</a> ", p, p));
                }
            }

            //下一页,尾页
            if (pageindex < pagecount)
            {
                if (pagecount - pageindex > 8)
                    sb.Append(string.Format(@"<a href='" + url + "'>...{1}</a> ", pagecount, pagecount));

                sb.Append(string.Format(@"<a href='" + url + "'>下一页</a> ", pageindex + 1));
                sb.Append(string.Format(@"<a href='" + url + "'>尾页</a> ", pagecount));
            }

            return sb.ToString();
        }
    }
}
