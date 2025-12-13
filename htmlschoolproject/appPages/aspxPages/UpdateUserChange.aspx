<%@ Page Title="Simply Delicious" Language="C#" MasterPageFile="~/Site1.Master"
    AutoEventWireup="true" CodeBehind="UpdateUserChange.aspx.cs"
    Inherits="htmlschoolproject.appPages.aspxPages.UpdateUserChange" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="../css/UpdateUser.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div class="logo">
        <img src="../images/NewLogoColor.png" id="logo" alt="Logo" />
    </div>

    
    <div class="pageWrapper">

        <div class="mainDiv">

            <img src="../images/BreadManLogoSingle.png" id="soloLogo" alt="Bread Man" />

            <div class="formArea">


                <div class="field">
                    <h2 id="oldpassH2">Old Password</h2>
                    <input type="password" id="oldPasswordId" name="oldPasswordId" placeholder="Enter Old Password" />
                </div>

                <div class="field">
                    <h2 id="newpassH2">New Password</h2>
                    <input type="password" id="newPasswordId" name="newPasswordId" placeholder="Enter New Password" />
                </div>

                <div class="actions">
                    <input id="changeBtn" type="submit" value="Change" />
                </div>

            </div>

        </div>

    </div>

</asp:Content>
