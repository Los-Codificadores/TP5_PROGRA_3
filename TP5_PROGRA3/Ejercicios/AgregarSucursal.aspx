<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarSucursal.aspx.cs" Inherits="TP5_PROGRA3.Ejercicios.AgregarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 68%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1" style="text-align: center; vertical-align: middle">
                <tr>
                    <td>
                        <asp:LinkButton ID="LinkButtonAgregarSucursal" runat="server">Agregar Sucursal</asp:LinkButton>
                    </td>
                    <td>
                        <asp:LinkButton ID="LinkButton2" runat="server">Listado de Sucursales</asp:LinkButton>
                    </td>
                    <td>
                        <asp:LinkButton ID="LinkButton3" runat="server">Eliminar Sucursal</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </div>
    <div>
        [En este div, colocaremos el resto del ejercicio.]</div>
        <asp:DropDownList ID="ddlTest1" runat="server">
        </asp:DropDownList>
        <asp:DropDownList ID="ddlTest2" runat="server">
        </asp:DropDownList>
    </form>
    </body>
</html>
