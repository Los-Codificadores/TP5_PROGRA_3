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
        .auto-style3 {
            width: 213px;
        }
        .auto-style4 {
            width: 128px;
        }
        .auto-style5 {
            width: 128px;
            height: 26px;
        }
        .auto-style6 {
            width: 213px;
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1" style="text-align: center; vertical-align: middle">
                <tr>
                    <td>
                        <asp:LinkButton ID="LinkButtonAgregarSucursal" runat="server" PostBackUrl="~/Ejercicios/AgregarSucursal.aspx">Agregar Sucursal</asp:LinkButton>
                    </td>
                    <td>
                        <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Ejercicios/ListarSucursal.aspx">Listado de Sucursales</asp:LinkButton>
                    </td>
                    <td>
                        <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/Ejercicios/EliminarSucursal.aspx">Eliminar Sucursal</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <br />
            <asp:Label ID="lblAgregarSucursal" runat="server" Text="Agregar sucursal" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
            <br />
            <br />
            <table style="width:100%;">
                <tr>
                    <td class="auto-style4">Nombre sucursal:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtNombreSucursal" runat="server" Width="181px" ValidationGroup="AgregarSucursal"></asp:TextBox>
                    </td>
                    <td>
                         <asp:RequiredFieldValidator ID="rfvNombreSucursal" runat="server" ControlToValidate="txtNombreSucursal" ErrorMessage="Debe escribir un nombre." ForeColor="Red" ValidationGroup="AgregarSucursal" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Descripción</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtDescripcion" runat="server" ValidationGroup="AgregarSucursal" Width="181px"></asp:TextBox>
                    </td>
                    <td class="auto-style7"> 
                        <asp:RequiredFieldValidator ID="rfvDescripcion" runat="server" ControlToValidate="txtDescripcion" ErrorMessage="Debe escribir una descripción." ForeColor="Red" ValidationGroup="AgregarSucursal" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Dirección</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtDireccion" runat="server" Width="181px" ValidationGroup="AgregarSucursal"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                         <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="txtDireccion" ErrorMessage="Debe escribir una dirección." ForeColor="Red" ValidationGroup="AgregarSucursal" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style3">
                        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" ValidationGroup="AgregarSucursal" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
    </body>
</html>
