<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="shopcart.aspx.cs" Inherits="shopcart" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
        SelectCommand="SELECT * FROM [vShopcart] WHERE ([shopcartid] = @shopcartid)">
        <SelectParameters>
            <asp:SessionParameter Name="shopcartid" SessionField="shopcartID" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" 
        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
        Caption="Your Shopcart" CellPadding="3" CellSpacing="2" 
        DataSourceID="SqlDataSource1" 
    EmptyDataText="Your shopcart is empty..." AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="quantity" HeaderText="quantity" 
                SortExpression="quantity" />
            <asp:BoundField DataField="BookID" HeaderText="BookID" 
                SortExpression="BookID" />
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:BoundField DataField="Author" HeaderText="Author" 
                SortExpression="Author" />
            <asp:BoundField DataField="listprice" HeaderText="listprice" 
                SortExpression="listprice" />
            <asp:BoundField DataField="subtotal" HeaderText="subtotal" 
                SortExpression="subtotal" />
            <asp:HyperLinkField DataNavigateUrlFields="BookID" 
                DataNavigateUrlFormatString="~/shopcart.aspx?id={0}&amp;action='del'" 
                HeaderText="Remove" Text="Delete" />
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
    <p>
    Total Amount: 
    <asp:Label ID="lblAmount" runat="server" Text=""></asp:Label>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/selectCC.aspx" 
            onload="HyperLink1_Load">Checkout</asp:HyperLink>
    </p>
</asp:Content>
