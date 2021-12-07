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
    public partial class View_emp : System.Web.UI.Page
    {
        DataTable dt;
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
            FillGrid();
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Remove("Username");
            Response.Redirect("../index.aspx");
        }
        //protected void btnFill_Click(object sender, EventArgs e)
        //{
        //    //FillGrid();
        //}

        public void FillGrid()
        {
            try
            {
                if (dt == null || dt.Rows.Count < 1)
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EMSConnectionString"].ConnectionString);
                    con.Open();
                    ///I'm using NorthWind Database
                  
                    SqlCommand cmd = new SqlCommand("Select * from emp_info", con);

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
    }
}