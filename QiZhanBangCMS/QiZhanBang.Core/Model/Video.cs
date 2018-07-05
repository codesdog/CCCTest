using System;
using System.Collections.Generic;
using System.Text;

namespace QiZhanBang.Core.Model
{
    public class Video
    {
        #region Model
        private int _videoid;
        private string _videoname;
        private string _includepicpath;
        private string _actor;
        private string _duration;
        private string _tags;
        private string _description;
        private int _hits = 0;
        private string _videos;
        private int _categoryid = 0;
        private int _channelid = 0;
        /// <summary>
        /// 
        /// </summary>
        public int videoid
        {
            set { _videoid = value; }
            get { return _videoid; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string videoname
        {
            set { _videoname = value; }
            get { return _videoname; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string includepicpath
        {
            set { _includepicpath = value; }
            get { return _includepicpath; }
        }
        /// <summary>
        /// 演员
        /// </summary>
        public string actor
        {
            set { _actor = value; }
            get { return _actor; }
        }
        /// <summary>
        /// 时长
        /// </summary>
        public string duration
        {
            set { _duration = value; }
            get { return _duration; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string tags
        {
            set { _tags = value; }
            get { return _tags; }
        }
        /// <summary>
        /// 介绍
        /// </summary>
        public string description
        {
            set { _description = value; }
            get { return _description; }
        }
        /// <summary>
        /// 
        /// </summary>
        public int hits
        {
            set { _hits = value; }
            get { return _hits; }
        }
        /// <summary>
        /// 视频剧集
        /// </summary>
        public string videos
        {
            set { _videos = value; }
            get { return _videos; }
        }

        public int categoryid
        {
            set { _categoryid = value; }
            get { return _categoryid; }
        }

        public int channelid
        {
            set { _channelid = value; }
            get { return _channelid; }
        }
        #endregion Model
    }
}
