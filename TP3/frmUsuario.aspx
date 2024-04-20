<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmUsuario.aspx.cs" Inherits="TP3.frmUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 964px;
        }
        .auto-style4 {
            height: 26px;
            width: 169px;
        }
        .auto-style5 {
            width: 169px;
        }
        .auto-style6 {
            width: 169px;
            height: 29px;
        }
        .auto-style8 {
            width: 203px;
        }
        .auto-style9 {
            height: 29px;
            width: 203px;
            text-align: left;
        }
        .auto-style10 {
            height: 26px;
            width: 203px;
        }
        .auto-style11 {
            color: #FF0000;
        }
        .auto-style12 {
            width: 169px;
            height: 55px;
        }
        .auto-style13 {
            width: 203px;
            height: 55px;
        }
        .auto-style14 {
            height: 55px;
            width: 558px;
        }
        .auto-style16 {
            width: 169px;
            height: 33px;
        }
        .auto-style17 {
            width: 203px;
            height: 33px;
        }
        .auto-style18 {
            height: 33px;
            width: 558px;
        }
        .auto-style22 {
            width: 558px;
        }
        .auto-style23 {
            height: 29px;
            width: 558px;
        }
        .auto-style24 {
            height: 26px;
            width: 558px;
        }
        .auto-style39 {
            width: 169px;
            height: 35px;
        }
        .auto-style40 {
            width: 203px;
            height: 35px;
        }
        .auto-style41 {
            height: 35px;
            width: 558px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8"><strong>Localidades</strong><br />
                    </td>
                    <td class="auto-style22">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <br />
                        Nombre de Localidad:<br />
&nbsp; </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtLocalidad" runat="server" ValidationGroup="GrupoLocalidad"></asp:TextBox>
                        <br />
                    </td>
                    <td class="auto-style23">
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLocalidad" ValidationGroup="GrupoLocalidad" CssClass="auto-style11">*Ingrese localidad*</asp:RequiredFieldValidator>
                        </strong>
                        <br />
                        <strong>
                        <asp:RegularExpressionValidator ID="revLocalidad" runat="server" ControlToValidate="txtLocalidad" CssClass="auto-style11" ValidationExpression="^[a-zA-Z0-9\s]+$" ValidationGroup="GrupoLocalidad">*Ingrese solo letras y numeros*</asp:RegularExpressionValidator>
                        <br />
                        <asp:Label ID="lblLocalidadRepetida" runat="server"></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12"></td>
                    <td class="auto-style13">
                        <asp:Button ID="btnGuardarLocalidad" runat="server" OnClick="btnGuardarLocalidad_Click" Text="Guardar Localidad" ValidationGroup="GrupoLocalidad" />
                        <br />
                        <br />
                    </td>
                    <td class="auto-style14"></td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style10"><strong>Usuarios</strong><br />
                        <br />
                    </td>
                    <td class="auto-style24"></td>
                </tr>
                <tr>
                    <td class="auto-style39">Nombre Usuario:</td>
                    <td class="auto-style40">
                        <asp:TextBox ID="txtUsuario" runat="server" ValidationGroup="GrupoUsuario"></asp:TextBox>
                    </td>
                    <td class="auto-style41"><strong>
                        <asp:RequiredFieldValidator ID="rfvUsuario0" runat="server" ControlToValidate="txtUsuario" CssClass="auto-style11" ValidationGroup="GrupoUsuario">*Ingrese usuario*</asp:RequiredFieldValidator>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style39">Contraseña:</td>
                    <td class="auto-style40">
                        <asp:TextBox ID="txtContrasenia" runat="server" TextMode="Password" ValidationGroup="GrupoUsuario"></asp:TextBox>
                    </td>
                    <td class="auto-style41"><strong>
                        <asp:RequiredFieldValidator ID="rfvContrasenia" runat="server" ControlToValidate="txtContrasenia" CssClass="auto-style11" ValidationGroup="GrupoUsuario">*Ingrese contraseña*</asp:RequiredFieldValidator>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style39">Repetir Contraseña:</td>
                    <td class="auto-style40">
                        <asp:TextBox ID="txtRepetirContrasenia" runat="server" TextMode="Password" ValidationGroup="GrupoUsuario"></asp:TextBox>
                    </td>
                    <td class="auto-style41"><strong>
                        <asp:RequiredFieldValidator ID="rfvRepetirContrasenia" runat="server" ControlToValidate="txtRepetirContrasenia" CssClass="auto-style11" ValidationGroup="GrupoUsuario">*Ingrese contraseña nuevamente*</asp:RequiredFieldValidator>
&nbsp;<br />
                        <asp:CompareValidator ID="cvValidarContrasenia" runat="server" ControlToCompare="txtContrasenia" ControlToValidate="txtRepetirContrasenia" CssClass="auto-style11">*Las contraseñas no coinciden*</asp:CompareValidator>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style39">Correo electronico:</td>
                    <td class="auto-style40">
                        <asp:TextBox ID="txtCorreo" runat="server" ValidationGroup="GrupoUsuario"></asp:TextBox>
                    </td>
                    <td class="auto-style41"><strong>
                        <asp:RequiredFieldValidator ID="rfvCorreo" runat="server" ControlToValidate="txtCorreo" CssClass="auto-style11" ValidationGroup="GrupoUsuario">*Ingrese Correo*</asp:RequiredFieldValidator>
&nbsp;<br />
                        <asp:RegularExpressionValidator ID="revCorreo" runat="server" ControlToValidate="txtCorreo" CssClass="auto-style11" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*Formato de correo invalido*</asp:RegularExpressionValidator>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style39">CP:</td>
                    <td class="auto-style40">
                        <asp:TextBox ID="txtCP" runat="server" ValidationGroup="GrupoUsuario"></asp:TextBox>
                    </td>
                    <td class="auto-style41"><strong>
                        <asp:RequiredFieldValidator ID="rfvCP" runat="server" ControlToValidate="txtCP" CssClass="auto-style11" ValidationGroup="GrupoUsuario">*Ingrese Codigo Postal*</asp:RequiredFieldValidator>
&nbsp;<br />
                        <asp:RegularExpressionValidator ID="revCP" runat="server" ControlToValidate="txtCP" CssClass="auto-style11" ValidationExpression="^[0-9]{4}$">*Ingrese numero de 4 cifras*</asp:RegularExpressionValidator>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style39">Localidades:<br />
                    </td>
                    <td class="auto-style40">
                        <asp:DropDownList ID="ddlLocalidades" runat="server" ValidationGroup="GrupoUsuario">
                        </asp:DropDownList>
                        <br />
                    </td>
                    <td class="auto-style41"><strong>
                        <asp:RequiredFieldValidator ID="rfvLocalidades" runat="server" ControlToValidate="ddlLocalidades" CssClass="auto-style11" InitialValue="- Seleccione Localidad -" ValidationGroup="GrupoUsuario">*Seleccione Localidad*</asp:RequiredFieldValidator>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style16"></td>
                    <td class="auto-style17">
                        <br />
                        <asp:Button ID="btnGuardarUsuario" runat="server" Text="Guardar Usuario" OnClick="btnGuardarUsuario_Click" ValidationGroup="GrupoUsuario" />
                    </td>
                    <td class="auto-style18">
                        <br />
                        <asp:Label ID="lblBienvenida" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <br />
                        <br />
                        <asp:Button ID="btnInicioAspx" runat="server" Text="Ir a inicio.aspx" OnClick="btnInicioAspx_Click" />
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
