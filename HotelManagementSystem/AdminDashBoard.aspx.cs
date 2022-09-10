using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;

public partial class AbminDashBoard : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void addroom_Click(object sender, EventArgs e)
    {
        SqlConnection sqlConnection = new SqlConnection(@"server = Prashant\SQLEXPRESS ; database = Hotel_Management_System;trusted_connection=yes");
        sqlConnection.Open();
        string sqlCommandText = $"insert into room values('{Room.SelectedItem.Text}','{fare.Text}','{capacity.Text}')";
        SqlCommand sqlCommand = new SqlCommand(sqlCommandText, sqlConnection);
        sqlCommand.ExecuteNonQuery();

        string sqlCommandText2 = $"insert into total_room values('{Room.SelectedItem.Text}','{fare.Text}','{capacity.Text}')";
        SqlCommand sqlCommand2 = new SqlCommand(sqlCommandText2, sqlConnection);
        sqlCommand2.ExecuteNonQuery();
    }




    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection sqlConnection = new SqlConnection(@"server=Prashant\SQLEXPRESS;database=Hotel_Management_System;trusted_connection=yes");
        string sqlCommandText = $"select * from client_details";
        SqlCommand sqlCommand = new SqlCommand(sqlCommandText, sqlConnection);
        SqlDataAdapter adapter = new SqlDataAdapter(sqlCommand);
        DataSet ds = new DataSet();
        adapter.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }


    protected void room2_Click(object sender, EventArgs e)
    {
        SqlConnection sqlConnection = new SqlConnection(@"server=Prashant\SQLEXPRESS;database=Hotel_Management_System;trusted_connection=yes");
        string sqlCommandText = $"select * from room";
        SqlCommand sqlCommand = new SqlCommand(sqlCommandText, sqlConnection);
        SqlDataAdapter adapter = new SqlDataAdapter(sqlCommand);
        DataSet ds = new DataSet();
        adapter.Fill(ds);
        GridView2.DataSource = ds;
        GridView2.DataBind();
    }

    protected void guest_Click(object sender, EventArgs e)
    {
        SqlConnection sqlConnection = new SqlConnection(@"server = Prashant\SQLEXPRESS ; database = Hotel_Management_System;trusted_connection=yes");
        sqlConnection.Open();
        string sqlCommandText = $"select * from guest";
        SqlCommand sqlCommand = new SqlCommand(sqlCommandText, sqlConnection);
        SqlDataAdapter adapter = new SqlDataAdapter(sqlCommand);
        DataSet ds = new DataSet();
        adapter.Fill(ds);
        GridView3.DataSource = ds;
        GridView3.DataBind();
    }



    protected void Totalroom_Click(object sender, EventArgs e)
    {
        SqlConnection sqlConnection = new SqlConnection(@"server=Prashant\SQLEXPRESS;database=Hotel_Management_System;trusted_connection=yes");
        string sqlCommandText = $"select * from total_room";
        SqlCommand sqlCommand = new SqlCommand(sqlCommandText, sqlConnection);
        SqlDataAdapter adapter = new SqlDataAdapter(sqlCommand);
        DataSet ds = new DataSet();
        adapter.Fill(ds);
        GridView4.DataSource = ds;
        GridView4.DataBind();
    }
}
