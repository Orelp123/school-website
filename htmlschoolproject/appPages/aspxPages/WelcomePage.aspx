<%@ Page Title="Simply Delicious" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="WelcomePage.aspx.cs" Inherits="htmlschoolproject.appPages.aspxPages.WelcomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="../css/welcomePage.css?v=1" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="welcomePage">

        <div class="logo">
            <img src="../images/NewLogoColor.png" id="logo" alt="Simply Delicious Logo" />
        </div>

        <div class="pageWrap">

            <div class="sideGrid">
                <img src="../images/sideGrid.jpg" class="sideImg" alt="Side Grid Left" />
            </div>

            <div class="centerContent">
                <h1 id="myH2">Welcome to Simply Delicious!</h1>

                <h3 id="myH3">A bit about us</h3>

                <p id="myP">
                    Simply Delicious is your ultimate go-to destination for easy, mouthwatering recipes that anyone can make, no matter your skill level in the kitchen.
                    Whether you're a complete beginner or an experienced cook, our carefully curated collection of simple yet flavorful dishes is designed to inspire and elevate your cooking experience.
                    From quick weeknight dinners to indulgent desserts, we bring you a variety of recipes that cater to all tastes, dietary preferences, and occasions.
                    reativity, and, of course, the most delicious recipes.
                </p>
            </div>

            <div class="sideGrid">
                <img src="../images/sideGrid.jpg" class="sideImg" alt="Side Grid Right" />
            </div>

        </div>

        <h3 id="H3Num2">Here are some of our simple recipes</h3>

        <div class="galleryGrid">

            <div class="gallery">
                <a id="saladImg" href="#" onclick="return false;">
                    <img src="../images/saled.jpg" alt="Salad" />
                </a>
                <div class="discriptin">Salad</div>
            </div>

            <div class="gallery">
                <a id="soupImg" href="#" onclick="return false;">
                    <img src="../images/soupsNew.jpg" alt="Soup" />
                </a>
                <div class="discriptin">Soup</div>
            </div>

            <div class="gallery">
                <a id="pizzaImg" href="#" onclick="return false;">
                    <img src="../images/pizza.jpg" alt="Pizza" />
                </a>
                <div class="discriptin">Pizza</div>
            </div>

            <div class="gallery">
                <a id="BreadImg" href="#" onclick="return false;">
                    <img src="../images/breadImg.jpg" alt="Bread" />
                </a>
                <div class="discriptin">Bread</div>
            </div>

            <div class="gallery">
                <a id="cakesImg" href="#" onclick="return false;">
                    <img src="../images/cakesImg.jpg" alt="Cakes" />
                </a>
                <div class="discriptin">Cakes</div>
            </div>

            <div class="gallery">
                <a id="cookiesImg" href="#" onclick="return false;">
                    <img src="../images/cookiesImg.jpg" alt="Cookies" />
                </a>
                <div class="discriptin">Cookies</div>
            </div>

        </div>

    </div>

    <script src="JScode/welcomePage.js"></script>

</asp:Content>
