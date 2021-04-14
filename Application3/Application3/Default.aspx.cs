using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Application3
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Lblcity.Text = DropDownList1.Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = TextBox1.Text + " " + Lblcity.Text + " ";
            //Radio buttons
            if (pro.Checked==true)
            {
                Label1.Text += "Programmeur ";

            }else if (ana.Checked == true)
            {
                Label1.Text += "Analyseur ";
            }
            else if (pyt.Checked == true)
            {
                Label1.Text += "Python - Java ";
            }
            else
            {
                Label1.Text += "software enginer ";
            }


            //Checkbox
            if (CheckBox1.Checked == true)
            {
                Label1.Text += "Ph.D ";

            }
            else if (CheckBox2.Checked == true)
            {
                Label1.Text += "Bachelor ";
            }
            else
            {
                Label1.Text += "Master ";
            }
        }
    }
}