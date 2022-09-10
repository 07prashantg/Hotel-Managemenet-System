<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master"  AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

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
        width: 520px;
        max-width: 400px;
        box-shadow: 0 0 40px rgba(0, 0, 0, 0.2);
        border-radius: var(--border-radius);
        background: #ffffff;
        opacity : 0.9;
    }

    .container,
    .form__input,
    .form__button {
        height: 401px;
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
        width: 50%;
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
    
        .auto-style1 {
            width: 721px;
            max-width: 400px;
            box-shadow: 0 0 40px rgba(0, 0, 0, 0.2);
            border-radius: var(--border-radius);
            opacity: 0.9;
            height: 460px;
            margin-left: auto;
            margin-right: auto;
            padding-left: 15px;
            padding-right: 15px;
            background: #ffffff;
        }
    
    </style>

    <div class="auto-style1">

<form id="form1" style="text-align: center; width:auto; height:auto; padding:20px; border:solid;">
    <p class="form__title" >
        <h2 style="text-align:center">SignUp</h2></p>
    <br />
    <p class="para">
        <b>Full Name :</b>
        <asp:TextBox ID="fname" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="fname" ErrorMessage="This Field is Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p class="para">
        <b>Mobile Number :</b>
        <asp:TextBox ID="mobilenumber" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="mobilenumber" ErrorMessage="Enter Valid Number" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="mobilenumber" ErrorMessage="Enter MobileNumber" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p class="para">
        <b>Email Address :</b>
        <asp:TextBox ID="email" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Enter Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="email" ErrorMessage="Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p class="para">
        <b>UserName :</b>
        <asp:TextBox ID="uname" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="uname" ErrorMessage="Enter the UserName" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p class="para">
        <b>Password :</b>
        <asp:TextBox ID="password" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p class="para">
        <b>Confirm Password :</b>
        <asp:TextBox ID="confirm" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="confirm" ErrorMessage="This Field is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="confirm" ErrorMessage="Password Should be Same" ForeColor="Red"></asp:CompareValidator>
    </p>
    <p class="para">
        <b>Id Proof :</b>
        <asp:TextBox ID="idproof" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="idproof" ErrorMessage="This Fields id Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p class="para">
        <b>GENDER :</b>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p class="para2">
        <asp:Button ID="signupbutton" class="form__button" runat="server" OnClick="signupbutton_Click" Text="SignUp" Height="35px" Width="265px" />
    </p>

</form>
        </div>


</asp:Content>
