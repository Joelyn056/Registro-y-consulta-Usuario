<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rUsuarios.aspx.cs" Inherits="RegitroUsuario.Registros.rUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <%--<div class="panel" style="background-color: #039BE5">
        <div class="panel-heading" style="font-family: Freestyle Script; font-size: x-large; color: blanchedalmond">Registro de Usuarios</div>
        
    </div>--%>

    <div class="card-header text-white text-center bg-primary">
        <h3>Registro de usuarios</h3>
    </div>


    <div class="panel-body">
        <div class="form-horizontal col-md-12" role="form">

            <%--UsuarioID--%>
            <div class="form-group">
                <label for="UsuarioIdTextBox" class="col-md-3 control-label input-sm" style="font-size: medium">UsuarioId</label>
                <div class="col-md-1 col-sm-2 col-xs-4">
                    <asp:TextBox ID="UsuarioIdTextBox" runat="server" placeholder="0" class="form-control input-sm" Style="font-size: medium"></asp:TextBox>
                </div>

                <div class="col-md-1 col-sm-2 col-xs-4">
                    <asp:Button ID="BuscarButton" runat="server" Text="Buscar" class="btn btn-primary btn-md" OnClick="BuscarButton_Click" />
                </div>
            </div>
           

        </div>

        <%--Nombres--%>
        <div class="form-group">
            <label for="NombresTextBox" class="col-md-3 control-label input-sm" style="font-size: medium">Nombres</label>
            <div class="col-md-8">
                <asp:TextBox ID="NombresTextBox" runat="server" class="form-control input-sm" Style="font-size: medium"></asp:TextBox>

            </div>
        </div>


        <%--Nombre de usuario--%>
        <div class="form-group">
            <label for="NombreUsuarioTextBox" class="col-md-3 control-label input-sm" style="font-size: medium">Nombre de usuario</label>
            <div class="col-md-8">
                <asp:TextBox ID="NombreUsuarioTextBox" runat="server" class="form-control input-sm" Style="font-size: medium"></asp:TextBox>

            </div>
        </div>


        <%--Contraseña--%>
        <div class="form-group">
            <label for="ContraseñaTextBox" class="col-md-3 control-label input-sm" style="font-size: medium">Contraseña</label>
            <div class="col-md-8">
                <asp:TextBox ID="ContraseñaTextBox" runat="server" class="form-control input-sm" Style="font-size: medium"></asp:TextBox>

            </div>
        </div>


        <%--Confirmar Contraseña--%>
        <div class="form-group">
            <label for="ConfirmarContraseñaTextBox" class="col-md-3 control-label input-sm" style="font-size: medium">Confirmar Contraseña</label>
            <div class="col-md-8">
                <asp:TextBox ID="ConfirmarContraseñaTextBox" runat="server" class="form-control input-sm" Style="font-size: medium"></asp:TextBox>

            </div>
        </div>


        <%--Cargo--%>
        <div class="form-group">
            <label for="CargoDropDownList" class="col-md-3 control-label input-sm" style="font-size: medium">Cargo</label>
            <div class="col-md-8">
                <asp:DropDownList ID="CargoDropDownList" runat="server" Class="form-control input-sm" Style="font-size: medium">
                    <asp:ListItem Selected="True">Administrador</asp:ListItem>
                    <asp:ListItem>Usuario</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>

    </div>

    <%--Botones--%>
    <div class="panel">
        <div class="text-center">
            <div class="form-group">
                <asp:Button ID="NuevoButton" runat="server" Text="Nuevo" class="btn btn-primary" OnClick="NuevoButton_Click" />
                <asp:Button ID="GuardarButton" runat="server" Text="Guardar" class="btn btn-primary" OnClick="GuardarButton_Click" />
                <asp:Button ID="EliminarButton" runat="server" Text="Eliminar" class="btn btn-primary" OnClick="EliminarButton_Click" />
            </div>
        </div>
    </div>

    <div class="col-lg-12">
        <asp:Label ID="ErrorLabel" runat="server" Text=""></asp:Label>
    </div>

    </div>

</asp:Content>


