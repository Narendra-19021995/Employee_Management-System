using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;

namespace Employee_Mgmt_Sys.Administrator
{
    public partial class project_status : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EMSConnectionString"].ToString());

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
            if (!IsPostBack)
            {
                BindGridData();
            }

        }
        protected void BindGridData()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from project", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gvdetails.DataSource = dt;
            gvdetails.DataBind();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update project set mark=@mark where pid=@Pid", con);
            cmd.Parameters.AddWithValue("@mark", txtDesg.Text);
            cmd.Parameters.AddWithValue("@Pid", Convert.ToInt32(lblID.Text));
            cmd.ExecuteNonQuery();
            con.Close();
            lblresult.Text = lblusername.Text + " Details Updated Successfully";
            lblresult.ForeColor = Color.Green;
            BindGridData();
            salary();
        }

        protected void imgbtn_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton btndetails = sender as ImageButton;
            GridViewRow gvrow = (GridViewRow)btndetails.NamingContainer;
            lblID.Text = gvdetails.DataKeys[gvrow.RowIndex].Value.ToString();
            lblusername.Text = gvrow.Cells[0].Text;
            txtfname.Text = gvrow.Cells[1].Text;
            txtlname.Text = gvrow.Cells[2].Text;
            txtCity.Text = gvrow.Cells[3].Text;
            if (gvrow.Cells[4].Text.Trim() != "&nbsp;")
            {
                txtDesg.Text = gvrow.Cells[4].Text.Trim();
            }
            else
            {
                txtDesg.Text = gvrow.Cells[4].Text = "";
            }
            //txtDesg.Text = gvrow.Cells[4].Text;
            this.ModalPopupExtender1.Show();
        }

        protected void salary() {
            string eid = lblusername.Text;
           
           
            //con.Open();
            SqlCommand cmd = new SqlCommand("select Salary from emp_info where Eid = '"+eid+"'", con);
            SqlDataReader sdr = cmd.ExecuteReader();
            while (sdr.Read())
            {
                string s = sdr.GetValue(0).ToString();
                Session["salary"]= Convert.ToInt16(s);

            }
            
            con.Close();
            salary_insert();
        }
        protected void salary_insert() {
            int total;
            var todate = DateTime.Now.Date;
            string date = todate.ToString("dd/MM/yyyy");
            string eid = lblusername.Text;
            string m = txtDesg.Text;
            int mark = Convert.ToInt16(m);
            string salary = Session["salary"].ToString();
            int sa = Convert.ToInt16(salary);
            total = sa + (sa * mark) / 100;
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "updatesal";
            cmd.Parameters.Add("@Eid", SqlDbType.VarChar).Value = eid.Trim();
            cmd.Parameters.Add("@bonus", SqlDbType.VarChar).Value = mark;
            cmd.Parameters.Add("@total", SqlDbType.VarChar).Value = total;
            cmd.Parameters.Add("@date", SqlDbType.VarChar).Value = date.Trim();
            cmd.Connection = con;
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally {
                con.Close();
                con.Dispose();
            }

            /****Store Data in Rank*********/
            int point=0;
            point = point + mark;
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["EMSConnectionString"].ToString());
            SqlCommand com = new SqlCommand();
            com.CommandType = CommandType.StoredProcedure;
            com.CommandText = "pointin";
            com.Parameters.Add("@Eid", SqlDbType.VarChar).Value = eid.Trim();
            com.Parameters.Add("@point", SqlDbType.VarChar).Value = mark;
            com.Connection = conn;
            try
            {
                conn.Open();
                com.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                conn.Close();
                conn.Dispose();
            }

        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Remove("Username");
            Response.Redirect("../index.aspx");
        }
    }
}