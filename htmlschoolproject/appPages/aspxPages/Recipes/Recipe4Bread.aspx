<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Recipe4Bread.aspx.cs" Inherits="htmlschoolproject.appPages.aspxPages.Recipes.Recipe4Bread" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link rel="stylesheet" href="../../css/RecipesCss.css"/>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="center-wrapper">
    <div class="mainDiv">
        <div class="recipe-left">
            <h2 class="recipe-title">Classic Bread</h2>
            <img src="../../images/breadMan-removebg-preview.png" class="recipe-image" alt="Fresh Bread" />
            <p>Master the timeless art of baking with this foolproof artisan loaf. Featuring a shatteringly crisp golden crust and a light, airy interior, this bread is designed for dipping into balsamic oil or slathering with fresh butter. Made with no preservatives, it brings the irresistible aroma of a professional French bakery right into your home kitchen.</p>
        </div>
        <div class="recipe-right">
             <h3>Ingredients</h3>
             <table class="ingredients-table">
                 <tr><td>All-Purpose Flour</td><td>500g</td></tr>
                 <tr><td>Warm Water</td><td>350ml</td></tr>
                 <tr><td>Dry Yeast</td><td>7g (1 packet)</td></tr>
                 <tr><td>Salt</td><td>2 tsp</td></tr>
                 <tr><td>Sugar</td><td>1 tsp</td></tr>
             </table>

             <h3>Instructions</h3>
             <ol>
                 <li><strong>Activate:</strong> Mix warm water, sugar, and yeast. Let it sit for 10 mins until foamy.</li>
                 <li><strong>Mix:</strong> Combine flour and salt. Pour in the yeast mixture and stir until a dough forms.</li>
                 <li><strong>Knead:</strong> Knead the dough for 10 mins until smooth. Let it rise in a warm place for 1 hour.</li>
                 <li><strong>Bake:</strong> Shape the dough and bake at 200°C for 30-35 minutes until golden brown.</li>
             </ol>
             <br />
                  <a href="<%= ResolveUrl("~/appPages/aspxPages/WelcomePage.aspx") %>" class="back-link" >
                    <i class="fa fa-arrow-left"></i> Back to Recipes
                </a>
        </div>
    </div>
</div>
</asp:Content>