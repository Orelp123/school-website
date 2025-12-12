<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registar.aspx.cs" Inherits="htmlschoolproject.Registar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <title>
        Simply Delicious
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../css/Register.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--<form action="Registar.aspx" runat="server" method="post">--%>




    <div class="logo">

        <img src="../images/NewLogoColor.png" id="logo" />

    </div>
    
    <div class="mainDiv">

        <img src="../images/BreadManLogoSingle.png" id="soloLogo" />
        <h2 id="emailH2">Email</h2>
        <div class="emailClass">
            <input type="text" id="emailId" name="emailId" placeholder="Enter Email" />
        </div>

        <h2 id="passH2">Password</h2>
        <input type="password" id="passwordId" name="passwordId" placeholder="Enter Password" />

        <h2 id="firstNameH2">Name</h2>
        <input type="text" id="firstNameId" name="firstNameId" placeholder="Enter Name" />

        <h2 id="genderH2">Gender</h2>

        <div class="container">
            <input type='radio' id='male' checked='checked' name='radio'>
            <label for='male'>M</label>
            <input type='radio' id='female' name='radio'>
            <label for='female'>F</label>
        </div>

        <input id="signUpBtn" type="submit" value="Submit" />
        <input id="clearBtn" type="button" value="Clear" />






    </div>

<%--</form>--%>
</asp:Content>
