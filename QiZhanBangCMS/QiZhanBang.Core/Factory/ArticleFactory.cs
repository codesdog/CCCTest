using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.OleDb;
using QiZhanBang.Core.Common;
using QiZhanBang.Core.Model;

namespace QiZhanBang.Core.Factory
{
    public class ArticleFactory
    {
        public static void Add(Article info)
        {
            string sql = @"INSERT INTO [ecms_article] ( 
                            [title] ,
                            [fulltitle] ,
                            [includepicpath] ,
                            [iscommend] ,
                            [istop] ,
                            [islink] ,
                            [linkurl] ,
                            [tags] ,
                            [summary] ,
                            [author] ,
                            [copyfrom] ,
                            [content] ,
                            [hits] ,
                            [createtime] ,
                            [updatetime] ,
                            [ischecked] ,
                            [categoryid] ,
                            [titlecolor] ,
                            [titlestyle] ,[language],[channelid] ) VALUES (@title,@fulltitle,@includepicpath,@iscommend,@istop,@islink,@linkurl,@tags,@summary,@author,@copyfrom,@content,@hits,@createtime,@updatetime,@ischecked,@categoryid,@titlecolor,@titlestyle,@language,@channelid)";


            OleDbParameter[] prams = { 
                OleDbHelper.MakeInParam("@title" , OleDbType.VarChar , 50 ,info.title) ,
                OleDbHelper.MakeInParam("@fulltitle" , OleDbType.VarChar , 50 ,info.fulltitle) ,
                OleDbHelper.MakeInParam("@includepicpath",OleDbType.VarChar , 50 ,info.includepicpath) ,
                OleDbHelper.MakeInParam("@iscommend",OleDbType.Boolean , 1 ,info.iscommend) ,
                OleDbHelper.MakeInParam("@istop",OleDbType.Boolean , 1 ,info.istop) ,
                OleDbHelper.MakeInParam("@islink",OleDbType.Boolean , 1 ,info.islink) ,
                OleDbHelper.MakeInParam("@linkurl" , OleDbType.VarChar , 100 ,info.linkurl) ,
                OleDbHelper.MakeInParam("@tags" , OleDbType.VarChar , 50 ,info.tags) ,
                OleDbHelper.MakeInParam("@summary" , OleDbType.VarChar , 300 ,info.summary) ,
                OleDbHelper.MakeInParam("@author" , OleDbType.VarChar , 50 ,info.author) ,
                OleDbHelper.MakeInParam("@copyfrom" , OleDbType.VarChar , 50 ,info.copyfrom) ,
                OleDbHelper.MakeInParam("@content" , OleDbType.VarChar , 0 ,info.content) ,
                OleDbHelper.MakeInParam("@hits" , OleDbType.Integer , 4 ,info.hits) ,
                OleDbHelper.MakeInParam("@createtime" , OleDbType.Date , 8 ,info.createtime) ,
                OleDbHelper.MakeInParam("@updatetime" , OleDbType.Date , 8 ,info.updatetime) ,
                OleDbHelper.MakeInParam("@ischecked" , OleDbType.Boolean , 1 ,info.ischecked) ,
                OleDbHelper.MakeInParam("@categoryid" , OleDbType.Integer , 4 ,info.categoryid) ,
                OleDbHelper.MakeInParam("@titlecolor" , OleDbType.VarChar , 50 ,info.titlecolor) ,
                OleDbHelper.MakeInParam("@titlestyle" , OleDbType.VarChar , 50 ,info.titlestyle) ,
                OleDbHelper.MakeInParam("@language" , OleDbType.VarChar , 10 ,info.language) ,
                OleDbHelper.MakeInParam("@channelid" , OleDbType.Integer , 4 ,info.channelid)
            };

            OleDbHelper.ExecuteNonQuery(sql, prams);
        }

        public static void Delete(int articleid)
        {
            string sql = "delete from ecms_article where articleid=" + articleid ;
            OleDbHelper.ExecuteNonQuery(sql);
        }

        public static void UpdateHits(int articleid)
        {
            string sql = "UPDATE ecms_article set hits=hits+1 where articleid=" + articleid;
            OleDbHelper.ExecuteNonQuery(sql);
        }

