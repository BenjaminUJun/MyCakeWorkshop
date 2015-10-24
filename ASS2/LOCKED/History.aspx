<%@ Page Title="" Language="C#" MasterPageFile="~/ASS2/MasterPage.master" AutoEventWireup="true" CodeFile="History.aspx.cs" Inherits="ASS2_LOCKED_History" %>

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

    <div id="ourhistorymain">
        <div id="content_page_title">Our History</div>
        <div class="cleaner_h5"></div>

    
            <asp:Label ID="Label2" runat="server" Text="<br /><bold><div style='font-size:23px'>history content</div></bold><br/><p>This website was developed by Yu Jun & Pan Jingming, only for making the customer more easily find their favorite cake in the app, our goal is to make sure every one that has visisted our website would be able to find their desirable cake.</p>" ForeColor="#CCFFFF" Font-Size="Medium" Font-Names="Arial Unicode MS"></asp:Label>
            
        <div class="cleaner_h60"></div>
        
           <asp:Label ID="Label6" runat="server" Text="Contact us:<a href='121.41.22.67/FIT5192_2015/26346931_ass2'>Home</a><br/>" ForeColor="#CCFFFF" Font-Size="Medium" Font-Names="Arial Unicode MS"></asp:Label>
             <asp:Label ID="Label7" runat="server" Text="Phone:15150422418/18662219952 <br/>" ForeColor="#CCFFFF" Font-Size="Medium" Font-Names="Arial Unicode MS"></asp:Label>
            <asp:Label ID="Label8" runat="server" Text="E-mail:jpan65@student.monash.edu/yjun103@student.monash.edu <br/>" ForeColor="#CCFFFF" Font-Size="Medium" Font-Names="Arial Unicode MS"></asp:Label>
            <asp:Label ID="Label9" runat="server" Text="QQ:995172779/365475823 <br/>" ForeColor="#CCFFFF" Font-Size="Medium" Font-Names="Arial Unicode MS"></asp:Label>
    
        <div class="cleaner_h20"></div>
    </div>  
        
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>
