using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP1
{
    public partial class tp1 : System.Web.UI.Page
    {
       

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Radio1.Checked == true || Radio2.Checked == true || Radio3.Checked == true || Radio4.Checked == true)
            {
                Label1.Text = "La balise est ";

                //Radio buttons
                if (Radio1.Checked == true)
                {
                    Label1.Text += " < img > ";

                }
                else if (Radio2.Checked == true)
                {
                    Label1.Text += " < div > ";
                }
                else if (Radio3.Checked == true)
                {
                    Label1.Text += " < hr/ > ";
                }
                else
                {
                    Label1.Text += " < br/ > ";
                }
            }

            if (Radio5.Checked == true || Radio6.Checked == true || Radio7.Checked == true || Radio8.Checked == true)
            {
                Label2.Text = "Vous lisez la revue ";
                //Radio buttons
                if (Radio5.Checked == true)
                {
                    Label2.Text += "MSDN Magazine ";

                }
                else if (Radio6.Checked == true)
                {
                    Label2.Text += "L'informaticien ";
                }
                else if (Radio7.Checked == true)
                {
                    Label2.Text += "Programmez ";
                }
                else
                {
                    Label2.Text += "PC World ";
                }

                //check boxs

                if (CheckBox1.Checked == true || CheckBox2.Checked == true)
                {
                    Label2.Text += " dans le format ";

                }
                else
                {
                    Label2.Text = " Vous devez choisir un format de revue ";
                }

                //check boxs
                if (CheckBox1.Checked == true && CheckBox2.Checked == true)
                {
                    Label2.Text += " Papier et electronique ";

                }
                else if (CheckBox1.Checked == true)
                {
                    Label2.Text += " Papier ";

                }
                else
                {
                    Label2.Text += " electronique ";
                }
            }
        }
    }
}