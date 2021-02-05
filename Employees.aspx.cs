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
    public partial class Employees : System.Web.UI.Page
    {
        String str = ConfigurationManager.ConnectionStrings["newconn"].ConnectionString;
        SqlConnection conn = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.ConnectionString = str;
            ErrorMessage.Visible = true;
            conn.Open();
        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            try
            {
                string strx = "insert into tblEmployees(EmpId,FirstName,LastName,DOB,Address,Email,TelephoneNumber,Position) values('"+ txtUsrname.Text+"','"+txtFname.Text + "','" +txtLname.Text + "','" +txtDOB.Text + "','" +txtAddress.Text + "','" +txtEmail.Text + "','" + txtTelNum.Text+ "','" +txtPosition.Text +"')";

                SqlCommand cmd = new SqlCommand(strx, conn);
                int x = cmd.ExecuteNonQuery();

                if (x > 0)
                {
                    string entrpwd = "insert into tblLogin(UsrName,Password,UserType)values(@UsrName,@Password,@Position)";
                    SqlCommand cmdx = new SqlCommand(entrpwd, conn);
                    cmdx.Parameters.AddWithValue("@Usrname", txtUsrname.Text);
                    cmdx.Parameters.AddWithValue("@Password", txtPwdEmp.Text);
                    cmdx.Parameters.AddWithValue("@Position", txtPosition.Text);

                    int s = cmdx.ExecuteNonQuery();

                    if (s > 0)
                    {
                        ErrorMessage.Visible = true;
                        ErrorMessage.Text = "Employee Created!";
                        ErrorMessage.ForeColor = System.Drawing.Color.Green;

                        txtUsrname.Text = "";
                        txtFname.Text = "";
                        txtLname.Text = "";
                        txtDOB.Text = "";
                        txtAddress.Text = "";
                        txtEmail.Text = "";
                        txtTelNum.Text = "";
                        txtPosition.Text = "";
                        txtPwdEmp.Text = "";
                    }
                    else
                    {
                        ErrorMessage.Visible = true;
                        ErrorMessage.Text = "Employee Not Created";
                        ErrorMessage.ForeColor = System.Drawing.Color.Red;
                    }
                }

            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtUsrname.Text = "";
            txtFname.Text = "";
            txtLname.Text = "";
            txtDOB.Text = "";
            txtAddress.Text = "";
            txtEmail.Text = "";
            txtTelNum.Text = "";
            txtPosition.Text = "";
            txtPwdEmp.Text = "";
        }
    }
}