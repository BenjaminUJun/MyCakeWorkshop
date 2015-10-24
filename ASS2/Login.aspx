<%@ Page Title="" Language="C#" MasterPageFile="~/ASS2/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="ASS2_Login"  Debug="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .master_page_contents {
            margin-bottom: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:SiteMapPath ID="SiteMapPath1" runat="server" ForeColor="#3399FF">
        <PathSeparatorTemplate>
            -->  
        </PathSeparatorTemplate>
    </asp:SiteMapPath>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString8 %>" ProviderName="<%$ ConnectionStrings:ConnectionString8.ProviderName %>" SelectCommand="SELECT * FROM [UserInfo]" OnSelected="CheckLogin"></asp:SqlDataSource>
    <div id="loginMain">
        <div id="login_page_title" style="margin-left:318px">Login</div>
        <div class="cleaner_h20"></div>
        <div style="margin-left:170px">
        <asp:Login ID="Login" runat="server"
            OnAuthenticate="Login_Authenticate" CssClass="login"
            TitleText="</br>Please enter the user name and password.</br></br>"
            UserNameLabelText="Username:"
            UserNameRequiredErrorMessage="Username required.<p />"
            PasswordLabelText="Password:"
            PasswordRequiredErrorMessage="Password required."
            Height="250" Width="330"
            LoginButtonText="Login" DisplayRememberMe="false" BackColor="#C5607E"  ForeColor="#0A3262">

            <LabelStyle CssClass="loginText" />
            <LoginButtonStyle ForeColor="#0A3262" Font-Names="Arial Unicode MS" />
            <TextBoxStyle ForeColor="#0A3262" />
            <TitleTextStyle CssClass="loginText" />
            <ValidatorTextStyle CssClass="loginValidator" />

        </asp:Login>
            </div>
        <div class="cleaner_h10"></div>
 
      
            &nbsp;<asp:ValidationSummary id="vlSummary1" Font-Names="Arial Unicode MS"  
        Visible="true" CssClass="vldSummary" 
        runat="server" ValidationGroup="Login"  
        HeaderText="Please correct the following errors:" /> 
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>

