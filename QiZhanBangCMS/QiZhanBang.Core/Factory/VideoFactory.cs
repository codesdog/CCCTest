using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.OleDb;
using QiZhanBang.Core.Common;
using QiZhanBang.Core.Model;

namespace QiZhanBang.Core.Factory
{
    public class VideoFactory
    {
        public static void Add(Video info)
        {
            string sql = @"INSERT INTO ecms_video ( 
                            [videoname] ,
                            [includepicpath] ,
                            [actor] ,
                            [duration] ,
                            [tags] ,
                            [description] ,
                            [hits] ,
                            [videos],categoryid,channelid ) VALUES (@videoname,@includepicpath,@actor,@duration,@tags,@description,@hits,@videos,@categoryid,@channelid)";


            OleDbParameter[] prams = { 
                OleDbHelper.MakeInParam("@videoname" , OleDbType.VarChar , 50 ,info.videoname) ,
                OleDbHelper.MakeInParam("@includepicpath" , OleDbType.VarChar , 50 ,info.includepicpath) ,
                OleDbHelper.MakeInParam("@actor" , OleDbType.VarChar , 50 ,info.actor) ,
                OleDbHelper.MakeInParam("@duration" , OleDbType.VarChar , 50 ,info.duration) ,
                OleDbHelper.MakeInParam("@tags" , OleDbType.VarChar , 50 ,info.tags) ,
                OleDbHelper.MakeInParam("@description" , OleDbType.VarChar , 50 ,info.description) ,
                OleDbHelper.MakeInParam("@hits" , OleDbType.Integer , 4 ,info.hits),
                OleDbHelper.MakeInParam("@videos" , OleDbType.VarChar , 0 ,info.videos),
                OleDbHelper.MakeInParam("@categoryid" , OleDbType.Integer , 4 ,info.categoryid),
                OleDbHelper.MakeInParam("@channelid" , OleDbType.Integer , 4 ,info.channelid)
            };

            OleDbHelper.ExecuteNonQuery(sql, prams);
        }

        public static void Delete(int videoid)
        {
            string sql = "delete from ecms_video where videoid=" + videoid;
            OleDbHelper.ExecuteNonQuery(sql);
        }

        public static void UpdateHits(int videoid)
        {
            string sql = "update ecms_video set hits=hits+1 where videoid=" + videoid;
            OleDbHelper.ExecuteNonQuery(sql);
        }

        public static void Update(Video info)
        {
            string sql = @"update ecms_video set 
                            [videoname] = @videoname,
                            [includepicpath] = @includepicpath,
                            [actor] = @actor,
                            [duration] = @duration,
                            [tags] = @tags,
                            [description] = @description,
                            [hits] = @hits,
                            [videos] = @videos ,
                            [categoryid]=@categoryid ,
                            [channelid]=@channelid where [videoid] = @videoid";

            OleDbParameter[] prams = { 
                OleDbHelper.MakeInParam("@videoname" , OleDbType.VarChar , 50 ,info.videoname) ,
                OleDbHelper.MakeInParam("@includepicpath" , OleDbType.VarChar , 50 ,info.includepicpath) ,
                OleDbHelper.MakeInParam("@actor" , OleDbType.VarChar , 50 ,info.actor) ,
                OleDbHelper.MakeInParam("@duration" , OleDbType.VarChar , 50 ,info.duration) ,
                OleDbHelper.MakeInParam("@tags" , OleDbType.VarChar , 50 ,info.tags) ,
                OleDbHelper.MakeInParam("@description" , OleDbType.VarChar , 50 ,info.description) ,
                OleDbHelper.MakeInParam("@hits" , OleDbType.Integer , 4 ,info.hits),
                OleDbHelper.MakeInParam("@videos" , OleDbType.VarChar , 0 ,info.videos),
                OleDbHelper.MakeInParam("@categoryid" , OleDbType.Integer , 4 ,info.categoryid),
                OleDbHelper.MakeInParam("@channelid" , OleDbType.Integer , 4 ,info.channelid),
                OleDbHelper.MakeInParam("@videoid" , OleDbType.Integer , 4 ,info.videoid)
            };

            OleDbHelper.ExecuteNonQuery(sql, prams);
        }

        public static Video Get(int videoid)
        {
            string sql = "select * from ecms_video where videoid=" + videoid ;

            Video info = null;
            DataTable dt = OleDbHelper.ExecuteDataset(sql).Tables[0];

            if (dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];

                info = new Video();
                info.actor = dr["actor"].ToString();
                info.description = dr["description"].ToString();
                info.duration = dr["duration"].ToString();
                info.hits = Int32.Parse( dr["hits"].ToString() );
                info.includepicpath = dr["includepicpath"].ToString();
                info.tags = dr["tags"].ToString();
                info.videoid = Int32.Parse( dr["videoid"].ToString() );
                info.videoname = dr["videoname"].ToString();
                info.videos = dr["videos"].ToString();
                info.channelid = Int32.Parse(dr["channelid"].ToString());
                info.categoryid = Int32.Parse(dr["categoryid"].ToString());
            }

            return info;
        }

        public static DataTable GetList(string whereSql)
        {
            string sql = "select * from [ecms_video] order by videoid desc";  //
            if (whereSql != string.Empty)
            {
                sql = "select * from [ecms_video] where " + whereSql + " order by videoid desc";
            }

            DataTable dt = OleDbHelper.ExecuteDataset(sql).Tables[0];

            return dt;
        }

        public static DataTable GetList(int pageSize, int pageIndex, string whereSql, out int totalcount)
        {
            DataTable dt = GetList(whereSql);
            totalcount = dt.Rows.Count;

            DataTable newdt = dt.Clone();

            int startindex = (pageIndex - 1) * pageSize;
            int endindex = startindex + pageSize - 1;

            if (endindex >= totalcount)
                endindex = totalcount - 1;

            for (int i = startindex; i <= endindex; i++)
            {
                newdt.ImportRow(dt.Rows[i]);
            }

            return newdt;

        }

        public static DataTable GetTopHitList(int pagesize)
        {
            string sql = "select top "+pagesize+" * from [ecms_video] order by videoid desc";  //

            DataTable dt = OleDbHelper.ExecuteDataset(sql).Tables[0];

            return dt;
        }
        
    }
}
