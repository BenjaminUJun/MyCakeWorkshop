<%@ Page Title="" Language="C#" MasterPageFile="~/ASS2/MasterPage.master" AutoEventWireup="true" CodeFile="DisplayEnrolments.aspx.cs" Inherits="ASS2_DisplayEnrolments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="childMain">
        <h2 style="border-top-style: outset; border-bottom-style: outset; border-left-style: outset; border-color: #FFFFFF">Submit Info</h2>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString6 %>" ProviderName="<%$ ConnectionStrings:ConnectionString6.ProviderName %>" SelectCommand="SELECT * FROM [UserInfo] WHERE ([UserName] = ?)">
        <SelectParameters>
            <asp:QueryStringParameter Name="userName2" QueryStringField="key" Type="String" />
        </SelectParameters>
        </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" SkinID="gview" AutoGenerateColumns="False" DataKeyNames="UserName" DataSourceID="SqlDataSource1" ForeColor="#FFFFCC" Height="148px" HorizontalAlign="Center" style="margin-left: 0px" Width="647px">
        <Columns>
            <asp:BoundField DataField="UserName" HeaderText="Client Name" ReadOnly="True" SortExpression="UserName" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="Mailbox" HeaderText="Mailbox" SortExpression="Mailbox" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="Profession" HeaderText="Profession" SortExpression="Profession" />
        </Columns>
        <EditRowStyle HorizontalAlign="Center" />
        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
    </asp:GridView>
        </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>
