using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace Employee_Mgmt_Sys.EMP
{
    public partial class Myproject : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["EMSConnectionString"].ConnectionString;
        SqlConnection con;
        SqlDataAdapter adapt;
        DataTable dt;
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                Username.Text = "Welcome " + Session["Username"].ToString();
                id = Session["eid"].ToString();
            }
            else
            {
                Response.Redirect("../index.aspx");
            }
            if (!IsPostBack)
            {
                ShowData();
            }
           
        }
        protected void ShowData()
        {
            dt = new DataTable();
            con = new SqlConnection(cs);
            con.Open();
            adapt = new SqlDataAdapter("Select * from project where Eid = '"+ id +"'", con);
            adapt.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            con.Close();
        }
        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Remove("Username");
            Response.Redirect("../index.aspx");
        }

        protected void GridView1_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            //NewEditIndex property used to determine the index of the row being edited.  
            GridView1.EditIndex = e.NewEditIndex;
            ShowData();
        }
        protected void GridView1_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
        {
            var todate = DateTime.Now.Date;
            string date = todate.ToString("dd/MM/yyyy");
            //Response.Write(date);
            //Finding the controls from Gridview for the row which is going to update  
            Label id = GridView1.Rows[e.RowIndex].FindControl("lbl_ID") as Label;
            //TextBox name = GridView1.Rows[e.RowIndex].FindControl("txt_Name") as TextBox;
            //TextBox city = GridView1.Rows[e.RowIndex].FindControl("txt_City") as TextBox;
            con = new SqlConnection(cs);
            con.Open();
            //updating the record  
            SqlCommand cmd = new SqlCommand("Update project set subdate = '"+ date +"', status='Submited' where pid=" + Convert.ToInt32(id.Text), con);
            cmd.ExecuteNonQuery();
            con.Close();
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            GridView1.EditIndex = -1;
            //Call ShowData method for displaying updated data  
            ShowData();
        }
        protected void GridView1_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
        {
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            GridView1.EditIndex = -1;
            ShowData(); 
        }
    }
}