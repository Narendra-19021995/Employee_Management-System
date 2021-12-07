using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace Employee_Mgmt_Sys
{
    public partial class User_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EMSConnectionString"].ToString());
            con.Open();
            string query = "select count(*) from emp_info where Username='" + username.Text + "' and Password='" + password.Text + "' ";
            string query_id = "select Eid, Name from emp_info where Username='" + username.Text + "' and Password='" + password.Text + "' ";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlCommand cd = new SqlCommand(query_id, con);
            string output = cmd.ExecuteScalar().ToString();
            SqlDataReader dr = cd.ExecuteReader();
            if (output == "1")
            {
                // now we create a session
                
                while (dr.Read())
                {
                    Session["eid"] = dr.GetValue(0);
                    Session["Username"] = dr.GetValue(1);
                }
                Response.Redirect("EMP/index.aspx");
            }

            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "Validation", "<script langauge='javascript'>alert('Please Enter Correct Username and Password')</script>");
            }
        }
    }
}