<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="HotelManagementSystem.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID ="MainContent" runat="server">
    <html>
    <head>
    </head>
    <style>
            body {
                background-image: url("./images/background4.jpg");
        --color-primary: #009579;
        --color-primary-dark: #007f67;
        --color-secondary: #252c6a;
        --color-error: #cc3333;
        --color-success: #4bb544;
        --border-radius: 4px;

        margin: 0;
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 18px;
        
        background-size: cover;
        
    
    }

    .container {
        width: 585px;
        max-width: 1000px;
        box-shadow: 0 0 40px rgba(0, 0, 0, 0.2);
        border-radius: var(--border-radius);
        background: #ffffff;
        opacity:0.9;
    }

    .container,
    .form__input,
    .form__button {
        font: 500 1rem 'Quicksand', sans-serif;
    }


    .form--hidden {
        display: none;
    }

    .form > *:first-child {
        margin-top: 0;
    }

    .form > *:last-child {
        margin-bottom: 0;
    }

    .form__title {
        margin-bottom: 2rem;
        text-align: center;
    }

    .form__message {
        text-align: center;
        margin-bottom: 1rem;
    }

    .form__message--success {
        color: var(--color-success);
    }

    .form__message--error {
        color: var(--color-error);
    }

    .form__input-group {
        margin-bottom: 1rem;
    }

    .form__input {
        display: block;
        width: 50%;
        padding: 0.75rem;
        box-sizing: border-box;
        border-radius: var(--border-radius);
        border: 1px solid #dddddd;
        outline: none;
        background: #eeeeee;
        transition: background 0.2s, border-color 0.2s;
    }

    .form__input:focus {
        border-color: var(--color-primary);
        background: #ffffff;
    }

    .form__input--error {
        color: var(--color-error);
        border-color: var(--color-error);
    }

    .form__input-error-message {
        margin-top: 0.5rem;
        font-size: 0.85rem;
        color: var(--color-error);
    }

    .form__button {
        width: 100%;
        padding: 1rem 2rem;
        font-weight: bold;
        font-size: 1.1rem;
        color: #ffffff;
        border: none;
        border-radius: var(--border-radius);
        outline: none;
        cursor: pointer;
        background: var(--color-primary);
    }

    .form__button:hover {
        background: var(--color-primary-dark);
    }

    .form__button:active {
        transform: scale(0.98);
    }

    .form__text {
        text-align: center;
    }

    .form__link {
        color: var(--color-secondary);
        text-decoration: none;
        cursor: pointer;
    }

    .form__link:hover {
        text-decoration: underline;
    }

    .btn1{
        padding:2px;
        text-align:center;
    }

    .searchrooms{
        padding:2px;
        text-align:center;
    }

    .textboxx{
        padding: 0.75rem;
        border-radius: var(--border-radius);
        border: 1px solid #dddddd;
        outline: none;
        background: #eeeeee;
        transition: background 0.2s, border-color 0.2s;
    }

    .para1,.para2{
        text-align:center;
        align-content:center;
        font-size:1.25rem;
            height: 30px;
            width: 512px;
        }

    .roomclass{
        text-align:center;
        font-size:1.25rem;
    }

    
    
    </style>
    <body>
        <div class="container">
            <form class= "form1" id="login">
                <div class ="welcome form__title">
                <h1>Welcome</h1></div>
                <br />
                <br />
    
       <div class="btn1"><asp:Button class="form__button" ID="Login" runat="server" Text="Login" OnClick="Login_Click" />
        </div> 
       <div class="btn1"><asp:Button class="form__button" ID="SignUp" runat="server" Text="SignUp"  OnClick="SignUp_Click"/>
        </div>
       <div class="btn1"><asp:Button class="form__button" ID="Guest" runat="server" Text="Guest" OnClick="Guest_Click" />
        </div>
    <div>
        <br/>
    <div class="searchrooms">
        <p><h4>
            Search Rooms :</h4></p>
    </div>
    <p class="para1"> 
        <b>From</b>
     <asp:TextBox ID="TextBox1" class="textboxx" runat="server" Width="155px" style='margin-left:5%' Height="19px"></asp:TextBox>
     <asp:ImageButton ID="ImageButton1" runat="server" Height="24px" ImageUrl="~/Images/Calender.jpg" OnClick="ImageButton1_Click" Width="28px" style='margin-right:16px'/>
        
         <b>To</b>
            <asp:TextBox ID="TextBox2" class="textboxx" runat="server" Width="155px" style='margin-left:5%' Height="19px"></asp:TextBox>
   
        <asp:ImageButton ID="ImageButton2" runat="server" Height="28px" ImageUrl="~/Images/Calender.jpg" OnClick="ImageButton2_Click" Width="31px" />
            </p>

   <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" OnSelectionChanged="Calendar1_SelectionChanged" Width="200px" OnDayRender="Calendar1_DayRender" CellPadding="4" DayNameFormat="Shortest">
        <DayHeaderStyle Font-Bold="True" Font-Size="7pt" BackColor="#CCCCCC" />
        <NextPrevStyle VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#808080" />
        <SelectedDayStyle BackColor="#666666" ForeColor="White" Font-Bold="True" />
        <SelectorStyle BackColor="#CCCCCC" />
        <TitleStyle BackColor="#999999" Font-Bold="True" BorderColor="Black" />
        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
        <WeekendDayStyle BackColor="#FFFFCC" />
     </asp:Calendar>

      <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="#999999" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" OnSelectionChanged="Calendar2_SelectionChanged" Width="200px" OnDayRender="Calendar2_DayRender" CellPadding="4" DayNameFormat="Shortest">
        <DayHeaderStyle Font-Bold="True" Font-Size="7pt" BackColor="#CCCCCC" />
        <NextPrevStyle VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#808080" />
        <SelectedDayStyle BackColor="#666666" ForeColor="White" Font-Bold="True" />
          <SelectorStyle BackColor="#CCCCCC" />
        <TitleStyle BackColor="#999999" Font-Bold="True" BorderColor="Black" />
        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
          <WeekendDayStyle BackColor="#FFFFCC" />
      </asp:Calendar>
    &nbsp;</div>
    <br />

    <p class="roomclass"><b>Room :</b>   
       <asp:DropDownList ID="Room" runat="server">
           <asp:ListItem>AC</asp:ListItem>
           <asp:ListItem>NON-AC</asp:ListItem>
       </asp:DropDownList>
       <br />
                </p>
       <div class="btn1"><asp:Button ID="Search" class="form__button" runat="server" Text="Search" OnClick="Search_Click" />
           </div>
       <br />
       
   
       <asp:GridView ID="roomData" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Height="152px" Width="312px">
           <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
           <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
           <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
           <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
           <SortedAscendingCellStyle BackColor="#F7F7F7" />
           <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
           <SortedDescendingCellStyle BackColor="#E5E5E5" />
           <SortedDescendingHeaderStyle BackColor="#242121" />
       </asp:GridView>
       
   
       <br />
       
   
         </form>
       </div>
    </body>
</html>


</asp:Content>
