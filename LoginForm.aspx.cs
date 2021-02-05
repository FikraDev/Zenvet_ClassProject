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
    public partial class LoginForm : System.Web.UI.Page
    {
        String str = ConfigurationManager.ConnectionStrings["newconn"].ConnectionString;
        SqlConnection conn = new SqlConnection();
     
        protected void Page_Load(object sender, EventArgs e)
        {           
            conn.ConnectionString = str;
            ErrorMessage.Visible = true;

            string pwd = txtPassword.Text; //prevents the password from being cleared when ddlist selection is made
            txtPassword.Attributes.Add("value", pwd); 
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("select * from tblLogin where UsrName=@UsrName and Password=@Password", conn);
                cmd.Parameters.AddWithValue("@UsrName", txtUsername.Text);
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text);

                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                DataTable dtbl = new DataTable();
                adp.Fill(dtbl);
                conn.Open();

                int x = cmd.ExecuteNonQuery();
                conn.Close();

                if (dtbl.Rows.Count > 0)
                {
                    SqlDataReader drdr;
                    SiteLibrary mylib = new SiteLibrary();

                    string getEmployee = @"select EmpId,FirstName,LastName,DOB,Address,Email,TelephoneNumber,Position from tblEmployees inner join tblLogin on tblLogin.UsrName=tblEmployees.EmpId and tblLogin.UserType=tblEmployees.Position";

                    
                    drdr = mylib.ExecuteSearch(getEmployee);

                    if (drdr.Read() == true)
                    {                        

                        if (selectList.SelectedValue == "1")
                        {
                            Response.Redirect("LoginForm.aspx");
                        }
                        else if (selectList.SelectedValue == "2")
                        {
                            Response.Redirect("MedicalForm.aspx");
                        }
                        else if (selectList.SelectedValue == "3")
                        {
                            Response.Redirect("PersonalCareForm.aspx");
                        }
                        else if (selectList.SelectedValue == "4")
                        {
                            Response.Redirect("AppointmentSelectionForm.aspx");
                        }
                    }

                }
                else
                {
                    ErrorMessage.Text = "Incorrect Username or Password";
                    ErrorMessage.ForeColor = System.Drawing.Color.Red;
                    ErrorMessage.Visible = true;                    
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtUsername.Text = " ";
            txtPassword.Text = " ";
            selectList.ClearSelection();

        }
    }
}