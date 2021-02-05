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
    public partial class MedicalForm : System.Web.UI.Page
    {
        String str = ConfigurationManager.ConnectionStrings["newconn"].ConnectionString;
        SqlConnection conn = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            hideControl();
           

            conn.ConnectionString = str;
            ErrorMessage.Visible = true;
            conn.Open();

            SqlDataAdapter adp = new SqlDataAdapter("Select * from tblMedical", conn);
            DataTable dtbl = new DataTable();
            adp.Fill(dtbl);
            gvMedForm.DataSource = dtbl;
            gvMedForm.DataBind();
        }

        protected void medformSubmit_Click(object sender, EventArgs e)
        {
            ErrorMessage.Visible = false;

            string[] medicalArray = new string[9];

            try
            {
                medicalArray[0] = txtPetID_MF.Text;
                medicalArray[1] = txtEmpId_MF.Text;
                medicalArray[2] = txtComplaint.Text;
                medicalArray[3] = treatmentList.Text;
                medicalArray[4] = txtDrug.Text;
                medicalArray[5] = txtDosage.Text;
                medicalArray[6] = txtSugeryDate.Text;
                medicalArray[7] = txtSurgeryTime.Text;
                medicalArray[8] = txtCost.Text;

                SiteLibrary mylib = new SiteLibrary();

                bool check;

                check = mylib.spAddMedical(medicalArray, "spAddMedical");

                if (check == false)
                {
                    ErrorMessage.Visible = true;
                    ErrorMessage.Text = "Medical Database Has Not Been Updated";
                    ErrorMessage.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    ErrorMessage.Visible = true;
                    ErrorMessage.Text = "Database Updated!";
                    ErrorMessage.ForeColor = System.Drawing.Color.Green;

                    txtPetID_MF.Text = "";
                    txtEmpId_MF.Text = "";
                    txtComplaint.Text = "";
                    treatmentList.Text = "";
                    txtDrug.Text = "";
                    txtDosage.Text = "";
                    txtSugeryDate.Text = "";
                    txtSurgeryTime.Text = "";
                    txtCost.Text = "";

                    Response.AddHeader("REFRESH", "5;URL=MedicalForm.aspx");
                }
            }
            catch(Exception ex)
            {   
                throw ex;
            }

        }

        protected void medformCancel_Click(object sender, EventArgs e)
        {
            txtPetID_MF.Text = "";
            txtEmpId_MF.Text = "";
            txtComplaint.Text = "";
            treatmentList.SelectedValue = "";
            txtDrug.Text = "";
            txtDosage.Text = "";
            txtSugeryDate.Text = "";
            txtSurgeryTime.Text = "";
            txtCost.Text = "";
        }

        public void hideControl()
        {
            if (treatmentList.SelectedValue == "M")
            {
                int sum = 5000;
                txtSugeryDate.Enabled = false;
                txtSurgeryTime.Enabled = false;
                txtCost.Text = sum.ToString("0.##");

            }

            else if(treatmentList.SelectedValue == "O")
            {
                int sum = 10000 + 5000;
                txtCost.Text = sum.ToString("0.##");
                txtSugeryDate.Enabled = true;
                txtSurgeryTime.Enabled = true;
            }

        }

       
    }
}