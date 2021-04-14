using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP_1_EX_4
{
    public partial class exercice_4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Label5.Text = "La page est envoyée au serveur";
            }
            if (!Page.IsValid)
            {
                Literal1.Text = "not valid";
            }
        }
    }
}