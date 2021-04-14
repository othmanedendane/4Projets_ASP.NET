<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="validator.aspx.cs" Inherits="validator.validator" %>


<!DOCTYPE html> 
 
<html lang="fr-ca"> <head runat="server">     <title></title>     <link href="styles/monStyle.css" rel="stylesheet" type="text/css" />   
    <style type="text/css">
        
    </style>
    <link href="monStyle.css" rel="stylesheet" type="text/css" />
</head> <body>     <form id="form1" runat="server">         <div class="entete"> 
     <asp:Label ID="lblInvValidator" runat="server" CssClass="txtGrand"                 Text="Les contrôles de validation"></asp:Label> 
 
        <br />
     <br />
     <br />
 
        </div>         <div class="principale"> 
 
        <div id="division">    
            <br />
            <br />
            <asp:Label ID="lblInvRequire" runat="server" AssociatedControlID="txtRequired"                 CssClass="txtColoré" Text="Le RequireFieldValidator (une valeur est requise) : "></asp:Label>             &nbsp;&nbsp;             <asp:TextBox ID="txtRequired" runat="server"></asp:TextBox>             <asp:RequiredFieldValidator ID="Rv1" runat="server" ControlToValidate="txtRequired" Display="Dynamic"                 ErrorMessage="Caractère requis" SetFocusOnError="True"                 CssClass="required">Requis</asp:RequiredFieldValidator> 
 
            <br /><br />             <asp:Label ID="lblInvCompareValidator" runat="server" CssClass="txtColoré"                 Text="Le CompareValidator (Vérification du type)  Entrez le prix :"></asp:Label>             &nbsp;&nbsp;             <asp:TextBox ID="txtPrix" runat="server"></asp:TextBox>             <asp:CompareValidator ID="cmpData" runat="server" ControlToValidate="txtPrix"                 Operator="DataTypeCheck" Type="Currency" CssClass="required" Display="Dynamic"                 ErrorMessage="Entrez une valeur monétaire">Entrez une valeur monétaire</asp:CompareValidator>                          <asp:RequiredFieldValidator ID="Rv2" runat="server" CssClass="required" ControlToValidate ="txtPrix" ErrorMessage="Caractère requis">Requis</asp:RequiredFieldValidator>                          <br /><br />             <asp:Label ID="lblInvCompa" runat="server" CssClass="txtColoré"                 Text="Le CompareValidator (Comparaison avec une date)  : Entrez la date de votre rendez-vous (aaaa-mm-jj) :"></asp:Label>             &nbsp;&nbsp;             <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>             <asp:CompareValidator ID="cpv2" runat="server" ControlToValidate="txtDate"                 Operator="GreaterThan" CssClass="required" Display="Dynamic"                 ErrorMessage="La date doit être postérieure à la date actuelle">La date doit être dans l'avenir</asp:CompareValidator>                          <br /><br />             <asp:Label ID="lblInvCompa0" runat="server" CssClass="txtColoré"                   Text="Le CompareValidator (Comparaison avec un contrôle) :"></asp:Label>             <br />&nbsp;&nbsp;             <asp:Label ID="lblValMontant" runat="server" CssClass="txtColoré"                 Text="Voici le montant minimal :" AssociatedControlID="txtNbMin"></asp:Label>             &nbsp;&nbsp;             <asp:TextBox ID="txtNbMin" runat="server" ReadOnly="True" width="30px">15</asp:TextBox>             &nbsp;&nbsp;             <asp:Label ID="lblInvEntreMontant" runat="server"                 Text="Entrez un montant supérieur au minimum :" CssClass="txtColoré" AssociatedControlID="txtNb"></asp:Label>             &nbsp;&nbsp;             <asp:TextBox ID="txtNb" runat="server" Width="30px"></asp:TextBox>             <asp:CompareValidator ID="cmp3" runat="server" ControlToCompare="txtNbMin"                 ControlToValidate="txtNb" ErrorMessage="CompareValidator" Operator="GreaterThan" 

     Type="Integer" CssClass="required" Display="Dynamic">Valeur trop petite</asp:CompareValidator>                          <br /><br />             <asp:Label ID="lblInvRangeValidator" runat="server" CssClass="txtColoré"                   Text="Le RangeValidator Comparaison avec une plage  de valeurs : Entrez un nombre entre 0 et 21 incl. :"></asp:Label>             <asp:RangeValidator ID="rval1" runat="server" ControlToValidate="txtRange"  CssClass="required" Display="Dynamic" ErrorMessage="RangeValidator"                 MaximumValue="21" MinimumValue="0" Type="Integer">Valeur hors limite</asp:RangeValidator>             <asp:TextBox ID="txtRange" runat="server" width="30px" ></asp:TextBox>             <asp:Label ID="lblMessage" runat="server" CssClass="txtColoré"></asp:Label> 
            <br />
            <br />
            <br />
        </div>
 
            <br /><br />             <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" ShowMessageBox="True" ShowSummary="False" />                          <br /><br />             <asp:Button ID="butOnClique" runat="server" CssClass="butColoré" Text="On clique" OnClick="butOnClique_Click" /> 
 
        </div>    



                   </form> </body> </html>