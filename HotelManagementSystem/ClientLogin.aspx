<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="ClientLogin.aspx.cs" Inherits="ClientLogin" %>

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
        width: 487px;
        max-width: 400px;
        box-shadow: 0 0 40px rgba(0, 0, 0, 0.2);
        border-radius: var(--border-radius);
        background: #ffffff;
        opacity:0.9;
    }

    .container,
    .form__input,
    .form__button {
        height: 226px;
        }


    .form__title {
        font-size:2.5rem;
        margin-bottom: 2rem;
        text-align: center;
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

    .para{
        text-align:center;
        font-size:1.25rem;
    }

    
    
    </style>
    <div class="container">
    <form id="form1"  style="text-align: center; width:auto; height:auto; padding:20px; border:solid; ">
        <p class="form__title">
        Client Login
    </p>

    <p class="para">
        <b>UserName :</b>
        <asp:TextBox ID="uname" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="uname" ErrorMessage="This Field is Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>

    <p class="para">
        <b>Password :</b>
        <asp:TextBox ID="password" runat="server" type="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="This Field is Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>

    <br />
        <p class="para">
    <asp:Button ID="Button1" runat="server" class="form__button" OnClick="Button1_Click" Text="Login" Height="28px" Width="120px" />
            </p>
</form>
        </div>

</asp:Content>


