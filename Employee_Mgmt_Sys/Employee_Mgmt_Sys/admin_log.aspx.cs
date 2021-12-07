using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Employee_Mgmt_Sys
{
    public partial class admin_log : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //EmployeeMgtsysConnectionString
            //Data Source=NAREN-19LAPTOP;Initial Catalog=EmployeeMgtsys;Integrated Security=True;Pooling=False
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            /*SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EmployeeMgtsysConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Admin_log where Username=@Username and Password=@Password", con);
            cmd.Parameters.AddWithValue("@username", Username.Text);
            cmd.Parameters.AddWithValue("@password", Password.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("Administr
        }
    }
}ator/admin_index.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Please Enter Correct Username And Password')</script>");
            }*/

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EMSConnectionString"].ToString());
            con.Open();
            string query = "select count(*) from adminlog where username='" + Username.Text + "' and password='" + Password.Text + "' ";

            SqlCommand cmd = new SqlCommand(query, con);
            string output = cmd.ExecuteScalar().ToString();

            if (output == "1")
            {
                // now we create a session
                Session["username"] = Username.Text;
                Response.Redirect("Administrator/admin_index.aspx");
            }

            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "Validation", "<script langauge='javascript'>alert('Please Enter Correct Username and Password')</script>");
            }
        }
    }
}