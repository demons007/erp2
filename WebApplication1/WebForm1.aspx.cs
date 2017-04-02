using HotelDAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        
        [WebMethod]
        public static string OnSubmit()
        {
            return "message from code behind";
        }
        
        [WebMethod]
        public static string test(object sender, EventArgs e)
        {
            return e.ToString();
        }


        [WebMethod]
        public static string AuthAdmin(string aid,string pass)
        {
            var x = aid;
            
            return "success";
        }

        [WebMethod]
        public static List<string> AuthenticateLogin(string id,string password,string type)
        {
            List<string> st= new List<string>();
            int n=0;
            string constr = ConfigurationManager.ConnectionStrings["Hoteldata.Properties.Settings.ERPData1ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Hotel_Auth where id ='"+id+"'", con);
            SqlDataReader rd = cmd.ExecuteReader();
            while(rd.Read()){
                st.Add(rd.GetString(n));
                st.Add(rd.GetString(n + 1));
                st.Add(rd.GetString(n+2));
                n++;
            }
            con.Close();
            return st;
        }

        


    }
}