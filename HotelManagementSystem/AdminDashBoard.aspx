<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="AdminDashBoard.aspx.cs" Inherits="AbminDashBoard" %>

<asp:Content ID="Content1" ContentPlaceHolderID ="MainContent" runat="server">
    <form id="form1" >
        <h2 style="text-align:center">WELCOME!!!</h2>
    <p>
        <b>Fill Details To Add Room :</b></p>
    <p>
        RoomType :

        <asp:DropDownList ID="Room" runat="server">
           <asp:ListItem>AC</asp:ListItem>
           <asp:ListItem>NON-AC</asp:ListItem>
       </asp:DropDownList>
    </p>
    <p>
        Fare :
        <asp:TextBox ID="fare" runat="server" Height="27px" Width="127px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fare" ErrorMessage="This Field is Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p>
        Capacity :
        
    <asp:TextBox ID="capacity" runat="server" Height="27px" Width="59px"></asp:TextBox>
        
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="capacity" ErrorMessage="This Field is Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
        
    </p>
    <p>
&nbsp;<asp:Button ID="addroom" runat="server" OnClick="addroom_Click" Text="Add Room" style="background: #008CBA;  width: 100%; padding: 1rem 2rem; font-weight: bold; font-size: 1.1rem;" />
    </p>
        <p>
            <asp:Button ID="Totalroom" runat="server" OnClick="Totalroom_Click" Text="Room Details" style="background: #008CBA;  width: 100%; padding: 1rem 2rem; font-weight: bold; font-size: 1.1rem;" />
    </p>
        <p>
            <asp:GridView ID="GridView4" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Width="100%">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
    </p>
    <p>
        <asp:Button ID="room2" runat="server" OnClick="room2_Click" Text="Available Room" style="background: #008CBA;  width: 100%; padding: 1rem 2rem; font-weight: bold; font-size: 1.1rem;" />
    </p>
    <p>
        <asp:GridView ID="GridView2" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Width="100%">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
    </p>

    <asp:Button ID="clientdetails" runat="server" OnClick="Button1_Click" Text="Client Details"  style="background: #008CBA;  width: 100%; padding: 1rem 2rem; font-weight: bold; font-size: 1.1rem;"/>

    <br />

    <br />
    <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Width="100%">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>

    
        <br />
        <br />
        <asp:Button ID="guest" runat="server" OnClick="guest_Click" Text="Guest Details"  style="background: #008CBA;  width: 100%; padding: 1rem 2rem; font-weight: bold; font-size: 1.1rem;"/>
        <br />
        <asp:GridView ID="GridView3" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" Height="125px" Width="100%" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>

    
</form>


</asp:Content>

