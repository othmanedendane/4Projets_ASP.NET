<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Exercice 2.aspx.cs" Inherits="TP_1_EX_2.Exercice_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
 <link href="style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        #txt {
            height: 92px;
            width: 483px;
            top: 539px;
            left: 427px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <br />
            <h2 id ="first">Exercice 2</h2>
            <br />
            <br />
            <br />
            <br />
        </div>
         <br />
            <br />
            <br />
        
        <asp:ImageButton ID="image" runat="server" Height="279px" style="margin-right: 33px; top: 206px; left: 463px; width: 399px;" ImageUrl="~/images/1.jpg" DescriptionUrl="~/page2.aspx" PostBackUrl="~/page2.aspx" OnClick="image_Click" />
 <p id="para">Entrez vos commentaires et cliquez sur l'image</p>
        
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:TextBox ID="txt" runat="server" Height="96px"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p id="radio1">
            <asp:RadioButton ID="r1" runat="server" Text="Quelconque" />
        </p>
        <p id="radio2">
            <asp:RadioButton ID="r2" runat="server" Text="Moyenne" />
        </p>
        <p id="radio3">
            <asp:RadioButton ID="r3" runat="server" Text="Excellente" />
        </p>
        
</form>
</body>
</html>
