<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Guest.aspx.cs" Inherits="Guest" %>

<asp:Content ID="Content1" ContentPlaceHolderID ="MainContent" runat="server">
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
        width: 700px;
        max-width: 800px;
        height:100%;
        box-shadow: 0 0 40px rgba(0, 0, 0, 0.2);
        border-radius: var(--border-radius);
        background: #ffffff;
        opacity:0.9;
        margin-top:500px;
    }

    .container,
    .form__input,
    .form__button {
        height: 500px;
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
        font-size:2.5rem;
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
        border-style: none;
            opacity:1.0;
            border-width: medium;
            font-weight: bold;
            font-size: 1.25rem;
            width:200px;
            border-radius: var(--border-radius);
            outline: none;
            cursor: pointer;
            
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
        font-size:1.25rem;
    }

    .roomclass{
        text-align:center;
        font-size:1.25rem;
    }

    .para{
        text-align:left;
        font-size:1.25rem;
    }
    .btnopacity{
        opacity:100%;
        border-style: none;
            border-color: black;
            height:900px;
            border-width: medium;
            font-weight: bold;
            font-size: 1.1rem;
            color: #ffffff;
            border-radius: var(--border-radius);
            outline: none;
            cursor: pointer;
    }

    
    
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            width: 100px;
        }
        .auto-style4 {
            height: 26px;
            width: 100px;
        }
        .nav-justified{
            border-collapse:separate;
            border-spacing: 0 1em;
        }

    
    
        .auto-style5 {
            width: 700px;
            max-width: 800px;
            box-shadow: 0 0 40px rgba(0, 0, 0, 0.2);
            border-radius: var(--border-radius);
            opacity: 0.9;
            
            margin-left: auto;
            margin-right: auto;
            padding-left: 15px;
            padding-right: 15px;
            background: #ffffff;
        }

    
    
        .auto-style6 {
            width: 762px;
        }
        .auto-style7 {
            height: 26px;
            width: 762px;
        }
        .book_button{
            align-self:center;
            position:absolute;
            justify-content:center;
            width:50%;
        }

    
    
    </style>
<div class="auto-style5 container" style="width: 737px; height: 986px" >
    <form id="form1" style="text-align: center; width:auto; height:auto; padding:20px; border:solid;">
        <table class="nav-justified">
            <tr>
                <td colspan="2" style="text-align:center"><h2>WELCOME!!!</h2></td>
            </tr>
           
            <tr>
                <td class="auto-style2">Full Name</td>
                <td class="auto-style6">
                    <asp:TextBox ID="fname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fname" ErrorMessage="Full Name is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email</td>
                <td class="auto-style6">
                    <asp:TextBox ID="email" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" ErrorMessage="Email is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Enter is Invalid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Mobile</td>
                <td class="auto-style6">
                    <asp:TextBox ID="mobile" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="mobile" ErrorMessage="Mobile Number is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="mobile" ErrorMessage="Enter valid Number" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Id Proof</td>
                <td class="auto-style6">
                    <asp:TextBox ID="idproof" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="idproof" ErrorMessage="IdProof is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Gender</td>
                <td class="auto-style7">
                    <asp:DropDownList ID="gender" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Room</td>
                <td class="auto-style7">
                    <asp:TextBox ID="roomtype" runat="server"></asp:TextBox>
                </td>
            
            </tr>
            <tr>
                <td class="auto-style2">Fare</td>
                <td class="auto-style6">
                    <asp:TextBox ID="fare" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Capacity</td>
                <td class="auto-style6">
                    <asp:TextBox ID="capacity" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="496px">
                        <AlternatingRowStyle BackColor="White" />
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                   <asp:LinkButton ID="Select_button" runat="server" OnClick="Select_button_Click1">Select</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </td>
                </tr>
            <tr>
                <td class="auto-style4">From Date</td>
                <td class="auto-style7">
                    <asp:TextBox ID="fromDate" runat="server"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="25px" ImageUrl="~/Images/Calender.jpg" OnClick="ImageButton1_Click1" Width="29px" />
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" OnSelectionChanged="Calendar1_SelectionChanged" NextPrevFormat="ShortMonth" Width="330px" OnDayRender="Calendar1_DayRender">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                        <DayStyle BackColor="#CCCCCC" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                        <TodayDayStyle BackColor="#999999" ForeColor="White" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">To Date</td>
                <td class="auto-style7">
                    <asp:TextBox ID="toDate" runat="server"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="23px" ImageUrl="~/Images/Calender.jpg" OnClick="ImageButton2_Click1" Width="30px" />
                    <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" OnSelectionChanged="Calendar2_SelectionChanged" NextPrevFormat="ShortMonth" Width="330px" OnDayRender="Calendar2_DayRender">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                        <DayStyle BackColor="#CCCCCC" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                        <TodayDayStyle BackColor="#999999" ForeColor="White" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr class="auto-style1" style="text-align:center" >
                <td >
                    <div class="book_button">
                    <asp:Button ID="Button1"  class="form__button" runat="server" Text="Book Now" OnClick="Booking_Click" Height="26px" Width="165px"  style="text-align:center"/>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style1" style="text-align:center">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
  
    </form>
</div>

</asp:Content>

