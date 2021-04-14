<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridView_Album.aspx.cs" Inherits="Labo2.GridView_Album" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <div style="text-align: center; text-decoration: underline; font-style: italic; height: 24px; width: 472px; margin-left: 262px; background-color: #00FFFF">
            GridView pour les album tracks (Microsoft Acces)</div>
        </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:RadioButtonList ID="RadioButtonList2" runat="server" AutoPostBack="True">
                <asp:ListItem Value="1">Subtle ways</asp:ListItem>
                <asp:ListItem Value="2">Khronos</asp:ListItem>
                <asp:ListItem Value="3">Say What You Mean</asp:ListItem>
            </asp:RadioButtonList>
        </p>
        <p style="text-align: center">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="AlbumNumber,TrackNumber" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="AlbumNumber" HeaderText="AlbumNumber" ReadOnly="True" SortExpression="AlbumNumber" />
                    <asp:BoundField DataField="Album Name" HeaderText="Album Name" SortExpression="Album Name" />
                    <asp:BoundField DataField="TrackNumber" HeaderText="TrackNumber" ReadOnly="True" SortExpression="TrackNumber" />
                    <asp:BoundField DataField="TrackName" HeaderText="TrackName" SortExpression="TrackName" />
                </Columns>
                <HeaderStyle BackColor="#66FFFF" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [AlbumTracks] WHERE ([AlbumNumber] = ?)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="RadioButtonList2" Name="AlbumNumber" PropertyName="SelectedValue" Type="Int16" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
    </form>
</body>
</html>
