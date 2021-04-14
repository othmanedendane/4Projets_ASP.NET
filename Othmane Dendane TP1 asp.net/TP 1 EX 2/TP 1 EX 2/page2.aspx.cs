using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP_1_EX_2
{
    public partial class page2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (PreviousPage != null)
            {
                TextBox txt = (TextBox)PreviousPage.FindControl("txt");
                Label1.Text = txt.Text;

            }

            RadioButton r1 = (RadioButton)PreviousPage.FindControl("r1");
            RadioButton r2 = (RadioButton)PreviousPage.FindControl("r2");
            RadioButton r3 = (RadioButton)PreviousPage.FindControl("r3");
            if (r1.Checked == true || r2.Checked == true || r3.Checked == true)
            {
                if (r1.Checked == true)
                {

                    Label2.Text = " Quelconque ";

                }
                else if (r2.Checked == true)
                {
                    Label2.Text = " Moyenne ";
                }

                else
                {
                    Label2.Text = " Excellente ";
                }
            }
        }


    }
}