<%@ Page Title="" Language="C#" MasterPageFile="~/ASS2/MasterPage.master" AutoEventWireup="true" CodeFile="Enrolment.aspx.cs" Inherits="ASS2_Enrolment" %>
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

    <div id="regMain">
            <div id="content_page_title">Registration</div>  
        <div class="cleaner_h5"></div>  
        <div id="Access_data_source">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" 
                DeleteCommand="DELETE FROM [UserInfo] WHERE [ID] = ?" 
                InsertCommand="INSERT INTO [UserInfo] ([ID], [UserName], [Password], [Gender], [Mailbox], [Age], [Question], [Answer], [Profession]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)" 
                ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" 
                SelectCommand="SELECT * FROM [UserInfo]" 
                UpdateCommand="UPDATE [UserInfo] SET [UserName] = ?, [Password] = ?, [Gender] = ?, [Mailbox] = ?, [Age] = ?, [Question] = ?, [Answer] = ?, [Profession] = ? WHERE [ID] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                    <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Mailbox" Type="String" />
                    <asp:Parameter Name="Age" Type="Int32" />
                    <asp:Parameter Name="Question" Type="String" />
                    <asp:Parameter Name="Answer" Type="String" />
                    <asp:Parameter Name="Profession" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Mailbox" Type="String" />
                    <asp:Parameter Name="Age" Type="Int32" />
                    <asp:Parameter Name="Question" Type="String" />
                    <asp:Parameter Name="Answer" Type="String" />
                    <asp:Parameter Name="Profession" Type="String" />
                    <asp:Parameter Name="ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            </div>  <!-- end of datasource defination-->
    
        <div id="leftPanel">
            <div class="box">
                <div class="box2">
                    <asp:Label ID="User_Name" runat="server" Text="User Name" ForeColor="#CCFFCC"></asp:Label>
                    <asp:TextBox ID="UserNameText" runat="server" SkinID="tBox" ForeColor="#0A3262" Width="165px"></asp:TextBox>
                </div>
                <div class="box3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorNm" runat="server" ErrorMessage="*" ForeColor="#CCFFCC" ControlToValidate="UserNameText" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="box">
                <div class="box2">
                    <asp:Label ID="Password" Text="Password" runat="server" ForeColor="#CCFFCC"></asp:Label>
                    <asp:TextBox ID="PasswordText" runat="server" SkinID="pBox" TextMode="Password" MaxLength="8" ForeColor="#0A3262" Width="165px"></asp:TextBox>
                </div>
                <div class="box3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPw" runat="server" ErrorMessage="*" ForeColor="#CCFFCC" ControlToValidate="PasswordText" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="box">
                <div class="box2">
                    <asp:Label ID="Confirm" runat="server" Text="Confirm" ForeColor="#CCFFCC"></asp:Label>
                    <asp:TextBox ID="ConfirmText" runat="server" SkinID="pBox" TextMode="Password" MaxLength="8" ForeColor="#0A3262" Width="165px"></asp:TextBox>
                </div>
                <div class="box4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorCf" runat="server" ErrorMessage="*" ControlToValidate="ConfirmText" Display="Dynamic" ForeColor="#CCFFCC"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidatorCf" runat="server" ErrorMessage="Error" ControlToCompare="PasswordText" ControlToValidate="ConfirmText" ForeColor="#CCFFCC"></asp:CompareValidator>
                </div>
            </div>
            <div class="box">
                <div class="box2">
                    <asp:Label ID="Age" runat="server" Text="Age" ForeColor="#CCFFCC"></asp:Label>
                    <asp:TextBox ID="AgeText" runat="server" SkinID="tBox" ForeColor="#0A3262" Width="165px"></asp:TextBox>
                </div>
                <div class="box4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorAge" runat="server" ErrorMessage="*" ControlToValidate="AgeText" Display="Dynamic" ForeColor="#CCFFCC"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidatorAge" runat="server" ErrorMessage="Error" ForeColor="#CCFFCC" MaximumValue="120" MinimumValue="1" ControlToValidate="AgeText" Type="Integer"></asp:RangeValidator>
                </div>
            </div>
            <div class="box">
                <div class="box2">
                    <asp:Label ID="E_mail" Text="Mailbox" runat="server" ForeColor="#CCFFCC"></asp:Label>
                    <asp:TextBox ID="MailboxText" runat="server" SkinID="tBox" ForeColor="#0A3262" Width="165px"></asp:TextBox>
                </div>
                <div class="box4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEml" runat="server" ErrorMessage="*" ControlToValidate="MailboxText" Display="Dynamic" ForeColor="#CCFFCC"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorEml" runat="server" ValidationExpression=".*@.*\..*" ControlToValidate="MailboxText" ErrorMessage="Error" ForeColor="#CCFFCC"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="box2">
                <asp:Label ID="Question" runat="server" Text="Question" ForeColor="#CCFFCC"></asp:Label>
                <asp:DropDownList ID="QuestionList" runat="server" SkinID="qList" ForeColor="#0A3262" Width="174px">
                    <asp:ListItem>What is your movie?</asp:ListItem>
                    <asp:ListItem>What is your lucky NO.?</asp:ListItem>
                    <asp:ListItem>Who is your father?</asp:ListItem>
                    <asp:ListItem>What is your motor?</asp:ListItem>
                    <asp:ListItem>What is your school?</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="box">
                <div class="box2">
                    <asp:Label ID="Answer" runat="server" Text="Answer" ForeColor="#CCFFCC"></asp:Label>
                    <asp:TextBox ID="AnswerText" runat="server" SkinID="tBox" ForeColor="#0A3262" Width="165px"></asp:TextBox>
                </div>
                <div class="box6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorAn" runat="server" ErrorMessage="*" ControlToValidate="AnswerText" Display="Dynamic" ForeColor="#CCFFCC"></asp:RequiredFieldValidator>
                </div>
            </div>
        </div>
        <div id="rightPanel">
        <div class="gender"><asp:Label ID="Gender" runat="server" Text="Gender" ForeColor="#CCFFCC"></asp:Label>
            <div><asp:RadioButtonList ID="RadioButtonGender" runat="server" SkinID="rbList" ForeColor="#CCFFCC" CellPadding="0" CellSpacing="5" RepeatDirection="Horizontal">
                <asp:ListItem Selected="True">Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList></div>
        </div>      
       
        
        <div class="Ld"><asp:Label ID="ProfessionLb" runat="server" Text="Profession" ForeColor="#CCFFCC"></asp:Label>
            <div class="ddlist"><asp:ListBox ID="ProfessionList" runat="server" SkinID="dpm" ForeColor="#0A3262" Width="179px">
                <asp:ListItem Selected="True">Information Technology</asp:ListItem>
                <asp:ListItem>Medicine</asp:ListItem>
                <asp:ListItem>Education</asp:ListItem>
                <asp:ListItem>Literature</asp:ListItem>
                <asp:ListItem>Management</asp:ListItem>
                <asp:ListItem>Clergy</asp:ListItem>
                <asp:ListItem>Others</asp:ListItem>
            </asp:ListBox></div>
        </div>
        </div>
        <div id="agree">
            <div class="agree2">
                <asp:CheckBox runat="server" Text="" ID="cb" OnCheckedChanged="cb_CheckedChanged" AutoPostBack="True"  Checked="True" />
              <a href="LicenseAgreement.pdf"> I have read and agreed to the Service Agreement</a>
            </div>    
        </div>
        <div class="sign">
            <div class="sign2">
            <asp:Button ID="regisButton" runat="server" Text="Sign up" onclick="AddRecord" ForeColor="#0A3262"/></div>
        </div>  
        <div class="userInfo">
             <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
    </div> 
           <div class="codeLink">
                <div style="float: left; height: 30px;">
                <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/ASS2/IMG/addrecords.png" NavigateUrl="~/ASS2/DisplayCode.aspx?key=Enrolment.aspx" Target="_blank" ImageHeight="30px" ImageWidth="120px"></asp:HyperLink>
                </div>
               <div style="float: right; height: 30px;">
                <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="~/ASS2/IMG/click.png" NavigateUrl="~/ASS2/LOCKED/DisplayCustomers.aspx" Target="_blank" ImageHeight="30px" ImageWidth="120px"></asp:HyperLink>
                </div>
            </div>           
</asp:Content>   
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>