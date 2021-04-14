<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="page2.aspx.cs" Inherits="TP_1_EX_2.page2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
     <form id="form1" runat="server">
        <div class="auto-style1">
            <br />
            <h2 id ="first">Voici la deuxiéme page</h2>
            <br />
            <br />
            <br />
            <br />
        </div>

          <br />
            <br />


         <asp:Panel ID="Panel1" runat="server" Height="127px" style="margin-left: 288px" Width="724px">
             Voici les commentaires récupérés :&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label1" runat="server"></asp:Label>
             <br />
             <br />
             et vous avez classé l&#39;image :&nbsp;
             <asp:Label ID="Label2" runat="server"></asp:Label>
         </asp:Panel>




    </form>
</body>
</html>
