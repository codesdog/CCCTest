using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
using System.Data;
using System.IO;
using System.Windows.Forms;
using System.Drawing;

namespace Jackone
{
    public static class Function
    {

       
        #region C# 类型和SQL 类型相互转换
        /// <summary>
        /// 
        /// </summary>
        /// <param name="sqlTypeString"></param>
        /// <returns></returns>
        public static SqlDbType CType2SqlType(Type sqlTypeString)
        {
            SqlDbType dbType = SqlDbType.Variant;//默认为Object
            switch (sqlTypeString.Name.ToLower())
            {
                case "int32":
                    dbType = SqlDbType.Int;
                    break;
                case "string":
                    dbType = SqlDbType.VarChar;
                    break;
                case "bool":
                    dbType = SqlDbType.Bit;
                    break;
                case "datetime":
                    dbType = SqlDbType.DateTime;
                    break;
                case "decimal":
                    dbType = SqlDbType.Decimal;
                    break;
                case "single":
                    dbType = SqlDbType.Float;
                    break;
                case "double":
                    dbType = SqlDbType.Float;
                    break;
                case "byte[]":
                    dbType = SqlDbType.VarBinary;
                    break;
                case "xml":
                    dbType = SqlDbType.Xml;
                    break;
            }
            return dbType;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="sqlType"></param>
        /// <returns></returns>
        public static Type SqlType2CType(SqlDbType sqlType)
        {
            switch (sqlType)
            {
                case SqlDbType.BigInt:
                    return typeof(Int64);
                case SqlDbType.Binary:
                    return typeof(Object);
                case SqlDbType.Bit:
                    return typeof(Boolean);
                case SqlDbType.Char:
                    return typeof(String);
                case SqlDbType.DateTime:
                    return typeof(DateTime);
                case SqlDbType.Decimal:
                    return typeof(Decimal);
                case SqlDbType.Float:
                    return typeof(Double);
                case SqlDbType.Image:
                    return typeof(Object);
                case SqlDbType.Int:
                    return typeof(Int32);
                case SqlDbType.Money:
                    return typeof(Decimal);
                case SqlDbType.NChar:
                    return typeof(String);
                case SqlDbType.NText:
                    return typeof(String);
                case SqlDbType.NVarChar:
                    return typeof(String);
                case SqlDbType.Real:
                    return typeof(Single);
                case SqlDbType.SmallDateTime:
                    return typeof(DateTime);
                case SqlDbType.SmallInt:
                    return typeof(Int16);
                case SqlDbType.SmallMoney:
                    return typeof(Decimal);
                case SqlDbType.Text:
                    return typeof(String);
                case SqlDbType.Timestamp:
                    return typeof(Object);
                case SqlDbType.TinyInt:
                    return typeof(Byte);
                case SqlDbType.Udt://自定义的数据类型
                    return typeof(Object);
                case SqlDbType.UniqueIdentifier:
                    return typeof(Object);
                case SqlDbType.VarBinary:
                    return typeof(Object);
                case SqlDbType.VarChar:
                    return typeof(String);
                case SqlDbType.Variant:
                    return typeof(Object);
                case SqlDbType.Xml:
                    return typeof(Object);
                default:
                    return null;
            }
        }
        #endregion

        /// <summary>
        ///  将Image转换成流数据，并保存为byte[] 
        /// </summary>
        /// <param name="_img"></param>
        /// <returns></returns>
        public static byte[] Convertimg2byte(System.Drawing.Image _img)
        {
            MemoryStream mstream = new MemoryStream();
            _img.Save(mstream, System.Drawing.Imaging.ImageFormat.Bmp);
            byte[] byData = new Byte[mstream.Length];
            mstream.Position = 0;
            mstream.Read(byData, 0, byData.Length);
            mstream.Close();
            return byData;
        }

       /// <summary>
       /// 重新绘制边框线
       /// </summary>
       /// <param name="e"></param>
       /// <param name="grp"></param>
        public static void DrawGroupBox(PaintEventArgs e,GroupBox grp)
        {
            e.Graphics.Clear(grp.BackColor);
            e.Graphics.DrawString(grp.Text, grp.Font, Brushes.Black, 10, 1);
            e.Graphics.DrawLine(Pens.Black, 1, 7, 8, 7);
            e.Graphics.DrawLine(Pens.Black, e.Graphics.MeasureString(grp.Text, grp.Font).Width + 8, 7, grp.Width - 2, 7);
            e.Graphics.DrawLine(Pens.Black, 1, 7, 1, grp.Height - 2);
            e.Graphics.DrawLine(Pens.Black, 1, grp.Height - 2, grp.Width - 2, grp.Height - 2);
            e.Graphics.DrawLine(Pens.Black, grp.Width - 2, 7, grp.Width - 2, grp.Height - 2);
        }
    }
}
