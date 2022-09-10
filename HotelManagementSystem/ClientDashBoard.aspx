<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="ClientDashBoard.aspx.cs" Inherits="ClientDashBoard" %>

<asp:Content ID="Content1" ContentPlaceHolderID ="MainContent" runat="server">
    
<html>
    
        <style type="text/css">
            .auto-style1 {
                width: 100%;
            }
            .auto-style2 {
                height: 26px;
                align:center;
            }
            .auto-style3 {
                width: 545px;
            }
            .auto-style4 {
                height: 26px;
            }
             
        </style>


<body>
    

    <form id="form1" >

       <h2 style="text-align:center">WELCOME!!!</h2>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="3" style="text-align:center"><b>Complete the Details</b></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3"><b>UserName</b></td>
                <td>
                    <asp:Label ID="uname" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3"><b>Room Type</b></td>
                <td>
                    <asp:TextBox ID="roomType" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="roomType" ErrorMessage="Room Type is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3"><b>Fare</b></td>
                <td>
                    <asp:TextBox ID="fare" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="fare" ErrorMessage="Fare is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3"><b>Capacity</b></td>
                <td>
                    <asp:TextBox ID="capacity" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="capacity" ErrorMessage="Capacity is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3"><b>From Date</b></td>
                <td>
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
                <td>&nbsp;</td>
                <td class="auto-style3"><b>To Date</b></td>
                <td>
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
            <tr>
                <td></td>
                
            </tr>
            
            <tr>
                <td colspan="3" style="text-align:center">
                    <asp:Button ID="Booking" runat="server" Text="Book Now" OnClick="Booking_Click" style="background: #008CBA;  width: 100%; padding: 1rem 2rem; font-weight: bold; font-size: 1.1rem;" />
                </td>
            </tr>
             <tr>
                <td> </td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="3">
                    <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="152px" Width="100%">
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
                <td> </td>
            </tr>
        </table>
        <br />
        <br />

       
        <p>
        Past Booking :
       
            <asp:Button ID="pastbooking" runat="server" OnClick="pastbooking_Click" Text="Get Data"  style="background: #008CBA;  width: 100%; padding: 1rem 2rem; font-weight: bold; font-size: 1.1rem;"/>
       
    </p>
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="100%">
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>

</form>
</body>

</html>

</asp:Content>

