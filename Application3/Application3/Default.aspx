<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Application3.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            color: #3333FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h1 class="auto-style2">Enregistrement Enseignants</h1>
            </div>
            <div style="height: 529px">
                <br />
                Full name :&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Width="212px"></asp:TextBox>
                <br />
                <br />
                city :
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>Casablanca</asp:ListItem>
                <asp:ListItem>Montreal</asp:ListItem>
                <asp:ListItem>Fes</asp:ListItem>
                <asp:ListItem>Marrakech</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
                <asp:Label ID="Lblcity" runat="server" Text="city"></asp:Label>
                <br />
                <br />
                Speciality :<br />
                <br />
                <asp:RadioButton ID="pro" runat="server" GroupName="speciality" Text="Programmeur" />
                <br />
                <asp:RadioButton ID="ana" runat="server" GroupName="speciality" Text="Analyseur" />
                <br />
                <asp:RadioButton ID="pyt" runat="server" GroupName="speciality" Text="Python - Java" />
                <br />
                <asp:RadioButton ID="sof" runat="server" GroupName="speciality" Text="software enginer" />
                <br />
                <br />
                Degree :<br />
                <br />
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Ph.D" />
                <br />
                <asp:CheckBox ID="CheckBox2" runat="server" Text="Bachelor" />
                <br />
                <asp:CheckBox ID="CheckBox3" runat="server" Text="Master" />
                <br />
            <br />
            <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="result"></asp:Label>
        </div>
    </form>
</body>
</html>
