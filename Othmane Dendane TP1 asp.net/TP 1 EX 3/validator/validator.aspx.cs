using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace validator
{
    public partial class validator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            cpv2.ValueToCompare = DateTime.Now.ToString("d");
        }

        protected void butOnClique_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
                lblMessage.Text = "La page est envoyée au serveur";
        }
    }
}