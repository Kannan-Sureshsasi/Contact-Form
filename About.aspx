<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Contact_Form.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            background-color: #1D1E23;
            background-repeat: no-repeat;
            background-size: cover;
        }
        .auto-style1 {
            margin-bottom: 0px;
        }
    </style>
    <asp:Table ID="ContactFormTable" runat="server" HorizontalAlign="Center" Height="478px" Width="534px" class="jumbotron" BackColor="#B59BFC" CssClass="auto-style1">
        <asp:TableRow>
            <asp:TableCell ColumnSpan="2" HorizontalAlign="left">
                <asp:Label ID="ContactForm" runat="server" Text="Send us your Feedback!" Font-Bold="true" Font-Size="X-Large" Font-Names="Roboto Slab" ForeColor="#000000" Style="margin-left: 20px;"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">
                <asp:Label ID="lblFullName" runat="server" Text="Full Name" Font-Names="Roboto Slab" ForeColor="#000000" Font-Bold="true" Font-Size="Medium" style="margin-left: 10px;"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtFullName" runat="server" Text="" BorderStyle="Solid" Required="true" BorderColor="#000000" Placeholder="Enter your Full Name" Rows="3" Columns="40"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center">
                    <asp:Label ID="lblEmailAddress" runat="server" Text="Email" Font-Names="Roboto Slab" ForeColor="#000000" Font-Bold="true" Font-Size="Medium" style="margin-right: 22px;"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtEmailAddress" runat="server" Required="true" BorderStyle="Solid" BorderColor="#000000" Placeholder="Enter your Email Address" Rows="3" Columns="40"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center">
                    <asp:Label ID="lblSubject" runat="server" Text="Subject" Font-Names="Roboto Slab" ForeColor="#000000" Font-Bold="true" Font-Size="Medium" style="margin-right: 19px;"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtSubject" runat="server" CssClass="wpforms-field-large" Required="true" BorderStyle="Solid" BorderColor="#000000" Placeholder="Enter your Email Address" Rows="3" Columns="40"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">
                <asp:Label ID="lblMessage" runat="server" Text="Message" Font-Names="Roboto Slab" ForeColor="#000000" Font-Bold="true" Font-Size="Medium"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtMessage" runat="server" Text="" BorderStyle="Solid" BorderColor="#000000" Required="true" Placeholder="Enter your Message" TextMode="MultiLine" Rows="6" Columns="50"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                <asp:Button ID="BTNSUMMIT" runat="server" Text="Submit Message" OnClick="BTNSUMMIT_Click" Font-Bold="true" BorderColor="#000000" BorderStyle="Solid" />
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <asp:Label ID="ErrorMessageLabel" runat="server" CssClass="error-message" Visible="false" ForeColor="Red" Font-Bold="true" />
        <asp:Label ID="SuccessMessageLabel" runat="server" CssClass="error-message" Visible="false" ForeColor="Green" Font-Bold="true" />
</asp:Content>