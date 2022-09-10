using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class AdminLogin : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection sqlConnection = new SqlConnection(@"server = Prashant\SQLEXPRESS ; database = Hotel_Management_System; trusted_connection = yes");
        sqlConnection.Open();
        string sqlCommandText = $"select * from admin where username='{uname.Text}' and password='{password.Text}'";
        SqlCommand sqlCommand = new SqlCommand(sqlCommandText, sqlConnection);

        SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
        if (sqlDataReader.Read())
        { 
            Session["username"] = sqlDataReader["username"];
            Response.Redirect("AdminDashBoard.aspx");
        }


    }
}