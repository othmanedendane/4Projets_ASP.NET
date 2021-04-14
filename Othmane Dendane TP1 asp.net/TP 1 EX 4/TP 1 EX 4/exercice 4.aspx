<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="exercice 4.aspx.cs" Inherits="TP_1_EX_4.exercice_4" %>

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
            <h2 id ="first">Stationnement du collége  </h2>
            <br />
            <br />
            <br />
            <br />
        </div>


        <p>
            &nbsp;</p>
        <div id="div1">
        <asp:Label ID="Label1" runat="server" Text="Nom complet"></asp:Label>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="199px"></asp:TextBox>
            <asp:RegularExpressionValidator id="RegularExpressionValidator4" runat="server" 
            ErrorMessage="Syntax error"
                Inherits="TP_1_EX_4.exercice_4"
            ControlToValidate="TextBox1" style="color: #FF0000" Visible="True" ValidationExpression="^([1-zA-Z0-1@.\s]{1,255})$"/>
            &nbsp;&nbsp;&nbsp; (Format=&gt;othmane dendane)<br />
            <br />
        <asp:Label ID="Label2" runat="server" Text="Adresse"></asp:Label>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Height="16px" Width="199px"></asp:TextBox>

            <asp:RegularExpressionValidator id="RegularExpressionValidator5" runat="server" 
            ErrorMessage="Syntax error"
                Inherits="TP_1_EX_4.exercice_4"
            ControlToValidate="TextBox2" style="color: #FF0000" Visible="True" ValidationExpression="^[ \w]{3,}([A-Za-z]\.)?([ \w]*\#\d+)?(\r\n| )[ \w]{3,},\x20[A-Za-z]{2}\x20\d{5}(-\d{4})?$"/>
            &nbsp;&nbsp;&nbsp; (Format=&gt;420 Copernic app#2 Laval, QC 20000)<br />
            <br />
        <asp:Label ID="Label3" runat="server" Text="Code postal"></asp:Label>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" Height="16px" Width="197px"></asp:TextBox>
            <asp:RegularExpressionValidator id="RegularExpressionValidator7" runat="server" 
            ErrorMessage="Syntax error" SetFocusOnError="True"
                Inherits="TP_1_EX_4.exercice_4"
            ControlToValidate="TextBox3" style="color: #FF0000" Visible="True" ValidationExpression="\d{5}(-\d{4})?"/>
             &nbsp;&nbsp; (Format=&gt;20000)<br />
            <br />

           <tr>  
        <td class="auto-style2">Email ID</td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
            <td>  
<asp:TextBox ID="username" runat="server" Width="197px"></asp:TextBox>  

    <asp:RegularExpressionValidator id="RegularExpressionValidator2" runat="server" 
            ErrorMessage="Syntax error" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
            Inherits="testbzrba.page"
            ControlToValidate="username" style="color: #FF0000" Visible="True" />
            &nbsp;&nbsp; (Format=&gt;abc@de.xx)<br />
            <br />
            </td>  
            </tr> 


        <asp:Label ID="Label4" runat="server" Text="Numéro de téléphone"></asp:Label>

           &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server" Height="16px" Width="199px"></asp:TextBox> 

            <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" 
            ErrorMessage="Syntax error" 
            ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"
                Inherits="TP_1_EX_4.exercice_4"
            ControlToValidate="TextBox4" style="color: #FF0000" Visible="True"/>
            &nbsp; (Format=&gt; 514-456-7890)

            <br />
            <br />
            <br />
&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Ajouter" Width="96px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            <br />
           </div>
        </form>


</body>
</html>
