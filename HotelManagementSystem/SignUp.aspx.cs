using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class SignUp : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void signupbutton_Click(object sender, EventArgs e)
    {
        SqlConnection sqlConnection = new SqlConnection(@"server = Prashant\SQLEXPRESS ; database = Hotel_Management_System;trusted_connection=yes");
        sqlConnection.Open();
        string sqlCommandText = $"insert into client values('{uname.Text}','{password.Text}')";
        SqlCommand sqlCommand = new SqlCommand(sqlCommandText, sqlConnection);
        sqlCommand.ExecuteNonQuery();

        string sqlCommandText2 = $"insert into client_details values('{fname.Text}','{mobilenumber.Text}','{email.Text}','{uname.Text}','{idproof.Text}','{DropDownList1.SelectedItem.Text}')";
        SqlCommand sqlCommand2 = new SqlCommand(sqlCommandText2, sqlConnection);
        sqlCommand2.ExecuteNonQuery();
        Response.Redirect("ClientLogin.aspx");
    }
}