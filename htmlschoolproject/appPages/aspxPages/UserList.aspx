<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="UserList.aspx.cs" Inherits="htmlschoolproject.appPages.aspxPages.UserList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/UserListCss.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mainDiv">

        <h1 class="users-title">Registered Users</h1>
        <p class="users-subtitle"><%= msg1 %></p>

        <div class="table-card">
            <%= msg %>
        </div>

    </div>

</asp:Content>
