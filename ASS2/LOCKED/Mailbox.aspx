<%@ Page Title="" Language="C#" MasterPageFile="~/ASS2/MasterPage.master" AutoEventWireup="true" CodeFile="Mailbox.aspx.cs" Inherits="ASS2_LOCKED_Mailbox" %>
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
   
    <div id="MailboxMain">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString12 %>" ProviderName="<%$ ConnectionStrings:ConnectionString12.ProviderName %>" SelectCommand="SELECT [UserName], [ID], [Mailbox] FROM [UserInfo]"></asp:SqlDataSource>

        <div id="content_page_title">Send Email</div>
        <div class="cleaner_h5"></div>
        <asp:label id="lblMail" CssClass="error" runat="server" ForeColor="#FFFFCC" Font-Size="Medium" />
        <asp:GridView ID="Customers" runat="server" SkinID="gv3" DataKeyNames="UserName" DataSourceID="SqlDataSource1" Font-Names="Arial Unicode MS" ForeColor="#FFFFCC">
            <Columns>
                <asp:BoundField DataField="UserName" HeaderText="Client Name" ReadOnly="True" SortExpression="UserName" />
                <asp:BoundField DataField="Mailbox" HeaderText="Mailbox" SortExpression="Mailbox" />
                <asp:TemplateField HeaderText="Select">
                    <ItemTemplate>
                        <asp:CheckBox runat="server" ID="chkMailbox" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

        <br />
        <br />
        <table>
            <tr>
                <td> <asp:Label ID="Label1" runat="server"
            CssClass="customerLabel" Font-Names="Arial Unicode MS" Font-Size="Medium" ForeColor="#FFFFCC">Subject</asp:Label></td>
                <td>
                    <asp:TextBox ID="txtSubject" Width="453px" runat="server" ForeColor="#0A3262" Font-Size="Medium" />
                </td>
            </tr>
                    <tr>
          <td><asp:Label ID="Label3" runat="server"
            CssClass="customerLabel" Font-Names="Arial Unicode MS" Font-Size="Medium" ForeColor="#FFFFCC">Attachment</asp:Label>
          </td>
          <td class="emailRow">
            <asp:FileUpload ID="fileUpload" runat="server" Width="439px" />
          </td>
        </tr>
            <tr>
                <td><asp:Label ID="Label2" runat="server"
            CssClass="customerLabel" Font-Names="Arial Unicode MS" Font-Size="Medium" ForeColor="#FFFFCC">Message</asp:Label></td>
                <td>
                    <asp:TextBox runat="server" ID="txtMsg"
                        TextMode="MultiLine" Columns="55" Rows="15" ForeColor="#0A3262" Font-Size="Medium" />
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="SendMail" runat="server"
            OnClick="SendEmail"
            Text="Send Email" ForeColor="#0A3262" />
        <br />
        <br />
           <div class="cleaner_h60"></div>
        <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/ASS2/IMG/email.png" NavigateUrl="~/ASS2/DisplayCode.aspx?key=LOCKED/Mailbox.aspx" Target="_blank" ImageHeight="30px" ImageWidth="120px"></asp:HyperLink>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>