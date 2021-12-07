using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Employee_Mgmt_Sys.Administrator
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EMSConnectionString"].ConnectionString);
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

        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Remove("Username");
            Response.Redirect("../index.aspx");
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            con.Open();
           

            string query = "select count(*) from emp_info where Eid='" + EMP_Id.Text + "' ";

            SqlCommand cmd = new SqlCommand(query, con);
            string output = cmd.ExecuteScalar().ToString();

            if (output == "1")
            {
            DateTime d = Convert.ToDateTime(date.Text);
            string d2 = d.ToString("dd/MM/yyyy");
            //DateTime CreatdDate = DateTime.ParseExact(date.Text, "MM/dd/yyyy hh:mm:ss tt", System.Globalization.CultureInfo.InvariantCulture);
            SqlCommand comd = con.CreateCommand();
            comd.CommandType = CommandType.Text;
            comd.CommandText = "insert into project(Eid, pname, duedate)values('" + EMP_Id.Text + "','" + Projectname.Text + "','" + d2 + "')";
            comd.ExecuteNonQuery();
            con.Close();
           // Response.Redirect("Addemp.aspx");
            ClientScript.RegisterStartupScript(Page.GetType(), "Validation", "<script langauge='javascript'>alert('Registration Done Successfully..');</script>");
            }

            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "Validation", "<script langauge='javascript'>alert('Invalid Emp_ID')</script>");
            }
        }
    }
}