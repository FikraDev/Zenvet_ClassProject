using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

namespace ZenVet_20191021
{
    public class SiteLibrary
    {
        public SqlDataReader ExecuteSearch(string sql) //checks the DB based on the sql statement
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["newconn"].ToString());

                SqlCommand cmd = new SqlCommand(sql, conn);
                conn.Open();
                SqlDataReader qfind = cmd.ExecuteReader();
                return qfind;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool spUpdatePet(string [] pet,string spUpdatePet)
        {
            bool status = false;

            try
            {
                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["newconn"].ToString()))
                {
                    SqlCommand cmd = new SqlCommand("spUpdatePet", conn);
                    cmd.CommandType = CommandType.StoredProcedure;

                    if(conn.State == ConnectionState.Closed)
                    {
                        conn.Open();
                    }

                    cmd.Parameters.Add("@PetId", SqlDbType.NVarChar, 25, "PetId");
                    cmd.Parameters.Add("@OwnersName", SqlDbType.NVarChar, 255, "OwnersName");
                    cmd.Parameters.Add("@Gender", SqlDbType.Char, 1, "Gender");
                    cmd.Parameters.Add("@TelephoneNumber", SqlDbType.NVarChar, 12, "TelephoneNumber");
                    cmd.Parameters.Add("@Address", SqlDbType.NVarChar, 255, "Address");
                    cmd.Parameters.Add("@Breed", SqlDbType.NVarChar, 255, "Breed");
                    cmd.Parameters.Add("@Email", SqlDbType.NVarChar, 255, "Email");
                    cmd.Parameters.Add("@DateofAppt", SqlDbType.Date);
                    cmd.Parameters.Add("@TimeofAppt", SqlDbType.Time);
                    cmd.Parameters.Add("@EmpId", SqlDbType.NVarChar, 10, "EmpId");

                    cmd.Parameters["@PetId"].Value = pet[0];
                    cmd.Parameters["@OwnersName"].Value = pet[1];
                    cmd.Parameters["@Gender"].Value = pet[2];
                    cmd.Parameters["@TelephoneNumber"].Value = pet[3];
                    cmd.Parameters["@Address"].Value = pet[4];
                    cmd.Parameters["@Breed"].Value = pet[5];
                    cmd.Parameters["@Email"].Value = pet[6];
                    cmd.Parameters["@DateofAppt"].Value = pet[7];
                    cmd.Parameters["@TimeofAppt"].Value = pet[8];
                    cmd.Parameters["@EmpId"].Value = pet[9];

                    int x = cmd.ExecuteNonQuery();
                    if (x > 0)
                    {
                        status = true;
                        conn.Close();
                    }
                }

            }

            catch(Exception ex)
            {
                throw ex;
            }
            return status;
        }

        public bool spAddPet(string[] customerArray, string spUpdatePet)
        {
            bool status = false;

            try
            {
                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["newconn"].ToString()))
                {
                    SqlCommand cmd = new SqlCommand("spAddPet", conn);
                    cmd.CommandType = CommandType.StoredProcedure;

                    if (conn.State == ConnectionState.Closed)
                    {
                        conn.Open();
                    }

                    cmd.Parameters.Add("@PetId", SqlDbType.NVarChar, 25, "PetId");
                    cmd.Parameters.Add("@OwnersName", SqlDbType.NVarChar, 255, "OwnersName");
                    cmd.Parameters.Add("@Gender", SqlDbType.Char, 1, "Gender");
                    cmd.Parameters.Add("@TelephoneNumber", SqlDbType.NVarChar, 12, "TelephoneNumber");
                    cmd.Parameters.Add("@Address", SqlDbType.NVarChar, 255, "Address");
                    cmd.Parameters.Add("@Breed", SqlDbType.NVarChar, 255, "Breed");
                    cmd.Parameters.Add("@Email", SqlDbType.NVarChar, 255, "Email");
                    cmd.Parameters.Add("@DateofAppt", SqlDbType.Date);
                    cmd.Parameters.Add("@TimeofAppt", SqlDbType.Time);
                    cmd.Parameters.Add("@EmpId", SqlDbType.NVarChar, 10, "EmpId");

                    cmd.Parameters["@PetId"].Value = customerArray[0];
                    cmd.Parameters["@OwnersName"].Value = customerArray[1];
                    cmd.Parameters["@Gender"].Value = customerArray[2];
                    cmd.Parameters["@TelephoneNumber"].Value = customerArray[3];
                    cmd.Parameters["@Address"].Value = customerArray[4];
                    cmd.Parameters["@Breed"].Value = customerArray[5];
                    cmd.Parameters["@Email"].Value = customerArray[6];
                    cmd.Parameters["@DateofAppt"].Value = customerArray[7];
                    cmd.Parameters["@TimeofAppt"].Value = customerArray[8];
                    cmd.Parameters["@EmpId"].Value = customerArray[9];

                    int x = cmd.ExecuteNonQuery();
                    if (x > 0)
                    {
                        status = true;
                        conn.Close();
                    }
                }

            }

            catch (Exception ex)
            {
                throw ex;
            }
            return status;
        }

        public bool spAddMedical(string[] medicalArray, string spAddMedical)
        {
            bool status = false;

            try
            {
                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["newconn"].ToString()))
                {
                    SqlCommand cmd = new SqlCommand("spAddMedical", conn);
                    cmd.CommandType = CommandType.StoredProcedure;

                    if (conn.State == ConnectionState.Closed)
                    {
                        conn.Open();
                    }

                    SqlParameter paramx = new SqlParameter("@SurgeryDate", medicalArray[6]);
                    SqlParameter paramv = new SqlParameter("@SurgeryTime", medicalArray[7]);

                    cmd.Parameters.Add("@PetId", SqlDbType.NVarChar, 25, "PetId");
                    cmd.Parameters.Add("@EmpId", SqlDbType.NVarChar, 10, "EmpId");
                    cmd.Parameters.Add("@Complaint", SqlDbType.NVarChar, 255, "Complaint");
                    cmd.Parameters.Add("@TreatmentOption", SqlDbType.NVarChar, 255, "TreatmentOption");
                    cmd.Parameters.Add("@Drug", SqlDbType.NVarChar, 255, "Drug");
                    cmd.Parameters.Add("@Dosage", SqlDbType.Int);
                    if (medicalArray[6] == "" && medicalArray[7] == "")
                    {
                        cmd.Parameters.Add(paramx).Value = DBNull.Value;
                        cmd.Parameters.Add(paramv).Value = DBNull.Value;
                    }
                    else
                    {
                        cmd.Parameters.Add("@SurgeryDate", SqlDbType.DateTime);
                        cmd.Parameters.Add("@SurgeryTime", SqlDbType.DateTime);
                    }
                    cmd.Parameters.Add("@Cost", SqlDbType.Money);
                    
                    

                    cmd.Parameters["@PetId"].Value = medicalArray[0];
                    cmd.Parameters["@EmpId"].Value = medicalArray[1];
                    cmd.Parameters["@Complaint"].Value = medicalArray[2];
                    cmd.Parameters["@TreatmentOption"].Value = medicalArray[3];
                    cmd.Parameters["@Drug"].Value = medicalArray[4];
                    cmd.Parameters["@Dosage"].Value = medicalArray[5];
                    cmd.Parameters["@SurgeryDate"].Value = medicalArray[6];
                    cmd.Parameters["@SurgeryTime"].Value = medicalArray[7];
                    cmd.Parameters["@Cost"].Value = medicalArray[8];
                   

                    int x = cmd.ExecuteNonQuery();
                    if (x > 0)
                    {
                        status = true;
                        conn.Close();
                    }
                }

            }

            catch (Exception ex)
            {
                throw ex;
            }
            return status;
        }

        public bool spAddPersonalCare(string[] pcArray, string spAddPersonalCare)
        {
            bool status = false;

            try
            {
                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["newconn"].ToString()))
                {
                    SqlCommand cmd = new SqlCommand("spAddPersonalCare", conn);
                    cmd.CommandType = CommandType.StoredProcedure;

                    if (conn.State == ConnectionState.Closed)
                    {
                        conn.Open();
                    }

                    cmd.Parameters.Add("@PetId", SqlDbType.NVarChar, 25, "PetId");
                    cmd.Parameters.Add("@EmpId", SqlDbType.NVarChar, 10, "EmpId");
                    cmd.Parameters.Add("@ServicesPerformed", SqlDbType.NVarChar, 255, "ServicesPerformed");
                    cmd.Parameters.Add("@Cost", SqlDbType.Money, 100, "Cost");
                    cmd.Parameters.Add("@NextAppt", SqlDbType.Date);
                    cmd.Parameters.Add("@TimeofAppt", SqlDbType.Time);              

                    cmd.Parameters["@PetId"].Value = pcArray[0];
                    cmd.Parameters["@EmpId"].Value = pcArray[1];
                    cmd.Parameters["@ServicesPerformed"].Value = pcArray[2];
                    cmd.Parameters["@Cost"].Value = pcArray[3];
                    cmd.Parameters["@NextAppt"].Value = pcArray[4];
                    cmd.Parameters["@TimeofAppt"].Value = pcArray[5];                
                   

                    int x = cmd.ExecuteNonQuery();
                    if (x > 0)
                    {
                        status = true;
                        conn.Close();
                    }
                }

            }

            catch (Exception ex)
            {
                throw ex;
            }
            return status;
        }
    }
}