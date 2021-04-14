using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using System.Net.Mail;

namespace examen_AT1
{
    public partial class Page1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label7.Visible = false;
            Label8.Visible = false;
            Label10.Visible = false;
            Label11.Visible = false;
            Label13.Visible = false;
            Label14.Visible = false;
            Label16.Visible = false;
            Label17.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string constr = (@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\15149\source\repos\examen_AT1\examen_AT1\App_Data\information.mdf;Integrated Security=True");
            SqlConnection con = new SqlConnection(constr);
            try
            {
                con.Open();
                //SqlCommand cmd = new SqlCommand("INSERT INTO student values (Id="+TextBox1.Text+"and login='"+TextBox2.Text+"'and password='"+TextBox3.Text+"') ", con);
                SqlCommand cmd = new SqlCommand("DELETE FROM information WHERE nom = ('" + TextBox4.Text + "')", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                if (dt.Rows[0][0].ToString() == "1")
                {
                    //Session["username"] = txtUserName.Text.Trim();


                    Label7.Visible = true;
                }
                else { Label8.Visible = true; }

            }
            catch (Exception ex)
            {
                //Response.Write(ex.Message);
                Label8.Visible = true;
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string constr = (@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\15149\source\repos\examen_AT1\examen_AT1\App_Data\information.mdf;Integrated Security=True");
            SqlConnection con = new SqlConnection(constr);
            try
            {
                con.Open();
                //SqlCommand cmd = new SqlCommand("INSERT INTO student values (Id="+TextBox1.Text+"and login='"+TextBox2.Text+"'and password='"+TextBox3.Text+"') ", con);
                SqlCommand cmd = new SqlCommand("DELETE email FROM information WHERE nom = ('" + TextBox5.Text + "')", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                if (dt.Rows[0][0].ToString() == "1")
                {
                    //Session["username"] = txtUserName.Text.Trim();


                    Label10.Visible = true;
                }
                else { Label11.Visible = true; }

            }
            catch (Exception ex)
            {
                //Response.Write(ex.Message);
                Label10.Visible = true;
            }
        }

        public void sendEmail()

        {
            try
            {
                // Create a message object using MailMessage
                MailMessage message = new MailMessage(from.Text, to.Text, subject.Text, body.Text);
                // Allow specify whether or not we can attach/send html in the body of the mail
                message.IsBodyHtml = true;

                // Specify the smtpClient which handle all the email sending for us
                // Each mailServer as its own smtp server and port definition
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                // Gmail requires client have enabled SSL
                client.EnableSsl = true;

                client.UseDefaultCredentials = false;
                // Set client credentials used to authenticate the sender
                client.Credentials = new System.Net.NetworkCredential("technotransact@gmail.com", "techno98741");
                // Effectively send message
                client.Send(message);
                // Confirm status
                status.Text = "Mail was sent successfully!";
            }
            catch (Exception ex)
            {
                status.Text = ex.Message;
            }

        }
        protected void send_Click(object sender, EventArgs e)
        {
            sendEmail();

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            string constr = (@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\15149\source\repos\examen_AT1\examen_AT1\App_Data\information.mdf;Integrated Security=True");
            SqlConnection con = new SqlConnection(constr);
            try
            {
                con.Open();
                //SqlCommand cmd = new SqlCommand("INSERT INTO student values (Id="+TextBox1.Text+"and login='"+TextBox2.Text+"'and password='"+TextBox3.Text+"') ", con);
                SqlCommand cmd = new SqlCommand(@"UPDATE [information] SET email = ('" + TextBox7.Text + "') WHERE nom = ('" + TextBox6.Text + "')", con);
                //SqlCommand cmd = new SqlCommand("DELETE email FROM information WHERE nom = ('" + TextBox5.Text + "')", con);
                //"UPDATE FROM Admin_TaskList SET Status = 'Complete' WHERE Description = 'Remove User' AND Name = @Name", conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                if (dt.Rows[0][0].ToString() == "1")
                {
                    //Session["username"] = txtUserName.Text.Trim();


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

        protected void Button8_Click(object sender, EventArgs e)
        {
            string constr = (@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\15149\source\repos\examen_AT1\examen_AT1\App_Data\information.mdf;Integrated Security=True");
            SqlConnection con = new SqlConnection(constr);
            try
            {
                con.Open();
                //SqlCommand cmd = new SqlCommand("INSERT INTO student values (Id="+TextBox1.Text+"and login='"+TextBox2.Text+"'and password='"+TextBox3.Text+"') ", con);
                SqlCommand cmd = new SqlCommand(@"UPDATE [information] SET niveau_etudes = ('" + TextBox9.Text + "') WHERE nom = ('" + TextBox8.Text + "')", con);
                //SqlCommand cmd = new SqlCommand("DELETE email FROM information WHERE nom = ('" + TextBox5.Text + "')", con);
                //"UPDATE FROM Admin_TaskList SET Status = 'Complete' WHERE Description = 'Remove User' AND Name = @Name", conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                if (dt.Rows[0][0].ToString() == "1")
                {
                    //Session["username"] = txtUserName.Text.Trim();


                    Label16.Visible = true;
                }
                else { Label17.Visible = true; }

            }
            catch (Exception ex)
            {
                //Response.Write(ex.Message);
                Label16.Visible = true;
            }
        }
    }
}