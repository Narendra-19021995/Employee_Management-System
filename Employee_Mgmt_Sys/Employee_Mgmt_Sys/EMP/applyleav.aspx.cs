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
    public partial class applyleav : System.Web.UI.Page
    {
        DataTable dt;
        SqlConnection con=new SqlConnection(ConfigurationManager.ConnectionStrings["EMSConnectionString"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                Username.Text = "Welcome " + Session["Username"].ToString();
            }
            else
            {
                Response.Redirect("../index.aspx");
            }
            FillGrid();
        }
        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Remove("Username");
            Response.Redirect("../index.aspx");
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string id = Session["eid"].ToString();
            con.Open();
            DateTime d = Convert.ToDateTime(startdate.Text);
            string d2 = d.ToString("dd/MM/yyyy");
            DateTime d1 = Convert.ToDateTime(enddate.Text);
            string d3 = d1.ToString("dd/MM/yyyy");
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into emp_leave(Eid, reason, startdate, enddate, status)values('"+ id +"','"+reason.Text+"', '"+ d2 +"', '"+ d3 +"', 'Pending')";
            cmd.ExecuteNonQuery();
            con.Close();
            //Response.Redirect("Addemp.aspx");
            ClientScript.RegisterStartupScript(Page.GetType(), "Validation", "<script langauge='javascript'>alert('Registration Done Successfully..')</script>");
        }

        public void FillGrid()
        {
            try
            {
                string id = Session["eid"].ToString();
                if (dt == null || dt.Rows.Count < 1)
                {

                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EMSConnectionString"].ConnectionString);
                    con.Open();
                    ///I'm using NorthWind Database

                    SqlCommand cmd = new SqlCommand("Select emp_info.Eid, Name, LastName, emp_leave.startdate, enddate, reason, status from emp_leave join emp_info ON emp_info.Eid = emp_leave.Eid Where emp_info.Eid='"+ id +"' AND emp_leave.Eid='"+ id +"'", con);

                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    dt = new DataTable();
                    adapter.Fill(dt);
                    cmd.Dispose();
                    con.Close();

                }
                datagrid.DataSource = dt;
                datagrid.DataBind();
            }
            catch (Exception ex)
            {

            }
        }
        protected void datagrid_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            try
            {
                FillGrid();
                datagrid.PageIndex = e.NewPageIndex;
                datagrid.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("Error" + ex);
            }
        }

        protected void datagrid_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        
    }
}