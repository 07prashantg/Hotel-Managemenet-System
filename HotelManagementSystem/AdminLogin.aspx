<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>
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
        width: 480px;
        max-width: 400px;
        box-shadow: 0 0 40px rgba(0, 0, 0, 0.2);
        border-radius: var(--border-radius);
        background: #ffffff;
        opacity : 0.9;
    }

    .container,
    .form__input,
    .form__button {
        height: 180px;
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
        border-color: inherit;
        border-width: medium;
        font-weight: bold;
        font-size: 1.1rem;
        color: #ffffff;
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
        text-align:center;
        font-size:1.25rem;
    }

    
    
    </style>

    <div class="container">
    <form id="form1"  style="text-align: center; width:auto; height:auto; padding:20px; border:solid; ">
    <p class="form__title">
        Admin Login
        

    </p>
    <p class="para">
        UserName :
        <asp:TextBox ID="uname" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="uname" ErrorMessage="This Field is Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p class="para">
        Password :
        <asp:TextBox ID="password" runat="server" type="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="This Field is Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
        <p class="para">
    <asp:Button ID="Button1" class="form__button" runat="server" Text="Login" OnClick="Button1_Click" Height="29px" Width="137px" />
</p>

    </form>

        </div>
</asp:Content>

