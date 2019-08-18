using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace trial
{
    public partial class login : System.Web.UI.Page
    {


        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\91819\Desktop\Be the chage Hospete\BTCH98\trial\trial\App_Data\Database1.mdf; Integrated Security = True");
            string path1 = Server.MapPath("Image/");
            string FU = FileUpload1.FileName;
            if (FileUpload1.HasFile)
            {
                string ext = Path.GetExtension(FU);


                if (ext == ".jpg" || ext == ".png")
                {


                    FileUpload1.SaveAs(path1 + FileUpload1.FileName);
                    string name = "IMG/" + FU;
                    string ss = "insert into Book values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + @name + "')";
                    SqlCommand cmd = new SqlCommand(ss, con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
                }
                else
                    L1.Text = "Only PNG or JPG Format Allowed";

            }
            else
                L1.Text = "Please select a file!";

        }


    }
}