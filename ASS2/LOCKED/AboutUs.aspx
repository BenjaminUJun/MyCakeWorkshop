<%@ Page Title="" Language="C#" MasterPageFile="~/ASS2/MasterPage.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="ASS2_LOCKED_About_Us" %>

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
    <asp:SiteMapPath ID="SiteMapPath1" runat="server" ForeColor="#3399FF"> 
      <PathSeparatorTemplate>  
         -->  
       </PathSeparatorTemplate> 
    </asp:SiteMapPath>   

    <div id="aboutUsMain">
            <div id="content_page_title">About Us</div>  
        <div class="cleaner_h5"></div>     

             <asp:Label ID="Label3" runat="server" Text="The website is a personal site, and aims at providing you with good recommendation for the cakes.<br/>" ForeColor="#CCFFFF" Font-Size="Medium" Font-Names="Arial Unicode MS"></asp:Label>
             <asp:Label ID="Label1" runat="server" Text="<br/>The website displays the information and related pictures, its copyright is published by the author or the original media, without the permission of copyright owners, any organization or individual is allowed to use it as a business purpose.<br/>" ForeColor="#CCFFFF" Font-Size="Medium" Font-Names="Arial Unicode MS"></asp:Label>
             <asp:Label ID="Label2" runat="server" Text="<br/>The website is in accordance with the law, and safeguards the rights of copyright owners. If some issues concerned copyright occur, please inform us in time, the site will be deleted immediately after receipt of the notification.<br/>" ForeColor="#CCFFFF" Font-Size="Medium" Font-Names="Arial Unicode MS"></asp:Label>
             <asp:Label ID="Label4" runat="server" Text="<br/>Pan and I would immediately improve the website if we receive any recommendation from the customers.<br/>" ForeColor="#CCFFFF" Font-Size="Medium" Font-Names="Arial Unicode MS"></asp:Label>
             <asp:Label ID="Label5" runat="server" Text="<br/>Best regards with You." ForeColor="#CCFFFF" Font-Size="Medium" Font-Names="Arial Unicode MS"></asp:Label>

            <div class="cleaner_h5"></div>
             <asp:Label ID="Label6" runat="server" Text="Contact us:<br/>" ForeColor="#CCFFFF" Font-Size="Medium" Font-Names="Arial Unicode MS"></asp:Label>
             <asp:Label ID="Label7" runat="server" Text="Phone: 18662219952<br/>" ForeColor="#CCFFFF" Font-Size="Medium" Font-Names="Arial Unicode MS"></asp:Label>
             <asp:Label ID="Label8" runat="server" Text="E-mail: yujun_daxia@163.com<br/>" ForeColor="#CCFFFF" Font-Size="Medium" Font-Names="Arial Unicode MS"></asp:Label>
             <asp:Label ID="Label9" runat="server" Text="QQ: 365475823<br/>" ForeColor="#CCFFFF" Font-Size="Medium" Font-Names="Arial Unicode MS"></asp:Label>
         <div class="cleaner_h20"></div>
        <div class="homeFooter">
            <div class="codeLink32">
                <div style="float: left; height: 30px;">
                <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/ASS2/IMG/aboutus.png" NavigateUrl="~/ASS2/LOCKED/DisplayAbout.aspx" Target="_blank" ImageHeight="30px" ImageWidth="120px"></asp:HyperLink>
                </div>
            </div>
        </div>  
          </div>  
        
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>

