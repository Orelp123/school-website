<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UpdateUserChange.aspx.cs" Inherits="htmlschoolproject.appPages.aspxPages.UpdateUserChange" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
                <title>
        Simply Delicious
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../css/UpdateUser.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0&icon_names=search" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mainDiv">

    <img src="../images/BreadManLogoSingle.png" id="soloLogo" />
    <%--<h2 id="emailH2">Email</h2>
    <div class="emailClass">
        <input type="text" id="emailId" name="emailId" placeholder="Enter Email" />
    </div>--%>

    <h2 id="newpassH2">Enter New Password</h2>
    <input type="password" id="newPasswordId" name="newPasswordId" placeholder="Enter Password" />

    <asp:Button ID="changeBtn" runat="server" Text="Change" OnClick="changeBtn_Click" />


    

    



</div>
</asp:Content>
