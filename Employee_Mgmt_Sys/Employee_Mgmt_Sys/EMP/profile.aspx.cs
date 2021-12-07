using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
namespace Employee_Mgmt_Sys.EMP
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                Username.Text = "Welcome " + Session["Username"].ToString();
                string id= Session["eid"].ToString();
                //Response.Write(id);
                bool temp = false;
                SqlConnection con = new SqlConnection("Data Source=NAREN-19LAPTOP;Initial Catalog=EMS;Integrated Security=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from emp_info where Eid='" + id + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                name.Text = dr.GetString(1);
                lname.Text = dr.GetString(2);
                email.Text = dr.GetString(3);
                DOB.Text = dr.GetString(4);
                gender.Text = dr.GetString(5);
                contact.Text = dr.GetString(6);
                country.Text = dr.GetString(7);
                Address.Text = dr.GetString(8);
                department.Text = dr.GetString(9);
                degree.Text = dr.GetString(10);
                salary.Text = dr.GetString(11);
                temp = true;
                }
                if (temp == false)
                Response.Write("not found");
                con.Close();
            }
                         
            else
            {
                Response.Redirect("../index.aspx");
            }

        }
        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Remove("Username");
            Response.Redirect("../index.aspx");
        }
    }
}