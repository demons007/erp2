using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace HotelDAL
{
    class DataAccessClass
    {
        private SqlConnection CreateConnection() {

            string constr = ConfigurationManager.ConnectionStrings["myCString"].ConnectionString;
            SqlConnection con = new SqlConnection();
            return con;
        }
    }
}
