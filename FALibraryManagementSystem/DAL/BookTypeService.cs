using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Text;

namespace Jackone
{
    public class BookTypeService
    {
        /// <summary>
        /// 查询所有图书类型信息
        /// </summary>
        /// <returns>所有图书类型集合</returns>
        public static List<BookTypeInfo> SelectBookTypeInfo()
        {
            List<BookTypeInfo> list = new List<BookTypeInfo>();

            string StrSql = "SELECT * FROM BookTypeInfo ";

            DataTable info = SqlHelper.QueryTable(CommandType.Text, StrSql);
            foreach (DataRow dr in info.Rows)
            {
                BookTypeInfo bt = new BookTypeInfo
                {
                    BookTypeID = (int)dr["BookTypeID"],
                    BookTypeName = dr["BookTypeName"].ToString(),
                    Remark = dr["Remark"].ToString()
                };
                list.Add(bt);
            }
            return list;
        }

        public static void InsertBookTypeInfo(BookTypeInfo bi)
        {
            string StrSql = @"INSERT INTO BookTypeInfo
            (
           [BookTypeName] ,[Remark]
             )
            VALUES
            (
             @BookTypeName ,@Remark
            )
            ";

            Type t = bi.GetType();
            PropertyInfo[] PropertyList = t.GetProperties();
            List<SqlParameter> Params = new List<SqlParameter>();
            foreach (PropertyInfo _pinfo in PropertyList)
            {
                SqlParameter para = new SqlParameter("@" + _pinfo.Name, Function.CType2SqlType(_pinfo.PropertyType));
                para.Value = _pinfo.GetValue(bi, null);
                Params.Add(para);
            }

            SqlHelper.ExecuteNonQuery(CommandType.Text, StrSql, Params.ToArray());
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="ui"></param>
        public static void UpdateBookTypeInfo(BookTypeInfo bi)
        {
            string StrSql = @"
 UPDATE BookTypeInfo SET BookTypeName=@BookTypeName,Remark=@Remark WHERE BookTypeID=@BookTypeID;
";
            List<SqlParameter> Params = new List<SqlParameter>();
            SqlParameter para = new SqlParameter("@BookTypeName", Function.CType2SqlType(bi.BookTypeName.GetType()));
            para.Value = bi.BookTypeName;
            Params.Add(para);
            para = new SqlParameter("@Remark", Function.CType2SqlType(bi.Remark.GetType()));
            para.Value = bi.Remark;
            Params.Add(para);
            para = new SqlParameter("@BookTypeID", Function.CType2SqlType(bi.BookTypeID.GetType()));
            para.Value = bi.BookTypeID;
            Params.Add(para);

            SqlHelper.ExecuteNonQuery(CommandType.Text, StrSql, Params.ToArray());
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="Uid"></param>
        public static void DeleteBookTypeInfo(int BookTypeID)
        {
            string StrSql = @"
 DELETE BookTypeInfo  WHERE BookTypeID=@BookTypeID;
";
            List<SqlParameter> Params = new List<SqlParameter>();
            SqlParameter para = new SqlParameter("@BookTypeID", SqlDbType.Int);
            para.Value = BookTypeID;
            Params.Add(para);

            SqlHelper.ExecuteNonQuery(CommandType.Text, StrSql, Params.ToArray());
        }

    }
}
