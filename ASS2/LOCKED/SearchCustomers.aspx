<%@ Page Title="" Language="C#" MasterPageFile="~/ASS2/MasterPage.master" AutoEventWireup="true" CodeFile="SearchCustomers.aspx.cs" Inherits="ASS2_LOCKED_SearchCustomers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .master_page_contents {
            margin-bottom: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div id="display_customer_Main">
            <div id="content_page_title">Search For Customers</div>  
        <div class="cleaner_h20"></div>
        <asp:sqldatasource runat="server" id="search" ConnectionString="<%$ ConnectionStrings:ConnectionString11 %>" ProviderName="<%$ ConnectionStrings:ConnectionString11.ProviderName %>"></asp:sqldatasource>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Selected="True">UserID</asp:ListItem>
            <asp:ListItem>UserName</asp:ListItem>
            <asp:ListItem>Profession</asp:ListItem>
            <asp:ListItem>Age</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" /><br />
        <div class="cleaner_h30"></div> 
        <asp:GridView ID="GridView1" runat="server" Font-Names="Arial Unicode MS" Font-Size="Medium" ForeColor="#FFFFCC" Height="147px" Width="675px"></asp:GridView>
        <asp:Label ID="Label1" runat="server" Font-Names="Arial Unicode MS" Font-Size="Medium" ForeColor="#FFFFCC"></asp:Label>
        <br />
        <div class="childFooter">    
    <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/ASS2/IMG/search.png" NavigateUrl="~/ASS2/DisplayCode.aspx?key=LOCKED/SearchCustomers.aspx" Target="_blank" ImageHeight="30px" ImageWidth="120px"></asp:HyperLink>
    </div>
    </div>  
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>


