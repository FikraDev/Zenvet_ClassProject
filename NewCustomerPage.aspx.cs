using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

namespace ZenVet_20191021
{
    public partial class NewCustomerPage : System.Web.UI.Page
    {
        String str = ConfigurationManager.ConnectionStrings["newconn"].ConnectionString;
        SqlConnection conn = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.ConnectionString = str;
            ErrorMessage.Visible = true;
            conn.Open();
        }

        protected void registerbutton_Click(object sender, EventArgs e)
        {
            ErrorMessage.Visible = false;

            string[] customerArray = new string[10];

            try
            {
                customerArray[0] = txtPetID_NC.Text;
                customerArray[1] = txtOwner_NC.Text;
                customerArray[2] = txtGender_NC.Text;
                customerArray[3] = txtNumber_NC.Text;
                customerArray[4] = txtAddress_NC.Text;
                customerArray[5] = txtBreed_NC.Text;
                customerArray[6] = txtEmail_NC.Text;
                customerArray[7] = Convert.ToDateTime(txtApptDate_NC.Text).ToString();
                customerArray[8] = txtApptTime_NC.Text;
                customerArray[9] = txtEmpId_NC.Text;

                SiteLibrary mylib = new SiteLibrary();

                bool check;

                check = mylib.spAddPet(customerArray, "spAddPet");

                if (check == false)
                {
                    ErrorMessage.Visible = true;
                    ErrorMessage.Text = "No addition made to Pet Database";
                    ErrorMessage.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    ErrorMessage.Visible = true;
                    ErrorMessage.Text = "Database Updated! Pet has been added";
                    ErrorMessage.ForeColor = System.Drawing.Color.Green;

                    txtPetID_NC.Text = "";
                    txtOwner_NC.Text = "";
                    txtGender_NC.Text = "";
                    txtNumber_NC.Text = "";
                    txtAddress_NC.Text = "";
                    txtBreed_NC.Text = "";
                    txtEmail_NC.Text = "";
                    txtApptDate_NC.Text = "";
                    txtApptTime_NC.Text = "";
                    txtEmpId_NC.Text = "";

                    Response.AddHeader("REFRESH", "7;URL=AppointmentSelectionForm.aspx");
                }
            }

            catch(Exception ex)
            {
                throw ex;
            }

        }

        protected void cancelbutton_NC_Click(object sender, EventArgs e)
        {

            txtPetID_NC.Text = "";
            txtOwner_NC.Text = "";
            txtGender_NC.Text = "";
            txtNumber_NC.Text = "";
            txtAddress_NC.Text = "";
            txtBreed_NC.Text = "";
            txtEmail_NC.Text = "";
            txtApptDate_NC.Text = "";
            txtApptTime_NC.Text = "";
            txtEmpId_NC.Text = "";

        }
    }
}