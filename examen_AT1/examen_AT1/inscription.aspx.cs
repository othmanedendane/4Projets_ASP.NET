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
    public partial class inscription : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label13.Visible = false;
            Label14.Visible = false;

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label12.Text = DropDownList1.Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string constr = (@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\15149\source\repos\examen_AT1\examen_AT1\App_Data\information.mdf;Integrated Security=True");
            SqlConnection con = new SqlConnection(constr);
            try
            {
                con.Open();
                //SqlCommand cmd = new SqlCommand("INSERT INTO student values (Id="+TextBox1.Text+"and login='"+TextBox2.Text+"'and password='"+TextBox3.Text+"') ", con);
                SqlCommand cmd = new SqlCommand(@"INSERT INTO [information] (nom,prenom,date_naissance,sexe,email,date_cv,niveau_etudes,remarque,user,pw,secteur) VALUES ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + Label12.Text + "')", con);
                //SqlCommand cmd = new SqlCommand(@"INSERT INTO [Table] (Id,message) VALUES ('" + TextBox5.Text + "','" + body.Text + "')", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                if (dt.Rows[0][0].ToString() == "1")
                {
                    //Session["username"] = txtUserName.Text.Trim();

                    //Label5.Visible = true;
                    Label13.Visible = true;
                }
                else { Label14.Visible = true; }

            }
            catch (Exception ex)
            {
                //Response.Write(ex.Message);
                Label13.Visible = true;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                //check file extension
                string fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName);
                if (fileExtension != ".doc" && fileExtension != ".docx" && fileExtension != ".pdf")
                {
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                    lblMessage.Text = "Only files with .doc , .docx and pdf extension are allowed.";

                }
                else
                {

                    FileUpload1.SaveAs(Server.MapPath("~/uploads/" + FileUpload1.FileName));
                    //Afficher le message de confirmation
                    lblMessage.Text = "File uploaded";
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                }
            }
            else
            {
                lblMessage.Text = "Please select a file to upload";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (FileUpload2.HasFile)

            {

                FileUpload2.SaveAs(Server.MapPath("~/uploads/" + FileUpload2.FileName));
                imgViewfile.ImageUrl = "~/uploads/" + FileUpload2.FileName;
                //Afficher le message de confirmation
                lblMessage0.Text = "File uploaded";
                lblMessage0.ForeColor = System.Drawing.Color.Green;

            }
            else
            {
                lblMessage0.Text = "Please select a file to upload";
                lblMessage0.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}