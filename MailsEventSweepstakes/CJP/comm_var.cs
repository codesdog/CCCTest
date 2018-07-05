using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
// 下载于www.51aspx.com
namespace CJP
{
    public static class comm_var
    {
        /// <summary>
        /// 界面参数
        /// </summary>
        public static string about_string = "欢迎使用本抽奖系统V1.0\r\n      \r\n        作者:xxx(qq:111111)";
        public static string title = "**抽奖软件";
        public static int title_font_size = 40;
        public static string title_font_name = "宋体";
        public static int cj_font_size = 30;
        public static string cj_font_name = "宋体";
        public static int cj_tick_interval = 150;
        public static string bgimagepath = System.Windows.Forms.Application.StartupPath + @"\res\bg.jpg";

        public static string tyjmd = "**营业厅^ **营业厅^ **营业厅";
        public static string hdname = "";


        ///
        ///抽奖参数
        ///
        //1文本，2图片
        public static int cjtype = 1;

        public static string jiangxx = "一等奖^1^1|二等^3^3|三等奖^10^6";
        public static string jiangxxcur = "一等奖^0^|二等^0^|三等奖^0^";
        public static string currentjx = "三等奖";
        public static int curjxshuliang = 1;
        public static string curjxneirong = "";
        public static int curcjsl = 0;
        public static string resultpathdir = System.Windows.Forms.Application.StartupPath + @"\result";
        public static string resultpathcurdir = "";
        public static bool isrunning = false;
        public static bool isstart = false;
        public static string overjx = "";
        public static string overxm = "";

        public static string cjmd_file = "";
        public static string cjmd_default_file = System.Windows.Forms.Application.StartupPath + @"\file\hm.txt";
        public static string md = "";
        //public static List<string> md;


        //音乐背景
        public static string music_back = System.Windows.Forms.Application.StartupPath + @"\res\musicOfBackground.wav";
        public static string music_se = System.Windows.Forms.Application.StartupPath + @"\res\musicOfDraw.wav";
        public static string music_rolling = System.Windows.Forms.Application.StartupPath + @"\res\滚动时音效.wav";
        public static string music_banjiang = System.Windows.Forms.Application.StartupPath + @"\res\颁奖曲.wav";
    }
}
