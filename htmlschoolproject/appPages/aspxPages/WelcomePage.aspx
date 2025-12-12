    <%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WelcomePage.aspx.cs" Inherits="htmlschoolproject.appPages.aspxPages.WelcomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>
         Simply Delicious
     </title>
     <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="stylesheet" href="../css/welcomePage.css">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
     <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0&icon_names=search" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <div class="logo">

        

</div>

        <div>
        <img src="../images/NewLogoColor.png" type="button" id="logo" />
        <h1 id="myH2">Welcome to Simply Delicious!</h1>

        <h3 id="myH3">
            A bit about us
        </h3>
        <p id="myP">


            Simply Delicious is your ultimate go-to destination for easy, mouthwatering recipes that anyone can make, no matter your skill level in the kitchen. Whether you're a complete beginner or an experienced cook, our carefully curated collection of simple yet flavorful dishes is designed to inspire and elevate your cooking experience. From quick weeknight dinners to indulgent desserts, we bring you a variety of recipes that cater to all tastes, dietary preferences, and occasions.<br /><br />

            We believe that cooking should be accessible, fun, and rewarding, which is why we focus on using everyday ingredients that are easy to find and simple cooking techniques that deliver extraordinary results. Our mission is to empower you to create delicious meals without the stress, so you can enjoy the process of cooking as much as the result.<br /><br />

            Explore global flavors from all around the world and discover new ingredients, spices, and cooking methods that will take your meals to the next level. Whether you’re craving comforting classics or bold international dishes, Simply Delicious offers a wide range of recipes to satisfy every palate. Our step-by-step instructions, tips, and expert advice ensure that each dish is as easy to prepare as it is delicious.<br /><br />

            Join our community of food lovers who believe that the best meals are the simplest ones. Get ready to create memorable dishes that will delight your family, friends, and taste buds. No matter your culinary journey, Simply Delicious is here to help you every step of the way with inspiration, creativity, and, of course, the most delicious recipes.

            Let me know if you'd like any further changes!
        
    </div>


    <div class="galleryLside">
        <img src="../images/sideGrid.jpg" id="sideLGrid" width="500" height="700" />
    </div>
    <div class="galleryRside">
        <img src="../images/sideGrid.jpg" id="sideRGrid" width="500" height="700" />
    </div>

    <h3 id="H3Num2">Here a some of our simple recipes</h3>

    <div class="gallery">
        <a target="_blank" id="saladImg" href="" >
            <img src="../images/saled.jpg" alt="Salad" />

        </a>
        <div class="discriptin">Salad</div>
    </div>
    <div class="gallery">
        <a target="_blank" id="soupImg" href="">
            <img src="../images/soupsNew.jpg" alt="soup" />
        </a>
        <div class="discriptin">Soup</div>
    </div>
    <div class="gallery">
        <a target="_blank" id="pizzaImg" href="">
            <img src="../images/pizza.jpg" alt="pizza" />
        </a>
        <div class="discriptin">Pizza</div>
    </div>
    <div class="gallery">
        <a target="_blank" id="BreadImg" href="" w>
            <img src="../images/breadImg.jpg" alt="Bread" />

        </a>
        <div class="discriptin">Bread</div>
    </div>
    <div class="gallery">
        <a target="_blank" id="cakesImg" href="" w>
            <img src="../images/cakesImg.jpg" alt="Cakes"/>

        </a>
        <div class="discriptin">Cakes</div>
    </div>
    <div class="gallery">
        <a target="_blank" id="cookiesImg" href="" w>
            <img src="../images/cookiesImg.jpg" alt="Cookies" />

        </a>
        <div class="discriptin">Cookies</div>
    </div>

</center>

<script src="JScode/welcomePage.js"></script>
</asp:Content>
