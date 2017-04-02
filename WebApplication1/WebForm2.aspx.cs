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
using System.IO;

namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static string PageHomeOf()
        {
            return "hi";
        }

        [WebMethod]
        public static string AddUser(string name,string add,string phone,string chk_in,string id_uri)
        {

            string constr = ConfigurationManager.ConnectionStrings["Hoteldata.Properties.Settings.ERPData1ConnectionString"].ConnectionString;



            using (SqlConnection conn = new SqlConnection(constr))
            {
               
                    conn.Open();
                    //
                    // The following code uses an SqlCommand based on the SqlConnection.
                    //
                    using (SqlCommand command = new SqlCommand("insert into guest_u values('" + name + "', '" + add + "', '" + phone + "', '" + chk_in + "', 'pussy', 'active', '" + id_uri + "');", conn))
                        command.ExecuteNonQuery();

                return "hi";
            }
            }

        [WebMethod]
        public static string OpenUriSaveIm(string name,string f_name) {
            var str = name;
            var str2 = f_name;
            //var str1 = str.Replace("data:image/jpeg;base64,/9j/", "");
            //File.Create(@"C:\Users\Abhi\Desktop\xyz.txt");
            //File.WriteAllBytes(@"C:\Users\Abhi\Desktop\xyz.txt", str1);
            var snd= @"C:\Users\Abhi\Desktop\proj\"+str2;
            System.IO.StreamWriter file = new System.IO.StreamWriter(snd);
            file.WriteLine(str);

            file.Close();
            return snd;
        }
    }
   
}