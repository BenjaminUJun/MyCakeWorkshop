<%@ Page Title="" Language="C#" MasterPageFile="~/ASS2/MasterPage.master" AutoEventWireup="true" CodeFile="DisplayCustomers.aspx.cs" Inherits="ASS2_LOCKED_DisplayCustomers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .master_page_contents {
            margin-bottom: 10px;
        }
        .customersGrid {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">  
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString9 %>" ProviderName="<%$ ConnectionStrings:ConnectionString9.ProviderName %>" SelectCommand="SELECT * FROM [UserInfo] ORDER BY [ID]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString10 %>" ProviderName="<%$ ConnectionStrings:ConnectionString10.ProviderName %>" 
        SelectCommand="SELECT * FROM [UserInfo] WHERE ([ID] = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblDisplayCustomerSeleted" Name="ID" PropertyName="Text" Type="String" />
            </SelectParameters>
    </asp:SqlDataSource>
    <div id="display_customer_Main">
            <div id="content_page_title">The customers' information</div>  
        <div class="cleaner_h10"></div>   
        
        <asp:GridView ID="customers" runat="server"
            DataSourceID="SqlDataSource1"
            HeaderStyle-CssClass="customersHeader"
            CssClass="customersGrid"
            AlternatingRowStyle-CssClass="customersAlternate"
            RowStyle-CssClass="customersRow" AutoGenerateColumns="false"
            OnRowCommand="displayData" Font-Names="Arial Unicode MS" ForeColor="#FFFFCC" Height="249px" Width="675px">

            <AlternatingRowStyle CssClass="customersAlternate"></AlternatingRowStyle>

            <Columns>
                <asp:BoundField DataField="ID"
                    HeaderText="Customer ID" ReadOnly="True"
                    ItemStyle-CssClass="customerItem">
                    <ItemStyle CssClass="customerItem"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="UserName"
                    HeaderText="Customer Name" ItemStyle-CssClass="customerItem">
                    <ItemStyle CssClass="customerItem"></ItemStyle>
                </asp:BoundField>
                <asp:HyperLinkField DataTextField="Mailbox"
                    HeaderText="Email Address"
                    DataNavigateUrlFields="Mailbox"
                    DataNavigateUrlFormatString="~/ASS2/LOCKED/Mailbox.aspx"
                    ItemStyle-CssClass="customerItem">
                    <ItemStyle CssClass="customerItem"></ItemStyle>
                </asp:HyperLinkField>
                <asp:BoundField DataField="Age"
                    HeaderText="Age" DataFormatString="{0:D}"
                    ItemStyle-CssClass="customerItem">
                    <ItemStyle CssClass="customerItem"></ItemStyle>
                </asp:BoundField>
                <asp:ButtonField ButtonType="Button" Text="Display" HeaderText="Display"
                    ItemStyle-CssClass="customerItem">
                    <ItemStyle CssClass="customerItem"></ItemStyle>
                </asp:ButtonField>
            </Columns>

            <HeaderStyle CssClass="customersHeader" Font-Names="Arial Unicode MS" Font-Size="Medium"></HeaderStyle>

            <RowStyle CssClass="customersRow" Font-Italic="False" Font-Names="Arial Unicode MS" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle"></RowStyle>
        </asp:GridView>    
           
         <div class="cleaner_h10"></div>  
         
         <div><asp:Label ID="Label1" runat="server"
            CssClass="customerLabel" Font-Names="Arial Unicode MS" Font-Size="Medium" ForeColor="#FFFFCC">The information of the customer</asp:Label>
             &nbsp<asp:Label ID="lblDisplayCustomerSeleted" runat="server"
            CssClass="customerLabel" Font-Names="Arial Unicode MS" Font-Size="Medium" ForeColor="#FFFFCC" />&nbsp
             <asp:Label ID="Label2" runat="server"
            CssClass="customerLabel" Font-Names="Arial Unicode MS" Font-Size="Medium" ForeColor="#FFFFCC"> is displayed in following table.</asp:Label>
        </div>
        <div class="cleaner_h5"></div>  
         
        <asp:ListView runat="server" ID="singleCustomer">
            <ItemTemplate>
                <table >
                    <tr>
                        <td></td>
                        <td >
                            <asp:Label ID="Label1" runat="server"
            CssClass="customerLabel" Font-Names="Arial Unicode MS" Font-Size="Medium" ForeColor="#FFFFCC"><b>User Name: <%# Eval("UserName") %></b><br /></asp:Label>
                            <asp:Label ID="Label3" runat="server"
            CssClass="customerLabel" Font-Names="Arial Unicode MS" Font-Size="Medium" ForeColor="#FFFFCC">Gender: <%# Eval("Gender") %><br /></asp:Label>
                            <asp:Label ID="Label4" runat="server"
            CssClass="customerLabel" Font-Names="Arial Unicode MS" Font-Size="Medium" ForeColor="#FFFFCC">Mailbox: <%# Eval("Mailbox") %><br /></asp:Label>
                            <asp:Label ID="Label5" runat="server"
            CssClass="customerLabel" Font-Names="Arial Unicode MS" Font-Size="Medium" ForeColor="#FFFFCC">Age: <%# Eval("Age","{0:D}") %><br /></asp:Label>
                            <asp:Label ID="Label6" runat="server"
            CssClass="customerLabel" Font-Names="Arial Unicode MS" Font-Size="Medium" ForeColor="#FFFFCC">Question: <%# Eval("Question") %><br /></asp:Label>
                            <asp:Label ID="Label7" runat="server"
            CssClass="customerLabel" Font-Names="Arial Unicode MS" Font-Size="Medium" ForeColor="#FFFFCC">Answer: <%# Eval("Answer") %><br /></asp:Label>
                            <asp:Label ID="Label8" runat="server"
            CssClass="customerLabel" Font-Names="Arial Unicode MS" Font-Size="Medium" ForeColor="#FFFFCC">Profession: <%# Eval("Profession") %></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:ListView> 
          <div class="cleaner_h60"></div>  
         <div class="homeFooter">
           <div class="codeLink">
                <div style="float: left; height: 30px;">
                <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/ASS2/IMG/displayrecord.png" NavigateUrl="~/ASS2/DisplayCode.aspx?key=LOCKED/DisplayCustomers.aspx" Target="_blank" ImageHeight="30px" ImageWidth="120px"></asp:HyperLink>
                </div>
                <div style="float: right; height: 30px;">
                <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="~/ASS2/IMG/clickforsearch.png" NavigateUrl="~/ASS2/LOCKED/SearchCustomers.aspx" Target="_blank" ImageHeight="30px" ImageWidth="120px"></asp:HyperLink>
                </div>
            </div>
        </div> 
    </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>

