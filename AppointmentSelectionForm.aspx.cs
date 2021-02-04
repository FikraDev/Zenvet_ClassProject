using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZenVet_20191021
{
    public partial class AppointmentSelectionForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void returningCustomerBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReturningCustomersPage.aspx");
        }

        protected void newCustomerBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewCustomerPage.aspx");
        }
    }
}