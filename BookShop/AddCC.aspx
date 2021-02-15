<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AddCC.aspx.cs" Inherits="AddCC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width: 100%;">
        <tr>
            <td>&nbsp;<asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label></td>
            <td>&nbsp;<asp:TextBox ID="txtFName" runat="server"></asp:TextBox></td>
            <td>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First Name is Required" ControlToValidate="txtFName"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
           <td>&nbsp;<asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label></td>
            <td>&nbsp;<asp:TextBox ID="txtLName" runat="server"></asp:TextBox></td>
            <td>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last Name is Required" ControlToValidate="txtLName"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>&nbsp;<asp:Label ID="Label3" runat="server" Text="Middle Name"></asp:Label></td>
            <td>&nbsp;<asp:TextBox ID="txtMidInitial" runat="server" MaxLength="1"></asp:TextBox></td>
            <td>&nbsp;</td>
        </tr>
          <tr>
           <td>&nbsp;<asp:Label ID="Label4" runat="server" Text="CC No"></asp:Label></td>
            <td>&nbsp;<asp:TextBox ID="txtCCNo" runat="server"></asp:TextBox></td>
            <td>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Credit Card is Required" ControlToValidate="txtCCNo"></asp:RequiredFieldValidator></td>
        </tr>
          <tr>
           <td>&nbsp;<asp:Label ID="Label5" runat="server" Text="Expiration Date"></asp:Label></td>
            <td>&nbsp;<asp:TextBox ID="txtExpirationDate" runat="server"></asp:TextBox></td>
            <td>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Expiration Date is Required" ControlToValidate="txtExpirationDate"></asp:RequiredFieldValidator></td>
        </tr>
          <tr>
           <td>&nbsp;<asp:Label ID="Label6" runat="server" Text="CVC"></asp:Label></td>
            <td>&nbsp;<asp:TextBox ID="txtCVC" runat="server"></asp:TextBox></td>
            <td>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="CVC is Required" ControlToValidate="txtCVC"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
           <td>&nbsp;<asp:Label ID="Label7" runat="server" Text="Type"></asp:Label></td>
            <td>&nbsp;<asp:TextBox ID="txtType" runat="server"></asp:TextBox></td>
            <td>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Type is Required" ControlToValidate="txtType"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="height: 25px">&nbsp;<asp:Label ID="Label9" runat="server" Text="UserID"></asp:Label></td>
            <td style="height: 25px">&nbsp;<asp:TextBox ID="txtUserID" runat="server"></asp:TextBox></td>
            <td style="height: 25px">&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="UserID is required" ControlToValidate="txtUserID"></asp:RequiredFieldValidator></td>
        </tr>

        <tr>
           <td>&nbsp;<asp:Label ID="Label8" runat="server" Text="Default"></asp:Label></td>
            <td>&nbsp;<asp:TextBox ID="txtIsDefault" runat="server" MaxLength="1"></asp:TextBox></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td> </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Add Credit Card" OnClick="Button1_Click" />
            </td>
        </tr>

    </table>
</asp:Content>

