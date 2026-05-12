<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarSucursal.aspx.cs" Inherits="TP5_PROGRA3.Ejercicios.AgregarSucursal" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>TP5</title>
    <style type="text/css">
        body {
            background-color: #121212; /* Fondo oscuro inspirado en la imagen */
            color: #e0e0e0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
        }
        #form1 {
            width: 70%;
            min-width: 600px;
            margin-top: 40px;
            padding: 40px;
            background-color: #1e1e1e;
            border-radius: 8px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.8);
        }
        .menu-container {
            text-align: center;
            margin-bottom: 50px;
        }
        .menu-link {
            color: #d4af37; /* Color dorado como en la captura */
            text-decoration: none;
            margin: 0 25px;
            font-size: 16px;
            transition: color 0.3s;
        }
        .menu-link:hover {
            color: #ffffff;
            text-decoration: underline;
        }
        .grupo-titulo {
            font-size: 32px;
            font-weight: bold;
            margin-bottom: 20px;
            color: #ffffff;
        }
        .titulo {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 30px;
            display: block;
            color: #ffffff;
        }
        .form-table {
            width: 100%;
            border-collapse: collapse;
        }
        .form-table td {
            padding: 10px 10px;
            vertical-align: middle;
        }
        .label-cell {
            width: 160px;
            font-size: 15px;
        }
        .input-control {
            width: 250px;
            padding: 6px 10px;
            background-color: #121212;
            border: 1px solid #555;
            color: #fff;
            border-radius: 3px;
            font-family: inherit;
        }
        .input-control:focus {
            border-color: #888;
            outline: none;
        }
        .btn-guardar {
            background-color: #2b2b2b;
            color: #fff;
            border: 1px solid #666;
            padding: 8px 20px;
            font-size: 14px;
            border-radius: 3px;
            cursor: pointer;
            transition: background-color 0.2s;
        }
        .btn-guardar:hover {
            background-color: #444;
        }
        .error-message {
            color: #ff4444 !important;
            font-size: 13px;
            margin-left: 10px;
        }
        .success-message {
            color: #00C851 !important;
            font-weight: bold;
            font-size: 15px;
            margin-left: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        
        <!-- Menú de navegación -->
        <div class="menu-container">
            <asp:LinkButton ID="LinkButtonAgregarSucursal" runat="server" PostBackUrl="~/Ejercicios/AgregarSucursal.aspx" CssClass="menu-link" OnClick="LinkButtonAgregarSucursal_Click">Agregar Sucursal</asp:LinkButton>
            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Ejercicios/ListarSucursal.aspx" CssClass="menu-link">Listado de Sucursales</asp:LinkButton>
            <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/Ejercicios/EliminarSucursal.aspx" CssClass="menu-link">Eliminar Sucursal</asp:LinkButton>
        </div>

        <!-- Títulos -->
        <asp:Label ID="lblAgregarSucursal" runat="server" Text="Agregar Sucursal" CssClass="titulo"></asp:Label>
        
        <!-- Formulario -->
        <table class="form-table">
            <tr>
                <td class="label-cell">Nombre Sucursal:</td>
                <td>
                    <asp:TextBox ID="txtNombreSucursal" runat="server" CssClass="input-control" ValidationGroup="AgregarSucursal"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvNombreSucursal" runat="server" ControlToValidate="txtNombreSucursal" ErrorMessage="* Requerido" CssClass="error-message" ValidationGroup="AgregarSucursal" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="label-cell">Descripción:</td>
                <td>
                    <asp:TextBox ID="txtDescripcion" runat="server" CssClass="input-control" ValidationGroup="AgregarSucursal"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvDescripcion" runat="server" ControlToValidate="txtDescripcion" ErrorMessage="* Requerido" CssClass="error-message" ValidationGroup="AgregarSucursal" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="label-cell">Provincia:</td>
                <td>
                    <asp:DropDownList ID="ddlProvincias" runat="server" CssClass="input-control">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="label-cell">Dirección:</td>
                <td>
                    <asp:TextBox ID="txtDireccion" runat="server" CssClass="input-control" ValidationGroup="AgregarSucursal"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="txtDireccion" ErrorMessage="* Requerido" CssClass="error-message" ValidationGroup="AgregarSucursal" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="label-cell"></td>
                <td style="padding-top: 20px;">
                    <asp:Button ID="btnGuardar" runat="server" Text="Aceptar" OnClick="btnGuardar_Click" ValidationGroup="AgregarSucursal" CssClass="btn-guardar" />
                    
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:Timer ID="TimerOcultarMensaje" runat="server" Interval="3000" Enabled="False" OnTick="TimerOcultarMensaje_Tick"></asp:Timer>
                            
                            <asp:Label ID="labelControlGuardadoExitoso" runat="server" Text="La sucursal se ha agregado con éxito" Visible="False" CssClass="success-message"></asp:Label>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
        </table>

    </form>
</body>
</html>