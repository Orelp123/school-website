<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeBehind="Recipe1Pancake.aspx.cs" Inherits="htmlschoolproject.appPages.aspxPages.Recipes.Recipe1Pancake" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../css/RecipesCss.css"/>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="center-wrapper">
        <div class="mainDiv">
            <div class="recipe-left">
                <h2 class="recipe-title">Classic Fluffy Pancakes</h2>
                
                <div class="recipe-image-wrapper">
                    <img src="../../images/PanCakeMan-removebg-preview.png" alt="Pancake Man" class="recipe-image" />
                </div>

                <div class="about-section">
                    <h3 class="section-title">About this Recipe</h3>
                    <p>
                        Whether you call them hotcakes, griddle cakes, or flapjacks, the pancake is a 
                        universal comfort food. This recipe delivers a simple, flat cake made from a 
                        starch-based batter cooked on a hot griddle.
                    </p>
                </div>
            </div>

            <div class="recipe-right">
                <h3 class="section-title">Ingredients</h3>
                <table class="ingredients-table">
                    <thead>
                        <tr>
                            <th>Ingredient</th>
                            <th>Quantity</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr><td>All-purpose flour</td><td>1 ½ cups</td></tr>
                        <tr><td>Baking powder</td><td>3 ½ tsp</td></tr>
                        <tr><td>Salt</td><td>1 tsp</td></tr>
                        <tr><td>White sugar</td><td>1 tbsp</td></tr>
                        <tr><td>Milk</td><td>1 ¼ cups</td></tr>
                        <tr><td>Egg</td><td>1 large</td></tr>
                        <tr><td>Butter (melted)</td><td>3 tbsp</td></tr>
                    </tbody>
                </table>

                <h3 class="section-title">Instructions</h3>
                <ol class="instructions-list">
                    <li><strong>Mix Dry:</strong> Sift flour, baking powder, salt, and sugar.</li>
                    <li><strong>Mix Wet:</strong> Add milk, egg, and butter. Mix until smooth.</li>
                    <li><strong>Cook:</strong> Heat a greased griddle over medium-high.</li>
                    <li><strong>Flip:</strong> Cook until bubbles form, then flip.</li>
                </ol>

                <br />
                <a href="<%= ResolveUrl("~/appPages/aspxPages/WelcomePage.aspx") %>" class="back-link">
                    <i class="fa fa-arrow-left"></i> Back to Recipes
                </a>
            </div>
        </div>
    </div>
</asp:Content>