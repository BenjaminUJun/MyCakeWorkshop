<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DisplayAdRotatorCodes.aspx.vb" Inherits="ASS2_DisplayAdRotator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Display AdRotator</title>
    <link rel="stylesheet" href="~/App_Themes/Style.css" type="text/css" />
</head>
<body>
    <h1 class="pageHeader">Display AdRotator Codes</h1>
    <div class="codeLink1">
                <div style="float: left; height: 155px;">
                <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/ASS2/IMG/default_page.png" NavigateUrl="~/ASS2/DisplayCode.aspx?key=Default.aspx" Target="_blank" ImageHeight="155px" ImageWidth="333px"></asp:HyperLink>
                </div>
        </div>
    <div class="codeLink1">
                <div style="float: left; height: 155px;">
                <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="~/ASS2/IMG/XML.png" NavigateUrl="~/ASS2/DisplayCode.aspx?key=adv.xml" Target="_blank" ImageHeight="155px" ImageWidth="333px"></asp:HyperLink>
                </div>
            </div>
</body>
</html>
