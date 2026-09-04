<%@ Page Title="Simply Delicious" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="Login.aspx.cs" Inherits="htmlschoolproject.appPages.aspxPages.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="../css/loginPage.css?v=1" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
     <% if (!string.IsNullOrEmpty(msg)) { %>
    <div id="loginMessage" class="login-msg">
        <%= msg %>
    </div>
   

    <script type="text/javascript">
        
        setTimeout(function () {
            var msgDiv = document.getElementById('loginMessage');
            if (msgDiv) {
                msgDiv.style.opacity = '0';
                msgDiv.style.transform = 'translateY(-10px)';
                msgDiv.style.transition = 'all 0.6s ease';
                
                
                setTimeout(function () {
                    msgDiv.style.display = 'none';
                }, 600);
            }
        }, 3000); 
    </script>
       <% } %>
    
    <div class="logo">
       
        <img src="../images/NewLogoColor.png" id="logo" alt="Logo" />
    </div>

    <div class="messageArea">
        <asp:Literal ID="MessageLiteral" runat="server" />
        
    </div>

    <div class="mainDiv">

        <img src="../images/BreadManLogoSingle.png" id="soloLogo" alt="Bread Man" />

        

        <div class="formArea">

            <div class="field">
                <h2 id="emailH2">Email</h2>
                <input type="text" id="emailId" name="emailId" placeholder="Enter Email" />
            </div>

            <div class="field">
                <h2 id="passH2">Password</h2>
                <input type="password" id="passwordId" name="passwordId" placeholder="Enter Password" />
            </div>

            <div class="actions">
                <input id="loginBtn" type="submit" value="Login" />
            </div>

            <p id="myP">dont have an acount yet?</p>
            <p id="acountAsk"><a href="Registar.aspx">click here to sign up</a></p>

        </div>

    </div>

</asp:Content>
