<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarSucursal.aspx.cs" Inherits="TP5_PROGRA3.Ejercicios.AgregarSucursal" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>TP5</title>
    
    <style type="text/css">
        body {
            background: linear-gradient(135deg, #0f0c29, #302b63, #24243e);
            background-size: 400% 400%;
            animation: gradientBG 15s ease infinite;
            color: #e0e0e0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            min-height: 100vh;
        }

        @keyframes gradientBG {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        #form1 {
            width: 70%;
            min-width: 600px;
            margin-top: 40px;
            padding: 40px;
            
            background: rgba(30, 30, 30, 0.45);
            backdrop-filter: blur(16px);
            -webkit-backdrop-filter: blur(16px);
            border: 1px solid rgba(255, 255, 255, 0.1);
            border-radius: 16px;
            box-shadow: 0 8px 32px 0 rgba(0, 0, 0, 0.37);
        }
        .menu-container {
            text-align: center;
            margin-bottom: 50px;
            padding-bottom: 20px;
            border-bottom: 1px solid rgba(212, 175, 55, 0.3);
        }
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
        .grupo-titulo {
            font-size: 32px;
            font-weight: bold;
            margin-bottom: 20px;
            color: #ffffff;
        }
        .titulo {
            font-size: 28px;
            font-weight: bold;
            margin-bottom: 30px;
            display: block;
            color: #ffffff;
            text-shadow: 0 2px 4px rgba(0,0,0,0.5);
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
            font-weight: 500;
        }
        .input-control {
            width: 250px;
            padding: 8px 12px;
            background: rgba(18, 18, 18, 0.5);
            border: 1px solid rgba(255, 255, 255, 0.2);
            color: #fff;
            border-radius: 6px;
            font-family: inherit;
            transition: all 0.3s ease;
        }
        .input-control:focus {
            background: rgba(30, 30, 30, 0.8);
            border-color: #d4af37;
            box-shadow: 0 0 10px rgba(212, 175, 55, 0.3);
            outline: none;
        }
        .btn-guardar {
            background: rgba(212, 175, 55, 0.1);
            color: #d4af37;
            border: 1px solid #d4af37;
            padding: 10px 25px;
            font-size: 14px;
            font-weight: bold;
            border-radius: 6px;
            cursor: pointer;
            transition: all 0.3s ease;
            text-transform: uppercase;
            letter-spacing: 1px;
        }
        .btn-guardar:hover {
            background: #d4af37;
            color: #121212;
            box-shadow: 0 0 15px rgba(212, 175, 55, 0.4);
        }
        .error-message {
            color: #ff4d4d !important;
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
        
        <div class="menu-container">
            <asp:LinkButton ID="LinkButtonAgregarSucursal" runat="server" PostBackUrl="~/Ejercicios/AgregarSucursal.aspx" CssClass="menu-link" OnClick="LinkButtonAgregarSucursal_Click">Agregar Sucursal</asp:LinkButton>
            <asp:LinkButton ID="LinkButtonListadoSucursales" runat="server" PostBackUrl="~/Ejercicios/ListadoSucursales.aspx" CssClass="menu-link">Listado de Sucursales</asp:LinkButton>
            <asp:LinkButton ID="LinkButtonEliminarSucursal" runat="server" PostBackUrl="~/Ejercicios/EliminarSucursal.aspx" CssClass="menu-link">Eliminar Sucursal</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;
        </div>

        <asp:Label ID="lblAgregarSucursal" runat="server" Text="Agregar Sucursal" CssClass="titulo"></asp:Label>
        
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
                    
                    <asp:Label ID="LabelControlGuardadoFallido" runat="server" ForeColor="#ff4d4d" Text="La sucursal ya se encuentra en la base de datos." Visible="False" style="margin-left: 15px; font-weight: bold;"></asp:Label>
                    
                    <asp:Label ID="labelControlGuardadoExitoso" runat="server" Text="La sucursal se ha agregado con éxito" Visible="False" CssClass="success-message"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>