        public static void Update(Article info)
        {
            string sql = @"UPDATE ecms_article set 
                            [title] = @title,
                            [fulltitle] = @fulltitle,
                            [includepicpath] = @includepicpath,
                            [iscommend] = @iscommend,
                            [istop] = @istop,
                            [islink] = @islink,
                            [linkurl] = @linkurl,
                            [tags] = @tags,
                            [summary] = @summary,
                            [author] = @author,
                            [copyfrom] = @copyfrom,
                            [content] = @content,
                            [hits] = @hits,
                            [createtime] = @createtime,
                            [updatetime] = @updatetime,
                            [ischecked] = @ischecked,
                            [categoryid] = @categoryid,
                            [titlecolor] = @titlecolor,
                            [titlestyle] = @titlestyle ,[language]=@language, channelid=@channelid WHERE [articleid] = @articleid";


            OleDbParameter[] prams = { 
                OleDbHelper.MakeInParam("@title" , OleDbType.VarChar , 50 ,info.title) ,
                OleDbHelper.MakeInParam("@fulltitle" , OleDbType.VarChar , 50 ,info.fulltitle) ,
                OleDbHelper.MakeInParam("@includepicpath",OleDbType.VarChar , 50 ,info.includepicpath) ,
                OleDbHelper.MakeInParam("@iscommend",OleDbType.Boolean , 1 ,info.iscommend) ,
                OleDbHelper.MakeInParam("@istop",OleDbType.Boolean , 1 ,info.istop) ,
                OleDbHelper.MakeInParam("@islink",OleDbType.Boolean , 1 ,info.islink) ,
                OleDbHelper.MakeInParam("@linkurl" , OleDbType.VarChar , 100 ,info.linkurl) ,
                OleDbHelper.MakeInParam("@tags" , OleDbType.VarChar , 50 ,info.tags) ,
                OleDbHelper.MakeInParam("@summary" , OleDbType.VarChar , 300 ,info.summary) ,
                OleDbHelper.MakeInParam("@author" , OleDbType.VarChar , 50 ,info.author) ,
                OleDbHelper.MakeInParam("@copyfrom" , OleDbType.VarChar , 50 ,info.copyfrom) ,
                OleDbHelper.MakeInParam("@content" , OleDbType.VarChar , 0 ,info.content) ,
                OleDbHelper.MakeInParam("@hits" , OleDbType.Integer , 4 ,info.hits) ,
                OleDbHelper.MakeInParam("@createtime" , OleDbType.Date , 8 ,info.createtime) ,
                OleDbHelper.MakeInParam("@updatetime" , OleDbType.Date , 8 ,info.updatetime) ,
                OleDbHelper.MakeInParam("@ischecked" , OleDbType.Boolean , 1 ,info.ischecked) ,
                OleDbHelper.MakeInParam("@categoryid" , OleDbType.Integer , 4 ,info.categoryid) ,
                OleDbHelper.MakeInParam("@titlecolor" , OleDbType.VarChar , 50 ,info.titlecolor) ,
                OleDbHelper.MakeInParam("@titlestyle" , OleDbType.VarChar , 50 ,info.titlestyle) ,
                OleDbHelper.MakeInParam("@language" , OleDbType.VarChar , 10 ,info.language) ,
                OleDbHelper.MakeInParam("@channelid" , OleDbType.Integer , 4 ,info.channelid),
                OleDbHelper.MakeInParam("@articleid" , OleDbType.Integer , 4 ,info.articleid)
            };

            OleDbHelper.ExecuteNonQuery(sql, prams);

        }

        public static Article Get(int articleid)
        {
            string sql = "select * from [ecms_article] where articleid=" + articleid;

            Article info = null;
            DataTable dt = OleDbHelper.ExecuteDataset(sql).Tables[0];

            if (dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];

                info = new Article();
                info.articleid = Int32.Parse(dr["articleid"].ToString());
                info.author = dr["author"].ToString();
                info.categoryid = Int32.Parse(dr["categoryid"].ToString());
                info.channelid = Int32.Parse(dr["channelid"].ToString());
                info.content = dr["content"].ToString();
                info.copyfrom = dr["copyfrom"].ToString();
                info.createtime = DateTime.Parse(dr["createtime"].ToString());
                info.fulltitle = dr["fulltitle"].ToString();
                info.hits = Int32.Parse(dr["hits"].ToString());
                info.includepicpath = dr["includepicpath"].ToString();
                info.ischecked = Boolean.Parse(dr["ischecked"].ToString());
                info.iscommend = Boolean.Parse(dr["iscommend"].ToString());
                info.islink = Boolean.Parse(dr["islink"].ToString());
                info.istop = Boolean.Parse(dr["istop"].ToString());
                info.linkurl = dr["linkurl"].ToString();
                info.summary = dr["summary"].ToString();
                info.tags = dr["tags"].ToString();
                info.title = dr["title"].ToString();
                info.titlecolor = dr["titlecolor"].ToString();
                info.titlestyle = dr["titlestyle"].ToString(); 
                info.language = dr["language"].ToString();
                info.updatetime = DateTime.Parse(dr["updatetime"].ToString());
            }

            return info;
        }


        public static DataTable GetList(int pageSize, int pageIndex, string whereSql ,out int totalcount)
        {
            DataTable dt = GetList(whereSql);
            totalcount = dt.Rows.Count;

            DataTable newdt = dt.Clone();

            int startindex = (pageIndex - 1) * pageSize ;
            int endindex = startindex + pageSize - 1 ;

            if (endindex >= totalcount)
                endindex = totalcount - 1;

            for (int i = startindex; i <= endindex; i++ )
            {
                newdt.ImportRow(dt.Rows[i]);
            }

            return newdt;
            
        }

        public static DataTable GetList(int count, string whereSql)
        {
            string sql = "select top "+count.ToString()+" * from [ecms_article] order by articleid desc";  //
            if (whereSql != string.Empty)
            {
                sql = "select top " + count.ToString() + " * from [ecms_article] where " + whereSql + " order by articleid desc";
            }

            DataTable dt = OleDbHelper.ExecuteDataset(sql).Tables[0];

            return dt;
        }

        public static DataTable GetList(string whereSql)
        {
            string sql = "select * from [ecms_article] order by articleid desc";  //
            if (whereSql != string.Empty)
            {
                sql = "select * from [ecms_article] where " + whereSql + " order by articleid desc";
            }

            DataTable dt = OleDbHelper.ExecuteDataset(sql).Tables[0];

            return dt;
        }
    }
}
