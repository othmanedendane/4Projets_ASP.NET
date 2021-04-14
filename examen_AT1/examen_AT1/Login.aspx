<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="examen_AT1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<style>
        body{
            background-color:cornflowerblue;
        }

    .auto-style1 {
        height: 26px;
    }

    </style>
</head>
<body>
    <p>
        <br />
    </p>
    <p>
        &nbsp;</p>
    <p style="text-align: center">
        Login candidat</p>
    <form id="form1" runat="server">
        <div>
            <table style ="margin:auto;border:5px solid white">
                <tr>
                    <td class="auto-style1"><asp:Label ID="Label1" runat="server" Text="username"></asp:Label></td>
                    <td class="auto-style1"><asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td><asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>
                    <td><asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>

                    </td>
                    <td>
                        <asp:Button ID="btnLogin" runat="server" Text="Login candidat" OnClick="btnLogin_Click"  />
                    </td>
                </tr>

                <tr>
                    <td></td>
                        <td><asp:Label ID="lblErrorMessage" runat="server" Text="Incorrect Candidat Credentials" ForeColor="Red"></asp:Label></td>
                </tr>

                <tr>
                    <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="inscription" Width="184px" />
                    </td>
                </tr>
            </table>
        </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>

