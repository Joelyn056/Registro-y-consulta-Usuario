<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="RegitroUsuario._default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="panel" style="background-color: #039BE5">
        <div class="panel-heading" style="font-family: Freestyle Script; font-size: x-large; color: aqua"></div>

    </div>


    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="Resources/1.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="Resources/2.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="Resources/logo.png" class="d-block w-100" alt="...">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">anterior</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">siguinte</span>
        </a>
    </div>







</asp:Content>
