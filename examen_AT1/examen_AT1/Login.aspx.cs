using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;


namespace examen_AT1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblErrorMessage.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("inscription.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string constr = (@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\15149\source\repos\examen_AT1\examen_AT1\App_Data\information.mdf;Integrated Security=True");
            SqlConnection con = new SqlConnection(constr);
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT user,pw FROM information WHERE user='" + txtUserName.Text + "' and pw = '" + txtPassword.Text + "' ", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                if (dt.Rows[0][0].ToString() == "1")
                {
                    //Session["username"] = txtUserName.Text.Trim();

                    //lblErrorMessage.Visible = true;
                    Response.Redirect("Page1.aspx");
                }
                else { lblErrorMessage.Visible = true; }

            }
            catch (Exception ex)
            {
                //Response.Write(ex.Message);
                //lblErrorMessage.Visible = true;
                Response.Redirect("Page1.aspx");
            }
        }
    }
}