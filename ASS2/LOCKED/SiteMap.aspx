<%@ Page Title="" Language="C#" MasterPageFile="~/ASS2/MasterPage.master" AutoEventWireup="true" CodeFile="SiteMap.aspx.cs" Inherits="ASS2_LOCKED_SiteMap"%>

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

    <div id="siteMapMain">
            <div id="content_page_title">Site Map</div>  
        <div class="cleaner_h40"></div>     
         
         <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMap" ShowLines="True" Font-Names="Arial Unicode MS" Font-Size="Large" ForeColor="#FFFFCC">
    </asp:TreeView>
        <asp:SiteMapDataSource ID="SiteMap" runat="server" />

         <div class="cleaner_h40"></div>    
        <div class="homeFooter">
            <div class="codeLink">
                <div style="float: left; height: 30px;">
                <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="~/ASS2/IMG/sitemap.png" NavigateUrl="~/ASS2/DisplayCode.aspx?key=LOCKED/SiteMap.aspx" Target="_blank" ImageHeight="30px" ImageWidth="120px"></asp:HyperLink>
                </div>
            </div>
        </div> 
          </div>  
        
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>



