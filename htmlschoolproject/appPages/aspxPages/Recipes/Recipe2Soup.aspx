<%@ Page Title="Hearty Vegetable Soup" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Recipe2Soup.aspx.cs" Inherits="htmlschoolproject.appPages.aspxPages.Recipes.Recipe2Soup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../css/RecipesCss.css"/>
    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="center-wrapper">
    <div class="mainDiv">
        <div class="recipe-left">
            <h2 class="recipe-title">Hearty Soup</h2>
            <img src="../../images/soupMan-removebg-preview.png" alt="Bowl of Soup" class="recipe-image" />
            <p>This soul-warming soup is a vibrant medley of seasonal garden vegetables simmered in a rich, herb-infused broth. It’s the ultimate healthy comfort food for chilly afternoons, offering a deep, savory flavor profile that feels like a warm hug in a bowl. Each spoonful is packed with nutrients and a perfect balance of earthy root vegetables."</p>
        </div>

        <div class="recipe-right">
            <h3>Ingredients</h3>
            <table class="ingredients-table">
                <thead>
                    <tr>
                        <th>Ingredient</th>
                        <th>Amount</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Olive Oil</td>
                        <td>2 tbsp</td>
                    </tr>
                    <tr>
                        <td>Carrots (diced)</td>
                        <td>3 large</td>
                    </tr>
                    <tr>
                        <td>Potatoes (cubed)</td>
                        <td>2 medium</td>
                    </tr>
                    <tr>
                        <td>Vegetable Broth</td>
                        <td>1 Liter</td>
                    </tr>
                    <tr>
                        <td>Onion & Garlic</td>
                        <td>1 each</td>
                    </tr>
                    <tr>
                        <td>Salt & Pepper</td>
                        <td>To taste</td>
                    </tr>
                </tbody>
            </table>

            <h3>Instructions</h3>
            <ol style="color: #543A14; line-height: 1.6;">
                <li><strong>Sauté:</strong> Heat oil in a large pot. Add onions and garlic until translucent.</li>
                <li><strong>Simmer:</strong> Add carrots and potatoes. Pour in broth and bring to a boil.</li>
                <li><strong>Cook:</strong> Reduce heat and simmer for 20-25 minutes until veggies are tender.</li>
                <li><strong>Serve:</strong> Season with salt and pepper. Serve hot with crusty bread!</li>
            </ol>
            
            <br />
            <a href="<%= ResolveUrl("~/appPages/aspxPages/WelcomePage.aspx") %>" class="back-link">
                <i class="fa fa-arrow-left"></i> Back to Recipes
            </a>
            
            </div>
       
        </div>
    </div>
</asp:Content>