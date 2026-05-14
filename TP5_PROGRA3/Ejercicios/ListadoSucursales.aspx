<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoSucursales.aspx.cs" Inherits="TP5_PROGRA3.Ejercicios.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Listado de Sucursales</title>
    <style type="text/css">
        .menu-link {
        color: #d4af37;
        text-decoration: none;
        margin: 0 25px;
        font-size: 16px;
        font-weight: 500;
        transition: all 0.3s ease;
        padding: 8px 16px;
        border-radius: 8px;
        }
        .menu-link:hover {
            color: #ffffff;
            background: rgba(212, 175, 55, 0.2);
            box-shadow: 0 4px 15px rgba(212, 175, 55, 0.1);
            text-decoration: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="menu-container">
            <asp:LinkButton ID="LinkButtonAgregarSucursal" runat="server" PostBackUrl="~/Ejercicios/AgregarSucursal.aspx" CssClass="menu-link">Agregar Sucursal</asp:LinkButton>
            <asp:LinkButton ID="LinkButtonListadoSucursales" runat="server" PostBackUrl="~/Ejercicios/ListadoSucursales.aspx" CssClass="menu-link">Listado de Sucursales</asp:LinkButton>
            <asp:LinkButton ID="LinkButtonEliminarSucursal" runat="server" PostBackUrl="~/Ejercicios/EliminarSucursal.aspx" CssClass="menu-link">Eliminar Sucursal</asp:LinkButton>
        </div>
    </form>
</body>
</html>
