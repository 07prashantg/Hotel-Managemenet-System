<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID ="MainContent" runat="server">
<html>
    <head>
        <style>
            body{
                background-color : rgba(27, 31, 34, 0.8);
            }
            h1{
                font-size:2.1rem;
                margin-top:50px;
                letter-spacing:0.3rem;
                text-align:center;
                color :white;
            }
            .maindiv{
                width : 70%;
                height : 400px;
                position:absolute;
                left : 50%;
                top : 50%;
                background-size: 100% 100%;
                transform: translate(-50%,-50%);
                box-shadow:1px 2px 10px 5px white;
                animation : slider 9s infinite linear;
            }
            @keyframes slider{
                0%{ background-image:url("./images/view1.jpg");}
                35%{ background-image:url("./images/view2.jpg");}
                75%{ background-image:url("./images/view3.jpg");}
            }
        </style>
    </head>
    <body>
        <div>
            <h1>Explore our Hotel</h1>
            <div class ="maindiv">

            </div>
        </div>
    </body>
</html>

</asp:Content>

