<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DeleteUser.aspx.cs" Inherits="htmlschoolproject.appPages.aspxPages.DeleteUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

                <title>
        Simply Delicious
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../css/loginPage.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0&icon_names=search" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="logo">
         <%=message %> 
    <img src="../images/NewLogoColor.png" id="logo" />

        


   </div>

   <div style="top:50%;">
       <asp:Literal ID="MessageLiteral" runat="server" />
   </div>
    <div class="mainDiv">

    <img src="../images/BreadManLogoSingle.png" id="soloLogo" />
    <h2 id="emailH2">Email</h2>
    <div class="emailClass">
        <input type="text" id="emailId" name="emailId" placeholder="Enter Email" />
    </div>

    <h2 id="passH2">Password</h2>
    <input type="password" id="passwordId" name="passwordId" placeholder="Enter Password" />

    <input id="loginBtn" type="submit" value="Delete" />

    <p id="myP">dont have an acount yet? </p>
    <p id="acountAsk"><a href="signUpPage.html"> click here to sign up</a></p>

    



</div>
</asp:Content>
