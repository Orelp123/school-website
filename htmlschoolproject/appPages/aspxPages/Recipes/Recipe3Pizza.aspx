<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Recipe3Pizza.aspx.cs" Inherits="htmlschoolproject.appPages.aspxPages.Recipes.Recipe3Pizza" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../css/RecipesCss.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<div class="center-wrapper">
    <div class="mainDiv">
        <div class="recipe-left">
            <h2 class="recipe-title">Homemade Pizza</h2>
            <img src="../../images/pizzaMan-removebg-preview.png" class="recipe-image" alt="Pizza" />
            <p>Experience a true taste of Italy with this traditional thin-crust masterpiece. The dough is hand-stretched to achieve a perfect balance of a chewy base and a blistered, crunchy "cornicione" (crust edge). Topped with a vibrant, tangy tomato sauce, creamy melted mozzarella, and finished with a drizzle of extra virgin olive oil, this recipe brings the authentic wood-fired pizzeria experience directly to your kitchen. It is a simple yet sophisticated dish that celebrates the harmony of fresh, high-quality ingredients..</p>
        </div>
        <div class="recipe-right">
             <h3>Ingredients</h3>
             <table class="ingredients-table">
                 <tr><td>Pizza Dough</td><td>1 ball</td></tr>
                 <tr><td>Tomato Sauce</td><td>1/2 cup</td></tr>
                 <tr><td>Mozzarella</td><td>150g</td></tr>
                 <tr><td>Fresh Basil</td><td>Handful</td></tr>
                 <tr><td>Olive Oil</td><td>1 tbsp</td></tr>
             </table>

             <h3>Instructions</h3>
             <ol>
                 <li><strong>Prep:</strong> Preheat your oven to its highest setting (250°C+).</li>
                 <li><strong>Shape:</strong> Stretch the dough on a floured surface until thin.</li>
                 <li><strong>Top:</strong> Spread sauce thinly, add cheese and a drizzle of oil.</li>
                 <li><strong>Bake:</strong> Cook for 8-10 minutes until the crust is charred and golden.</li>
             </ol>
             <br />
              <a href="<%= ResolveUrl("~/appPages/aspxPages/WelcomePage.aspx") %>" class="back-link">
    <i class="fa fa-arrow-left"></i> Back to Recipes
</a>
        </div>
    </div>
</div>
</asp:Content>

