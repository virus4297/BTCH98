using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace trial
{
    public partial class login : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\91819\Desktop\Be the chage Hospete\BTCH98\trial\trial\App_Data\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Book values('"+TextBox1.Text+"','"+TextBox2.Text+ "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
            

            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}