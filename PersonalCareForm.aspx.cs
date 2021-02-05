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
    public partial class PersonalCareForm : System.Web.UI.Page
    {
        String str = ConfigurationManager.ConnectionStrings["newconn"].ConnectionString;
        SqlConnection conn = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.ConnectionString = str;
            ErrorMessage.Visible = true;
            conn.Open();


            SqlDataAdapter adp = new SqlDataAdapter("Select * from tblPersonalCare", conn);
            DataTable dtbl = new DataTable();
            adp.Fill(dtbl);
            gvPCForm.DataSource = dtbl;
            gvPCForm.DataBind();

        }

        protected void PCFSubmit_Click(object sender, EventArgs e)
        {
            ErrorMessage.Visible = false;

            string[] pcArray = new string[6];

            try
            {
                pcArray[0] = txtPetID_PCF.Text;
                pcArray[1] = txtEmpId_PCF.Text;
                pcArray[2] = servicesList.Text;
                pcArray[3] = txtCost_PCF.Text;
                pcArray[4] = txtNextApptDate.Text;
                pcArray[5] = txtTimeofAppt.Text;

                SiteLibrary mylib = new SiteLibrary();

                bool check;

                check = mylib.spAddPersonalCare(pcArray, "spAddPersonalCare");

                if (check == false)
                {
                    ErrorMessage.Visible = true;
                    ErrorMessage.Text = "Database Has Not Been Updated";
                    ErrorMessage.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    ErrorMessage.Visible = true;
                    ErrorMessage.Text = "Personal Care Database Updated!";
                    ErrorMessage.ForeColor = System.Drawing.Color.Green;

                    txtPetID_PCF.Text = "";
                    txtEmpId_PCF.Text = "";
                    servicesList.Text="";
                    txtCost_PCF.Text="";
                    txtNextApptDate.Text="";
                    txtTimeofAppt.Text="";
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        protected void PCFCancel_Click(object sender, EventArgs e)
        {

            txtPetID_PCF.Text = "";
            txtEmpId_PCF.Text = "";
            servicesList.Text = "";
            txtCost_PCF.Text = "";
            txtNextApptDate.Text = "";
            txtTimeofAppt.Text = "";
        }
    }
}