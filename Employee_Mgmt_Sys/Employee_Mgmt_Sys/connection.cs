using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Employee_Mgmt_Sys
{
    public class connection
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EmployeeMgtsysConnectionString"].ConnectionString);
       
    }
}