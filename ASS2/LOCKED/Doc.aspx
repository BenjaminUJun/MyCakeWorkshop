<%@ Page Title="" Language="C#" MasterPageFile="~/ASS2/MasterPage.master" AutoEventWireup="true" CodeFile="Doc.aspx.cs" Inherits="ASS2_LOCKED_Doc" %>

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

    <div id="DocumentationMain">
        <div id="content_page_title">Documentation</div>
        <div class="cleaner_h10"></div>

        <asp:Label ID="Label6" runat="server" Text="Name:YuJun26346702 &nbsp;PanJingmin26346931" ForeColor="#CCFFFF" Font-Size="Medium" Font-Names="Arial Unicode MS" ></asp:Label>
        <asp:Label ID="Label7" runat="server" Text="<br/>Unit's name:FIT5192 " ForeColor="#CCFFFF" Font-Size="Medium" Font-Names="Arial Unicode MS"></asp:Label>
        <asp:Label ID="Label8" runat="server" Text="<br/>Unit provider:Monash University, The Faculty of Information Technology " ForeColor="#CCFFFF" Font-Size="Medium" Font-Names="Arial Unicode MS"></asp:Label>
        <asp:Label ID="Label9" runat="server" Text="<br/>Email:jpan65@student.monash.edu & jyu103@student.monash.edu" ForeColor="#CCFFFF" Font-Size="Medium" Font-Names="Arial Unicode MS"></asp:Label>
        <asp:Label ID="Label1" runat="server" Text="<br/>Specification: 1) Bootstrap.css and Advertisement are used in this assignment. 2) Jquery was used in this assignment. 3) You would have the notification from Calender if you have previously added an event into the accessDB named DateEvent.accdb. 4) You could also search for the information based on the ID, name, profession and etc. 5) You would be able to see the source code from this website. 5) You can also send emails to multiple users with an attachment in format of .gif or .jpg. 6) Some accesses to some particular pages are denied unless you have your account loggined in. 7) You would be able to see the SiteMap in our website. 8) You would be able to register an account in our website." ForeColor="#CCFFFF" Font-Size="Medium" Font-Names="Arial Unicode MS"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="<br/>Date of submission: 2/09/2015" ForeColor="#CCFFFF" Font-Size="Medium" Font-Names="Arial Unicode MS"></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="<br/>Lecture's Name:Grace Xie " ForeColor="#CCFFFF" Font-Size="Medium" Font-Names="Arial Unicode MS"></asp:Label>
        <asp:Label ID="Label4" runat="server" Text="<br/>Email Link:" ForeColor="#CCFFFF"></asp:Label><a href="mailto:jyu103@student.monash.edu"><a href="mailto:jpan65@student.monash.edu">author</a></a>
        <asp:Label ID="Label29" runat="server" Text="&nbsp;&nbsp&nbsp;&nbsp;Assignment Link:" ForeColor="#CCFFFF"></asp:Label><a href="FIT5192-Assignment2-2015.pdf">Assignment</a><br/>
        <div class="cleaner_h10"></div>
        <table class="tb" border="1">
        <tr>
            <th><asp:Label ID="Label10" runat="server" Text="Image Name" ForeColor="#CCFFFF" Font-Size="Medium" Font-Names="Arial Unicode MS"></asp:Label></th>
            <th><asp:Label ID="Label5" runat="server" Text="Image Source" ForeColor="#CCFFFF" Font-Size="Medium" Font-Names="Arial Unicode MS"></asp:Label></th>
        </tr>
        <tr>
            <td><asp:Label ID="Label11" runat="server" Text="about.jpg" ForeColor="#CCFFFF" Font-Size="Medium" Font-Names="Arial Unicode MS"></asp:Label></td>
            <td><asp:Label ID="Label12" runat="server" Text="http://www.163.com" ForeColor="#CCFFFF" Font-Size="Medium" Font-Names="Arial Unicode MS"></asp:Label></td>
            </tr>
        <tr>
            <td><asp:Label ID="Label13" runat="server" Text="img1.jpg" ForeColor="#CCFFFF" Font-Size="Medium" Font-Names="Arial Unicode MS"></asp:Label></td>
            <td><asp:Label ID="Label14" runat="server" Text="http://www.qq.com" ForeColor="#CCFFFF" Font-Size="Medium" Font-Names="Arial Unicode MS"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label15" runat="server" Text="m1.jpg" ForeColor="#CCFFFF" Font-Size="Medium" Font-Names="Arial Unicode MS"></asp:Label></td>
            <td><asp:Label ID="Label16" runat="server" Text="http://book.douban.com" ForeColor="#CCFFFF" Font-Size="Medium" Font-Names="Arial Unicode MS"></asp:Label></td>
            </tr>
        <tr>
            <td><asp:Label ID="Label17" runat="server" Text="pic1.jpg" ForeColor="#CCFFFF" Font-Size="Medium" Font-Names="Arial Unicode MS"></asp:Label></td>
            <td><asp:Label ID="Label18" runat="server" Text="http://www.ifeng.com" ForeColor="#CCFFFF" Font-Size="Medium" Font-Names="Arial Unicode MS"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label19" runat="server" Text="14.jpg" ForeColor="#CCFFFF" Font-Size="Medium" Font-Names="Arial Unicode MS"></asp:Label></td>
            <td><asp:Label ID="Label20" runat="server" Text="http://www.google.com" ForeColor="#CCFFFF" Font-Size="Medium" Font-Names="Arial Unicode MS"></asp:Label></td>
            </tr>
        <tr>
            <td><asp:Label ID="Label21" runat="server" Text="img2.jpg" ForeColor="#CCFFFF" Font-Size="Medium" Font-Names="Arial Unicode MS"></asp:Label></td>
            <td><asp:Label ID="Label22" runat="server" Text="http://www.facebook.com" ForeColor="#CCFFFF" Font-Size="Medium" Font-Names="Arial Unicode MS"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label23" runat="server" Text="foot.jpg" ForeColor="#CCFFFF" Font-Size="Medium" Font-Names="Arial Unicode MS"></asp:Label></td>
            <td><asp:Label ID="Label24" runat="server" Text="http://www.twitter.com" ForeColor="#CCFFFF" Font-Size="Medium" Font-Names="Arial Unicode MS"></asp:Label></td>
            </tr>
        <tr>
            <td><asp:Label ID="Label25" runat="server" Text="img3.jpg" ForeColor="#CCFFFF" Font-Size="Medium" Font-Names="Arial Unicode MS"></asp:Label></td>
            <td><asp:Label ID="Label26" runat="server" Text="http://www.sohu.com" ForeColor="#CCFFFF" Font-Size="Medium" Font-Names="Arial Unicode MS"></asp:Label></td>
        </tr>
    </table>
        <div class="cleaner_h10"></div>
         <div class="homeFooter">
            <div class="codeLink32">
                <div style="float: left; height: 25px;">
                <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/ASS2/IMG/CSS.png" NavigateUrl="~/ASS2/DisplayCode.aspx?key=~/App_Themes/Style.css" Target="_blank" ImageHeight="25px" ImageWidth="120px"></asp:HyperLink>
                </div>
                <div style="float: right; height: 25px;">
                <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="~/ASS2/IMG/skin.png" NavigateUrl="~/ASS2/DisplayCode.aspx?key=~/App_Themes/style.skin" Target="_blank" ImageHeight="25px" ImageWidth="120px"></asp:HyperLink>
                </div>
            </div>
        </div>  
    </div>  
        
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>


