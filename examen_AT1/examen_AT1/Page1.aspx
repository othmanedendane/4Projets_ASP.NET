<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page1.aspx.cs" Inherits="examen_AT1.Page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            Bienvenue Candidat !</div>
        <div style="text-align: center; text-decoration: underline; font-style: italic; height: 24px; width: 472px; margin-left: 262px; background-color: #FFFF66">
            Recherche des autres candidats (par secteur et par secteur)</div>
        <p>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True">
                <asp:ListItem>Web developpement</asp:ListItem>
                <asp:ListItem>Datebase management</asp:ListItem>
                <asp:ListItem>Robotic</asp:ListItem>
            </asp:RadioButtonList>
        </p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="nom" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="nom" HeaderText="nom" ReadOnly="True" SortExpression="nom" />
                <asp:BoundField DataField="prenom" HeaderText="prenom" SortExpression="prenom" />
                <asp:BoundField DataField="date_naissance" HeaderText="date_naissance" SortExpression="date_naissance" />
                <asp:BoundField DataField="sexe" HeaderText="sexe" SortExpression="sexe" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="date_cv" HeaderText="date_cv" SortExpression="date_cv" />
                <asp:BoundField DataField="niveau_etudes" HeaderText="niveau_etudes" SortExpression="niveau_etudes" />
                <asp:BoundField DataField="remarque" HeaderText="remarque" SortExpression="remarque" />
                <asp:BoundField DataField="user" HeaderText="user" SortExpression="user" />
                <asp:BoundField DataField="pw" HeaderText="pw" SortExpression="pw" />
                <asp:BoundField DataField="secteur" HeaderText="secteur" SortExpression="secteur" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [information] WHERE ([secteur] = @secteur)">
            <SelectParameters>
                <asp:ControlParameter ControlID="RadioButtonList1" Name="secteur" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div style="text-align: center; text-decoration: underline; font-style: italic; height: 24px; width: 472px; margin-left: 262px; background-color: #FFFF66">
            Recherche des autres candidats (par secteur et par secteur)</div>
        <asp:RadioButtonList ID="RadioButtonList2" runat="server" AutoPostBack="True">
            <asp:ListItem>cegep</asp:ListItem>
            <asp:ListItem>bac</asp:ListItem>
            <asp:ListItem>universite</asp:ListItem>
        </asp:RadioButtonList>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="nom" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="nom" HeaderText="nom" ReadOnly="True" SortExpression="nom" />
                <asp:BoundField DataField="prenom" HeaderText="prenom" SortExpression="prenom" />
                <asp:BoundField DataField="date_naissance" HeaderText="date_naissance" SortExpression="date_naissance" />
                <asp:BoundField DataField="sexe" HeaderText="sexe" SortExpression="sexe" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="date_cv" HeaderText="date_cv" SortExpression="date_cv" />
                <asp:BoundField DataField="niveau_etudes" HeaderText="niveau_etudes" SortExpression="niveau_etudes" />
                <asp:BoundField DataField="remarque" HeaderText="remarque" SortExpression="remarque" />
                <asp:BoundField DataField="user" HeaderText="user" SortExpression="user" />
                <asp:BoundField DataField="pw" HeaderText="pw" SortExpression="pw" />
                <asp:BoundField DataField="secteur" HeaderText="secteur" SortExpression="secteur" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [information] WHERE ([niveau_etudes] = @niveau_etudes)">
            <SelectParameters>
                <asp:ControlParameter ControlID="RadioButtonList2" Name="niveau_etudes" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Panel ID="Panel2" runat="server" BorderColor="Red" BorderStyle="Solid" Height="113px" style="text-align: center">
            supression d&#39;un candidat<br />
                <br />
                <asp:Label ID="Label6" runat="server" Text="nom"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="supprimer" Width="120px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label7" runat="server" ForeColor="#33CC33" Text="Supprimé avec succés"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label8" runat="server" ForeColor="Red" Text="Erreur"></asp:Label>
        </asp:Panel>
        <p>
            &nbsp;</p>
        <asp:Panel ID="Panel3" runat="server" BorderColor="Red" BorderStyle="Solid" Height="113px" style="text-align: center">
            supression d&#39;un mail d&#39;un candidat<br />
                <br />
                <asp:Label ID="Label9" runat="server" Text="nom"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Delete mail" Width="85px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label10" runat="server" ForeColor="#33CC33" Text="Supprimé avec succés"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label11" runat="server" ForeColor="Red" Text="Erreur"></asp:Label>
        </asp:Panel>
        <p>
            &nbsp;</p>
        <asp:Panel ID="Panel4" runat="server" BorderColor="Yellow" BorderStyle="Solid" Height="113px" style="text-align: center">
            update d&#39;un mail d&#39;un candidat<br />
                <br />
                <asp:Label ID="Label12" runat="server" Text="nom"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; email&nbsp;
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="update mail" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label13" runat="server" ForeColor="#33CC33" Text="mise a jour avec succés"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label14" runat="server" ForeColor="Red" Text="Erreur"></asp:Label>
        </asp:Panel>
        <p>
            &nbsp;</p>
        <asp:Panel ID="Panel5" runat="server" BorderColor="Yellow" BorderStyle="Solid" Height="113px" style="text-align: center">
            update du niveau d&#39;etudes d&#39;un candidat<br />
                <br />
                <asp:Label ID="Label15" runat="server" Text="nom"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label18" runat="server" Text="niveau_etudes"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="Update niveau_etudes" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label16" runat="server" ForeColor="#33CC33" Text="mise a jour avec succés"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label17" runat="server" ForeColor="Red" Text="Erreur"></asp:Label>
        </asp:Panel>
        <p>
            Envoie d&#39;un mail a Votre employeur :
        </p>
        <p>
            <table align="center" style="border-collapse:collapse; border:groove" width="60%">
                <tr>
                    <td>To:                   <td>
                        <asp:TextBox ID="to" runat="server" name="to" Text="othmanedendane99@gmail.com" width="99%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>From: </td>
                    <td>
                        <asp:TextBox ID="from" runat="server" name="from" Text="technotransact@gmail.com" width="99%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Subject: </td>
                    <td>
                        <asp:TextBox ID="subject" runat="server" width="99%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Body: </td>
                    <td>
                        <asp:TextBox ID="body" runat="server" Height="160px" TextMode="MultiLine" width="99%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="send" runat="server" Onclick="send_Click" Text="Send" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Label ID="status" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </p>
    </form>
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
</body>
</html>
