using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

namespace ZenVet_20191021
{
    public class SiteLibrary
    {
        public SqlDataReader ExecuteSearch(string sql) //checks the DB based on the sql statement
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["newconn"].ToString());

                SqlCommand cmd = new SqlCommand(sql, conn);
                conn.Open();
                SqlDataReader qfind = cmd.ExecuteReader();
                return qfind;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}