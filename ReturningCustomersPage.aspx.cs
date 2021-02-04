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
    public partial class ReturningCustomersPage : System.Web.UI.Page
    {
        String str = ConfigurationManager.ConnectionStrings["newconn"].ConnectionString;
        SqlConnection conn = new SqlConnection();

        //Message msg = new Message();
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.ConnectionString = str;
            ErrorMessage.Visible = true;
        }

        protected void generatebutton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("select * from tblPet where PetId=@PetId", conn);
                cmd.Parameters.AddWithValue("@PetId", txtPetID.Text);
                conn.Open();
                SqlDataReader drx = cmd.ExecuteReader();

                if (drx.Read())
                {
                    SiteLibrary mylib1 = new SiteLibrary();

                    txtOwner.Text = drx["OwnersName"].ToString();
                    txtGender.Text= drx["Gender"].ToString();
                    txtNumber.Text = drx["TelephoneNumber"].ToString();
                    txtAddress.Text = drx["Address"].ToString();
                    txtBreed.Text = drx["Breed"].ToString();
                    txtemail.Text = drx["Email"].ToString();
                    txtApptDate.Text = drx["DateofAppt"].ToString();
                    txtApptTime.Text = drx["TimeofAppt"].ToString();
                    txtEmpId.Text = drx["EmpId"].ToString();

                    ErrorMessage.Text = "Success";
                    ErrorMessage.ForeColor = System.Drawing.Color.Green;
                }

                else
                {
                    ErrorMessage.Visible = true;
                    ErrorMessage.Text = "Try Again";
                    ErrorMessage.ForeColor = System.Drawing.Color.Red;
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        protected void updatebutton_Click(object sender, EventArgs e)
        {
            string[] pet;

            SiteLibrary mylib = new SiteLibrary();

            try
            {
                if (txtPetID.Text == "")
                {
                    ErrorMessage.Visible = true;
                    ErrorMessage.Text = "Please Enter a valid PetID";
                }
                else
                {
                    pet = new string[10];
                    pet[0] = txtPetID.Text;
                    pet[1] = txtOwner.Text;
                    pet[2] = txtGender.Text;
                    pet[3] = txtNumber.Text;
                    pet[4] = txtAddress.Text;
                    pet[5] = txtBreed.Text;
                    pet[6] = txtemail.Text;
                    pet[7] = Convert.ToDateTime(txtApptDate.Text).ToString();
                    pet[8] = txtApptTime.Text;
                    pet[9] = txtEmpId.Text;

                    

                    bool check;
                    check = mylib.spUpdatePet(pet, "spUpdatePet");

                    if (check == false)
                    {
                        ErrorMessage.Text = "Update Unsuccessful";
                        ErrorMessage.ForeColor = System.Drawing.Color.Red; 
                        ErrorMessage.Visible = true;
                    }
                    else
                    {
                        ErrorMessage.Text = "Update Successful";
                        ErrorMessage.ForeColor = System.Drawing.Color.Green;
                        ErrorMessage.Visible = true;
                    }
                }


            }
            catch(Exception ex)
            {
                throw ex;
            }

        }

        protected void cancelbutton_Click(object sender, EventArgs e)
        {
            txtPetID.Text = "";
            txtOwner.Text = "";
            txtGender.Text = "";
            txtNumber.Text = "";
            txtAddress.Text = "";
            txtBreed.Text = "";
            txtemail.Text = "";
            txtApptDate.Text = "";
            txtApptTime.Text = "";
            txtEmpId.Text = "";


        }
    }
}