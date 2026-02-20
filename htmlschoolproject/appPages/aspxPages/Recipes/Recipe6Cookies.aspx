<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Recipe6Cookies.aspx.cs" Inherits="htmlschoolproject.appPages.aspxPages.Recipes.Recipe6Cookies" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link rel="stylesheet" href="../../css/RecipesCss.css"/>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="center-wrapper">
    <div class="mainDiv">
        <div class="recipe-left">
            <h2 class="recipe-title">Chocolate Chip Cookies</h2>
            <img src="../../images/cookieMan-removebg-preview.png" class="recipe-image" />
            <p>The search for the perfect cookie ends here. These treats boast buttery, golden-brown crisp edges and soft, chewy centers packed with premium melting chocolate chunks. A hint of vanilla and a touch of brown sugar create a deep caramel flavor that makes these cookies completely addictive and far superior to any store-bought version.</p>
        </div>
        <div class="recipe-right">
             <h3>Ingredients</h3>
             <table class="ingredients-table">
                 <tr><td>Flour</td><td>2 cups</td></tr>
                 <tr><td>Chocolate Chips</td><td>1 cup</td></tr>
                 <tr><td>Brown Sugar</td><td>1 cup</td></tr>
                 <tr><td>Butter (Soft)</td><td>1/2 cup</td></tr>
                 <tr><td>Vanilla Extract</td><td>1 tsp</td></tr>
             </table>
             <h3>Instructions</h3>
             <ol>
                 <li>Cream butter and sugar until fluffy.</li>
                 <li>Mix in vanilla and egg, then slowly add dry ingredients.</li>
                 <li>Stir in chocolate chips and bake at 190°C for 10-12 minutes.</li>
             </ol>
             <br />
             <a href="<%= ResolveUrl("~/appPages/aspxPages/WelcomePage.aspx") %>" class="back-link">
                <i class="fa fa-arrow-left"></i> Back to Recipes
            </a>
        </div>
    </div>
</div>
</asp:Content>
