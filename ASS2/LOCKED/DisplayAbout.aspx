<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DisplayAbout.aspx.cs" Inherits="ASS2_LOCKED_Display_About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Display About</title>
    <link rel="stylesheet" href="~/App_Themes/Style.css" type="text/css" />
</head>
<body>
    <h1 class="pageHeader">Display About us Code</h1>
    <div class="codeLink1">
                <div style="float: left; height: 155px;">
                <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/ASS2/IMG/aboutus_1.png" NavigateUrl="~/ASS2/DisplayCode.aspx?key=LOCKED/AboutUs.aspx" Target="_blank" ImageHeight="155px" ImageWidth="333px"></asp:HyperLink>
                </div>
        </div>
    <div class="codeLink1">
                <div style="float: left; height: 155px;">
                <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="~/ASS2/IMG/history.png" NavigateUrl="~/ASS2/DisplayCode.aspx?key=LOCKED/History.aspx" Target="_blank" ImageHeight="155px" ImageWidth="333px"></asp:HyperLink>
                </div>
            </div>
    <div class="codeLink1">
                <div style="float: left; height: 155px;">
                <asp:HyperLink ID="HyperLink3" runat="server" ImageUrl="~/ASS2/IMG/question.png" NavigateUrl="~/ASS2/DisplayCode.aspx?key=LOCKED/FAQ.aspx" Target="_blank" ImageHeight="155px" ImageWidth="333px"></asp:HyperLink>
                </div>
            </div>
</body>
</html>
