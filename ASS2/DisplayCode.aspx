<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="DisplayCode.aspx.cs" Inherits="ASS2_DisplayCode"%>
<%@ Import Namespace="System.IO" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Display Code</title>
    <link rel="stylesheet" href="~/App_Themes/Style.css" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1 class="pageHeader">Source Code</h1>
  <asp:label id="FileName" 
          CssClass="codeheader" Runat="server"/>
  <asp:Panel id="pnlCode" CssClass="code" 
    runat="server" Width="80%">
    <asp:label id="Code" Runat="server" />
  </asp:Panel>

        
    </div>
    </form>
    <div class="codeLink">
                <div style="float: left; height: 30px;">
                <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/ASS2/IMG/HOME.png" NavigateUrl="~/ASS2/Default.aspx" Target="_blank" ImageHeight="30px" ImageWidth="120px"></asp:HyperLink>
                </div>
            </div>
</body>
</html>

