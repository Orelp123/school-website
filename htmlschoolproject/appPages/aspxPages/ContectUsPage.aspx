<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ContectUsPage.aspx.cs" Inherits="htmlschoolproject.appPages.aspxPages.ContectUsPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/ContactUs.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="uc-wrapper">
        <div class="kitchen-heat-container">
            <div class="burner"></div>
            <div class="flame-wrap">
                <div class="flame"></div>
                <div class="flame"></div>
                <div class="flame"></div>
                <div class="flame"></div>
                <div class="flame"></div>
            </div>
        </div>
        
        <h2 class="uc-text">The Kitchen is Heating Up!</h2>
        <p class="uc-subtext">We're adding the secret sauce to this page. Hang tight!</p>
        
        <a href="<%= ResolveUrl("~/appPages/aspxPages/WelcomePage.aspx") %>" class="back-link">
            <i class="fa fa-arrow-left"></i> 
            <span>Back to Recipes</span>
        </a>
    </div>
</asp:Content>

