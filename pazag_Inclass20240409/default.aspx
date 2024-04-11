<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="pazag_Inclass20240409._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .ListBoxCssClass
        {
        color:GhostWhite;
        background-color:DarkOliveGreen;
        font-family:Courier New;
        font-size:large;
        font-style:italic;
        }
       </style>


</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListBox OnSelectedIndexChanged= "lblFruits_SelectedIndexChanged" ID="lblFruits" runat="server" CssClass="ListBoxCssClass" AutoPostBack="True" Height="122px" Width="140px" DataSourceID="SqlDataSourceINClass20240409" DataTextField="LastName" DataValueField="NameID">
                <asp:ListItem>Peach</asp:ListItem>
                <asp:ListItem>Apple</asp:ListItem>
                <asp:ListItem>Banana</asp:ListItem>
                <asp:ListItem>Mango</asp:ListItem>
                <asp:ListItem>Kiwi</asp:ListItem>
            </asp:ListBox>
            <asp:SqlDataSource ID="SqlDataSourceINClass20240409" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringInClass20240409 %>" ProviderName="<%$ ConnectionStrings:ConnectionStringInClass20240409.ProviderName %>" SelectCommand="SELECT [NameID], [UserName], [FirstName], [LastName] FROM [tName]"></asp:SqlDataSource>
        </div>
        <asp:Label ID="lblChosenFruit" runat="server" Text="Select a Fruit"></asp:Label>
    </form>
</body>
</html>
