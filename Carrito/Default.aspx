<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Carrito._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   <%-- <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>--%>

    <%--<div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>--%>

    <h2>Ingresaste</h2>
    <h2>Debes Loguearte</h2>
    <a href="~/About">Login</a>

    <div style=" display:flex; width:100%; flex-wrap:wrap">
        

    <%foreach (dominio.Articulo item in listaArt)
    {%>
           <div class="card" style="width: 18rem; border:1px solid black; margin:10px; padding:15px">
               
                <img class="card-img-top" height="75px" src="<%=item.ImagenUrl%>" alt="Card image cap">
                <h5 class="card-title"><%=item.Nombre%></h5>
                <p class="card-text"><%=item.Descripcion%></p>
                <p class="card-text"><small class="text-muted"><%=item.Brand%></small></p>
                    <div class="card-footer">    
                        <asp:Button Text="btnAgregar" class="btn btn-primary" OnClick="btnAgregar_Click" runat="server" />
                     </div>
           </div>

    <%}%>
    </div>
   


</asp:Content>
