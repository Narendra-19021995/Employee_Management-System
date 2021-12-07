using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace Employee_Mgmt_Sys.Administrator
{
    public partial class Addemp : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EMSConnectionString"].ConnectionString);
        SqlDataAdapter sda;
        DataTable dt;
        string sid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                username.Text = "Welcome " + Session["Username"].ToString();
            }
            else
            {
                Response.Redirect("../index.aspx");
            }

            con.Open();
            sda = new SqlDataAdapter("select isnull(max(cast(Eid as int)),0)+1 from emp_info", con);
            dt = new DataTable();
            sda.Fill(dt);
            sid = dt.Rows[0][0].ToString();
            con.Close();

        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Remove("Username");
            Response.Redirect("../index.aspx");
        }

        protected void sub_Click(object sender, EventArgs e) { 
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EMSConnectionString"].ToString());
            SqlCommand com;
            var dat = calendar.Text;
            DateTime d = Convert.ToDateTime(dat);
            string d2 = d.ToString("dd/MM/yyyy");
            com = new SqlCommand("empin", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.Add("@Name", SqlDbType.VarChar).Value = fname.Text;
            com.Parameters.Add("@LastName", SqlDbType.VarChar).Value = lname.Text;
            com.Parameters.Add("@Email", SqlDbType.VarChar).Value = email.Text;
            com.Parameters.Add("@DOB", SqlDbType.VarChar).Value = d2;
            com.Parameters.Add("@Gender", SqlDbType.VarChar).Value = genders.SelectedItem.Text;
            com.Parameters.Add("@Contact", SqlDbType.VarChar).Value = contact.Text;
            com.Parameters.Add("@Country", SqlDbType.VarChar).Value = country.Text;
            com.Parameters.Add("@Address", SqlDbType.VarChar).Value = add.Text;
            com.Parameters.Add("@Department", SqlDbType.VarChar).Value = Department.Text;
            com.Parameters.Add("@Degree", SqlDbType.VarChar).Value = Degree.Text;
            com.Parameters.Add("@Salary", SqlDbType.VarChar).Value = salary.Text;
            com.Parameters.Add("@Username", SqlDbType.VarChar).Value = uname.Text;
            com.Parameters.Add("@Password", SqlDbType.VarChar).Value = pword.Text;
            con.Open();
            com.ExecuteNonQuery();
            con.Close();

            int id = Convert.ToInt16(sid);
            com = new SqlCommand("salin", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@Eid", SqlDbType.VarChar).Value = id;
            com.Parameters.Add("@base", SqlDbType.VarChar).Value = salary.Text;
            con.Open();
            com.ExecuteNonQuery();
            con.Close();

            com = new SqlCommand("rin",con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@Eid", SqlDbType.VarChar).Value = id;
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
        }

        //protected void sub_Click(object sender, EventArgs e)
        //{
        //    con.Open();
        //    DateTime d = Convert.ToDateTime(date.Text);
        //    string d2 = d.ToString("dd/MM/yyyy");
        //    SqlCommand cmd = con.CreateCommand();
        //    cmd.CommandType = CommandType.Text;
        //    cmd.CommandText = "insert into emp_info(Name, LastName, Email, DOB, Gender, Contact, Country, Address, Department, Degree, Salary, Username, Password)values('" + fname.Text + "','" + lname.Text + "','" + email.Text + "','" + d2 + "','" + genders.SelectedItem.Text + "','" + contact.Text + "','" + country.Text + "','" + add.Text + "','" + Department.Text + "','" + Degree.Text + "','" + salary.Text + "','" + uname.Text + "','" + pword.Text + "')";
        //    cmd.ExecuteNonQuery();
        //    con.Close();
        //    Response.Redirect("Addemp.aspx");
        //    ClientScript.RegisterStartupScript(Page.GetType(), "Validation", "<script langauge='javascript'>alert('Registration Done Successfully..')</script>");
            
        //}
    }
}