using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;

public partial class ClientDashBoard : Page
{
    protected void Page_Load(Object sender, EventArgs e)
    {
        uname.Text = (string)Session["username"];
        BindGrid();
        if (!IsPostBack)
        {
            Calendar1.Visible = false;
        }
        if (!IsPostBack)
        {
            Calendar2.Visible = false;
        }
       
    }

   

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        fromDate.Text = Calendar1.SelectedDate.ToString("yyyy/MM/dd");
        Calendar1.Visible = false;
    }

    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        if(e.Day.IsOtherMonth)
        {
            e.Day.IsSelectable = false;
        }
        if(e.Day.Date < DateTime.Now.Date)
        {
            e.Day.IsSelectable = false;
        }
    }




    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        toDate.Text = Calendar2.SelectedDate.ToString("yyyy/MM/dd");
        Calendar2.Visible = false;
    }

    protected void Calendar2_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.IsOtherMonth)
        {
            e.Day.IsSelectable = false;
        }
        if (e.Day.Date < DateTime.Now.Date)
        {
            e.Day.IsSelectable = false;
        }
    }

    void BindGrid()
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


    protected void pastbooking_Click(object sender, EventArgs e)
    {
        SqlConnection sqlConnection = new SqlConnection(@"server=Prashant\SQLEXPRESS;database=Hotel_Management_System;trusted_connection=yes");
        string sqlCommandText = $"select * from clientBooking where username = '{Session["username"]}'";
        SqlCommand sqlCommand = new SqlCommand(sqlCommandText, sqlConnection);
        SqlDataAdapter adapter = new SqlDataAdapter(sqlCommand);
        DataSet ds = new DataSet();
        adapter.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }

    protected void showbutton_Click(object sender, EventArgs e)
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

    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
        if (Calendar1.Visible)
        {
            Calendar1.Visible = false;
        }
        else
        {
            Calendar1.Visible = true;
        }
        Calendar1.Attributes.Add("style", "position:absolute");
    }

    protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
    {
        if (Calendar2.Visible)
        {
            Calendar2.Visible = false;
        }
        else
        {
            Calendar2.Visible = true;
        }
        Calendar2.Attributes.Add("style", "position:absolute");
    }

    protected void Select_button_Click1(object sender, EventArgs e)
    {
        int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
        roomType.Text = GridView2.Rows[rowind].Cells[1].Text;
        fare.Text = GridView2.Rows[rowind].Cells[2].Text;
        capacity.Text = GridView2.Rows[rowind].Cells[3].Text;
    }

    protected void Booking_Click(object sender, EventArgs e)
    {
        SqlConnection sqlConnection = new SqlConnection(@"server = Prashant\SQLEXPRESS ; database = Hotel_Management_System;trusted_connection=yes");
        sqlConnection.Open();
        string sqlCommandText = $"insert into clientBooking values('{uname.Text}','{roomType.Text}','{fare.Text}','{capacity.Text}','{fromDate.Text}','{toDate.Text}')";
        SqlCommand sqlCommand = new SqlCommand(sqlCommandText, sqlConnection);
        sqlCommand.ExecuteNonQuery();

        string sqlCommandText2 = $"delete from room where Room_Type='{roomType.Text}' and Fare='{fare.Text}' and Capacity='{capacity.Text}'";
        SqlCommand sqlCommand2 = new SqlCommand(sqlCommandText2, sqlConnection);
        sqlCommand2.ExecuteNonQuery();
    }
}