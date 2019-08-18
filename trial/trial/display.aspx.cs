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
            string Conn = @"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\91819\Desktop\Be the chage Hospete\BTCH98\trial\trial\App_Data\Database1.mdf; Integrated Security = True";
            SqlConnection con =new SqlConnection(Conn);
            con.Open();
            SqlCommand query1 = new SqlCommand("Select * from Book");
            query1.CommandType = System.Data.CommandType.Text;
            query1.Connection = con;

            string temp = "";
            SqlDataReader reader = query1.ExecuteReader();
            while (reader.Read())
            {


                temp += "<div><table class='Table'>";
                temp += "<tr class='Row'>";
                temp += "<td class='Data'>";
                temp += "Name:<Label class='Name'>" + reader["name"].ToString() + "<Label><br/>";
                temp += "BookName: <Label class='BookName'>" + reader["book_name"].ToString() + "</Label><br/>";
                temp += "Description: <Label class='Description'>" + reader["description"].ToString() + "</Label><br/>";
                temp += " </td>";
                temp += "</tr>";
                temp += "</table></div>";
            }
            Get1.Text = temp;
            con.Close();
        }

    }
}