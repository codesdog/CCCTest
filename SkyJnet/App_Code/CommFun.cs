using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
namespace Web
{
    /// <summary>
    /// CommFun 的摘要说明
    /// </summary>
    public class CommFun
    {
        public CommFun()
        {
            //
            // TODO: 在此处添加构造函数逻辑
            //
        }
        public string CutChar(string strChar, int intLength)
        {
            //取得自定义长度的字符串
            if (strChar.Length > intLength)
            { return strChar.Substring(0, intLength); }
            else
            { return strChar; }

        }
        public static string GetLimitChar(string txt, int lenght)
        {
            //取得自定义长度的字符串  中文123456789           
            string outputtext = "";
            if (txt.Length > lenght)
            {
                //int tempnum = 0;
                int tempnum1 = 0;
                int tempnum2 = 0;
                byte[] byitem =System.Text.ASCIIEncoding.ASCII.GetBytes(txt);
                for (int i = 0; i < txt.Length; i++)
                {

                    if ((int)byitem[i] != 63) tempnum1++; else tempnum2++;
                    
                    if (tempnum2*2 + tempnum1  >= lenght*2) break;
                    
                }
                outputtext = txt.Substring(0, tempnum2 + tempnum1);
                

            }
            else
            {
                outputtext = txt;
            }
            return outputtext; 
        }
        public static void IsAdmin()
        {
            //查看是否为超级管理员
            if (HttpContext.Current.Session["Admin"] != "yes")
            {                
                HttpContext.Current.Response.Write(@"<script>alert('你还没有登录或登录超时！');window.location.href='login.aspx';</script>");
                
              
               
            }
            
        }       
       
    }
}