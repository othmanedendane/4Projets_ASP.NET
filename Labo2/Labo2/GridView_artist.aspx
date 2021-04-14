<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridView_artist.aspx.cs" Inherits="Labo2.GridView_artist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center; text-decoration: underline; font-style: italic; height: 24px; width: 472px; margin-left: 262px; background-color: #FFFF66">
            GridView pour les artistes (Microsoft Acces)</div>
        <p>
            &nbsp;</p>
        <p>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True">
                <asp:ListItem Value="1">Daniel</asp:ListItem>
                <asp:ListItem Value="2">Davis</asp:ListItem>
                <asp:ListItem Value="3">kevin</asp:ListItem>
                <asp:ListItem Value="4">Reginald</asp:ListItem>
                <asp:ListItem Value="5">Thaddeus</asp:ListItem>
            </asp:RadioButtonList>
        </p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IDNumber" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="IDNumber" HeaderText="IDNumber" InsertVisible="False" ReadOnly="True" SortExpression="IDNumber" />
                    <asp:BoundField DataField="SignonlID" HeaderText="SignonlID" SortExpression="SignonlID" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
                    <asp:BoundField DataField="Bio" HeaderText="Bio" SortExpression="Bio" />
                    <asp:BoundField DataField="PictureName" HeaderText="PictureName" SortExpression="PictureName" />
                    <asp:BoundField DataField="Instruments" HeaderText="Instruments" SortExpression="Instruments" />
                    <asp:BoundField DataField="FavFood" HeaderText="FavFood" SortExpression="FavFood" />
                    <asp:BoundField DataField="HomeTown" HeaderText="HomeTown" SortExpression="HomeTown" />
                    <asp:BoundField DataField="NickName" HeaderText="NickName" SortExpression="NickName" />
                    <asp:BoundField DataField="EmailID" HeaderText="EmailID" SortExpression="EmailID" />
                </Columns>
                <HeaderStyle BackColor="#FFFF66" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [Albums] WHERE ([AlbumName] = ?)">
                <SelectParameters>
                    <asp:Parameter Name="AlbumName" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Artists] WHERE ([IDNumber] = ?)" OnSelecting="SqlDataSource1_Selecting">
                <SelectParameters>
                    <asp:ControlParameter ControlID="RadioButtonList1" Name="IDNumber" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
    </form>
</body>
</html>
