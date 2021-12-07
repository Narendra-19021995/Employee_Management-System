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
    public partial class index : System.Web.UI.Page
    {
        DataTable dt, dt_1, dt_2, dt_3;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EMSConnectionString"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                Username.Text = "Welcome " + Session["Username"].ToString();
               /* if (Session["eid"] != null) {
                   // eid.Text = Session["eid"].ToString();
                    string id = Session["eid"].ToString();
                    Response.Write(id);
                    con.Open();
                    string query = "select count(*) from emp_info where eid='" + id + "' ";
                    SqlCommand cmd = new SqlCommand(query, con);
                    string output = cmd.ExecuteScalar().ToString();
                   
                    
                }*/
            }
            else
            {
                Response.Redirect("../index.aspx");
            }
            FillGrid();
            FillGrid_1();
            FillGrid_2();
            FillGrid_3();
        }
        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Remove("Username");
            Response.Redirect("../index.aspx");
        }

        public void FillGrid()
        {
            try
            {
                //string id = Session["eid"].ToString();
                if (dt == null || dt.Rows.Count < 1)
                {

                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EMSConnectionString"].ConnectionString);
                    con.Open();
                    ///I'm using NorthWind Database

                    SqlCommand cmd = new SqlCommand("Select emp_info.Eid, Name, LastName, rank.point from emp_info join rank ON emp_info.Eid = rank.Eid order by point Desc", con);

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

        protected void datagrid_PageIndexChanging_1(object sender, GridViewPageEventArgs e)
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
        protected void datagrid_SelectedIndexChanged_1(object sender, EventArgs e)
        {

        }


        public void FillGrid_1()
        {
            try
            {
                string id = Session["eid"].ToString();
                if (dt_1 == null || dt_1.Rows.Count < 1)
                {

                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EMSConnectionString"].ConnectionString);
                    con.Open();
                    ///I'm using NorthWind Database

                    SqlCommand cmd = new SqlCommand("Select pname, duedate From project where Eid='"+id+"'", con);

                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    dt_1 = new DataTable();
                    adapter.Fill(dt_1);
                    cmd.Dispose();
                    con.Close();

                }
                GridView1.DataSource = dt_1;
                GridView1.DataBind();
            }
            catch (Exception ex)
            {

            }
        }

        protected void datagrid_PageIndexChanging_2(object sender, GridViewPageEventArgs e)
        {
            try
            {
                FillGrid_1();
                GridView1.PageIndex = e.NewPageIndex;
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("Error" + ex);
            }
        }
        protected void datagrid_SelectedIndexChanged_2(object sender, EventArgs e)
        {

        }



        public void FillGrid_2()
        {
            try
            {
                string id = Session["eid"].ToString();
                if (dt_2 == null || dt_2.Rows.Count < 1)
                {

                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EMSConnectionString"].ConnectionString);
                    con.Open();
                    ///I'm using NorthWind Database

                    SqlCommand cmd = new SqlCommand("Select base, bonus, total from salary where Eid='"+id+"'", con);

                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    dt_2 = new DataTable();
                    adapter.Fill(dt_2);
                    cmd.Dispose();
                    con.Close();

                }
                GridView2.DataSource = dt_2;
                GridView2.DataBind();
            }
            catch (Exception ex)
            {

            }
        }

        protected void datagrid_PageIndexChanging_3(object sender, GridViewPageEventArgs e)
        {
            try
            {
                FillGrid_2();
                GridView2.PageIndex = e.NewPageIndex;
                GridView2.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("Error" + ex);
            }
        }

        protected void datagrid_SelectedIndexChanged_3(object sender, EventArgs e)
        {

        }



        public void FillGrid_3()
        {
            try
            {
                string id = Session["eid"].ToString();
                if (dt_3 == null || dt_3.Rows.Count < 1)
                {

                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EMSConnectionString"].ConnectionString);
                    con.Open();
                    ///I'm using NorthWind Database

                    SqlCommand cmd = new SqlCommand("Select startdate, enddate, reason, status from emp_leave where Eid='"+id+"'", con);

                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    dt_3 = new DataTable();
                    adapter.Fill(dt_3);
                    cmd.Dispose();
                    con.Close();

                }
                GridView3.DataSource = dt_3;
                GridView3.DataBind();
            }
            catch (Exception ex)
            {

            }
        }

        protected void datagrid_PageIndexChanging_4(object sender, GridViewPageEventArgs e)
        {
            try
            {
                FillGrid_3();
                GridView3.PageIndex = e.NewPageIndex;
                GridView3.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("Error" + ex);
            }
        }


        

        
        protected void datagrid_SelectedIndexChanged_4(object sender, EventArgs e)
        {

        }
    }
}