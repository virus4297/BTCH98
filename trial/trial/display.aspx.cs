using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace trial
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string Conn = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Pawan\Desktop\work\BTCH98\trial\trial\App_Data\Database1.mdf;Integrated Security=True";
            SqlConnection con =new SqlConnection(Conn);
            con.Open();
            SqlCommand query1 = new SqlCommand("Select * from Book");
            query1.CommandType = System.Data.CommandType.Text;
            query1.Connection = con;

            string temp = "";
            SqlDataReader reader = query1.ExecuteReader();
            while (reader.Read())
            {
                temp += "<table>";
                temp += reader["name"].ToString();
                temp +=  "<br>";
                temp += reader["contact"].ToString();
                temp += reader["email"].ToString();
                temp += reader["book_name"].ToString();
                temp += reader["description"].ToString();
                temp += "<br>";
                temp += "</table>";
            }
            Get1.Text = temp;
            con.Close();
        }

    }
}