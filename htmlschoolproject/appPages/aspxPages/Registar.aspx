<%@ Page Title="Simply Delicious" Language="C#" MasterPageFile="~/Site1.Master"
    AutoEventWireup="true" CodeBehind="Registar.aspx.cs" Inherits="htmlschoolproject.Registar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="../css/Register.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div class="logo">
        <img src="../images/NewLogoColor.png" id="logo" alt="Logo" />
    </div>

    
    <div class="mainDiv">

        <img src="../images/BreadManLogoSingle.png" id="soloLogo" alt="Bread Man" />

        <div class="formArea">

            <div class="field">
                <h2>Email</h2>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="inputBox" placeholder="Enter Email" />
            </div>

            <div class="field">
                <h2>Password</h2>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="inputBox" placeholder="Enter Password" />
            </div>

            <div class="field">
                <h2>Name</h2>
                <asp:TextBox ID="txtName" runat="server" CssClass="inputBox" placeholder="Enter Name" />
            </div>

            <div class="field">
                <h2>Gender</h2>
                <div class="container">
                    <asp:RadioButton ID="rbMale" runat="server" GroupName="gender" Text="M" Checked="true" />
                    <asp:RadioButton ID="rbFemale" runat="server" GroupName="gender" Text="F" />
                </div>
            </div>

            <div class="actions">
                <asp:Button ID="btnSubmit" runat="server"
                    Text="Submit"
                    CssClass="btnMain"
                    OnClick="btnSubmit_Click"
                    OnClientClick="return validateRegister();" />

                <asp:Button ID="btnClear" runat="server"
                    Text="Clear"
                    CssClass="btnSmall"
                    OnClick="btnClear_Click"
                    CausesValidation="false"
                    UseSubmitBehavior="false" />
            </div>

            <asp:Label ID="lblMessage" runat="server" CssClass="msgText" />

        </div>
    </div>

    <script>
        function validateRegister() {
            var email = document.getElementById('<%= txtEmail.ClientID %>').value.trim();
            var pass = document.getElementById('<%= txtPassword.ClientID %>').value.trim();
            var name = document.getElementById('<%= txtName.ClientID %>').value.trim();

            if (email === "" || pass === "" || name === "") {
                alert("Please fill in email, password and name.");
                return false;
            }
            return true;
        }
    </script>

</asp:Content>
