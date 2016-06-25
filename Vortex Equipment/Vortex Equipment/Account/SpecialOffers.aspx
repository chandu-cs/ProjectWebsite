<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SpecialOffers.aspx.cs" Inherits="VortexEquipment.ProductDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Today's Offers!</title>
</head>
<body>
    <form id="form1" runat="server">
    <h1> Today's Offers</h1>
                <div>
        
        <asp:Label ID="GridMessage" runat="server" EnableViewState="False"></asp:Label>
        <asp:GridView ID="OfferProducts" runat="server" AutoGenerateColumns="False" DataSourceID="OfferProductsDatasource">
            <Columns>
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />

            </Columns>
        </asp:GridView>
    
        <asp:SqlDataSource ID="OfferProductsDatasource" runat="server" ConnectionString="<%$ ConnectionStrings:VortexEquipment %>" SelectCommand="SELECT [ProductName], [UnitPrice], [ImagePath] FROM [Products] WHERE ([UnitPrice] &lt; @UnitPrice)">
            <SelectParameters>
                <asp:Parameter DefaultValue="1000" Name="UnitPrice" Type="Double" />
            </SelectParameters>
        </asp:SqlDataSource>    
    </div>
    </form>
</body>
</html>
