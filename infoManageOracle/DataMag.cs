using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Text;
using System.Data.OracleClient;
using System.IO;
public class DataMag
{
    /// <summary>
    /// 带参数的静态方法
    /// </summary>
    /// <param name="key"></param>
    /// <returns></returns>
    public static string GetConn()
    {
        return ConfigurationSettings.AppSettings["OrclConnStr"].ToString().Trim();
        //return "Data Source=ORCL_REN;User ID=rh;Password=sa;Persist Security Info=True";
    }

    /// <summary>
    /// 查询数据
    /// </summary>
    /// <returns></returns>
    public static DataTable Search(object ID)
    {
        DataTable table = new DataTable();

        string wh = "";
        if (ID != null) { wh = " where sid=" + ID; }
        string OracleStr = "SELECT sid,name,age,sex,email,address,pic FROM xs" + wh;

        string temConStr = GetConn();
        using (OracleConnection OracleCon = new OracleConnection(temConStr))
        {
            OracleCommand OracleCmd = new OracleCommand();
            OracleDataAdapter Oracledp = new OracleDataAdapter();
            try
            {
                OracleCmd.CommandText = OracleStr;
                OracleCmd.CommandType = CommandType.Text;
                OracleCmd.Connection = OracleCon;
                Oracledp.SelectCommand = OracleCmd;
                Oracledp.Fill(table);
            }
            catch (OracleException e)
            {
                throw new Exception(e.Message);
            }
            finally
            {
                OracleCon.Close();
                OracleCon.Dispose();
                OracleCmd.Dispose();
                Oracledp.Dispose();
            }
        }

        return table;
    }

    /// <summary>
    /// 写入数据
    /// </summary>
    /// <param name="id"></param>
    /// <param name="name"></param>
    /// <param name="age"></param>
    /// <param name="sex"></param>
    /// <returns></returns>
    public static bool Insert(string id, string name, int age, string sex, string email, string address,byte[] fs)
    {
        bool bl = false;

        string strSql = string.Format(@"insert into xs(sid,name,age,sex,email,address,pic) 
values('{0}','{1}',{2},'{3}','{4}','{5}',:fs)", id, name, age, sex, email, address);

        //获取数据库连接串
        string temConStr = GetConn();
        OracleConnection OracleCon = new OracleConnection(temConStr);
        OracleCommand OracleCmd = new OracleCommand();
        try
        {
            OracleCon.Open();
            OracleCmd = new OracleCommand(strSql.ToString().Trim(), OracleCon);
            OracleCmd.Parameters.Add(":fs",OracleType.Blob);
            if (fs != null)
                OracleCmd.Parameters[0].Value = fs;
            else
                OracleCmd.Parameters[0].Value = DBNull.Value;
            int i = OracleCmd.ExecuteNonQuery();
            if (i > -1)
            {
                bl = true;
            }
        }
        catch (OracleException e)
        {
            throw new Exception(e.Message);
        }
        finally
        {
            OracleCon.Close();
            OracleCon.Dispose();
            OracleCmd.Dispose();
        }
        return bl;
    }


    /// <summary>
    /// 编辑数据
    /// </summary>
    /// <param name="id"></param>
    /// <param name="name"></param>
    /// <param name="age"></param>
    /// <param name="sex"></param>
    /// <returns></returns>
    public static bool Update(string id, string name, int age, string sex, string email, string address,byte[] fs)
    {
        bool bl = false;

        string strSql = string.Format(@"update xs set name='{1}',age={2},sex='{3}',email='{4}',address='{5}',pic=:fs  
        where sid='{0}'", id, name, age, sex,email,address);

        //获取数据库连接串
        string temConStr = GetConn();
        OracleConnection OracleCon = new OracleConnection(temConStr);
        OracleCommand OracleCmd = new OracleCommand();
        try
        {
            OracleCon.Open();
            OracleCmd = new OracleCommand(strSql.ToString().Trim(), OracleCon);
            OracleCmd.Parameters.Add(":fs", OracleType.Blob);
            if (fs != null)
                OracleCmd.Parameters[0].Value = fs;
            else
                OracleCmd.Parameters[0].Value = DBNull.Value;

            int i = OracleCmd.ExecuteNonQuery();
            if (i > -1)
            {
                bl = true;
            }
        }
        catch (OracleException e)
        {
            throw new Exception(e.Message);
        }
        finally
        {
            OracleCon.Close();
            OracleCon.Dispose();
            OracleCmd.Dispose();
        }
        return bl;
    }


    /// <summary>
    /// 删除数据
    /// </summary>
    /// <param name="ID"></param>
    /// <returns></returns>
    public static bool Delete(string ID)
    {
        bool bl = false;

        string strSql = "delete from xs where sid='" + ID+"'";

        //获取数据库连接串
        string temConStr = GetConn();
        OracleConnection OracleCon = new OracleConnection(temConStr);
        OracleCommand OracleCmd = new OracleCommand();
        try
        {
            OracleCon.Open();
            OracleCmd = new OracleCommand(strSql, OracleCon);
            int i = OracleCmd.ExecuteNonQuery();
            if (i > -1)
            {
                bl = true;
            }
        }
        catch (OracleException e)
        {
            throw new Exception(e.Message);
        }
        finally
        {
            OracleCon.Close();
            OracleCon.Dispose();
            OracleCmd.Dispose();
        }
        return bl;
    }

}