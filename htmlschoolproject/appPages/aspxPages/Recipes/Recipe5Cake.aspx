<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Recipe5Cake.aspx.cs" Inherits="htmlschoolproject.appPages.aspxPages.Recipes.Recipe5Cake" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link rel="stylesheet" href="../../css/RecipesCss.css"/>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="center-wrapper">
    <div class="mainDiv">
        <div class="recipe-left">
            <h2 class="recipe-title">Chocolate Brownie Cake</h2>
            <img src="../../images/Gemini_Generated_Image_wly48wly48wly48w-removebg-preview.png" class="recipe-image" />
            <p>This is where a fudgy, dense brownie meets the elegance of a sophisticated layer cake. It features an intense dark chocolate base with a moist crumb that melts instantly on the tongue. It is a show-stopping dessert that strikes the perfect balance between gooey and refined, making it the ideal centerpiece for any celebration or a serious chocolate craving.</p>
        </div>
        <div class="recipe-right">
             <h3>Ingredients</h3>
             <table class="ingredients-table">
                 <tr><td>Dark Chocolate</td><td>200g</td></tr>
                 <tr><td>Butter</td><td>150g</td></tr>
                 <tr><td>Sugar</td><td>1 cup</td></tr>
                 <tr><td>Eggs</td><td>3 large</td></tr>
                 <tr><td>Flour</td><td>1/2 cup</td></tr>
             </table>
             <h3>Instructions</h3>
             <ol>
                 <li>Melt chocolate and butter together until smooth.</li>
                 <li>Whisk in sugar and eggs one at a time.</li>
                 <li>Fold in flour and bake at 180°C for 25 minutes.</li>
             </ol>
             <br />
              <a href="<%= ResolveUrl("~/appPages/aspxPages/WelcomePage.aspx") %>" class="back-link">
                <i class="fa fa-arrow-left"></i> Back to Recipes
            </a>
       </div>
    </div>
</div>
</asp:Content>