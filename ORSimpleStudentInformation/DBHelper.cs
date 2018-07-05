using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;

namespace Student_MI
{
    class DBHelper
    {
        private static string sqlCon = "Data Source=.\\SQLEXPRESS;Initial Catalog=StudentManager;uid=dbuser;pwd=123";
        public static SqlConnection con = new SqlConnection(sqlCon);
    }
}
