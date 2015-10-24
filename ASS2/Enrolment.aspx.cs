using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ASS2_Enrolment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         
    }

    protected void AddRecord(object sender, EventArgs e)
    {
        try
        {
            String name = UserNameText.Text;
            String pw = PasswordText.Text;
            String em = MailboxText.Text;
            String age = AgeText.Text;
            String qt = QuestionList.Text;
            String anw = AnswerText.Text;
            String gd = RadioButtonGender.Text;
            String prv = ProfessionList.Text;
            SqlDataSource1.InsertCommand = "INSERT INTO [UserInfo] ([UserName], [Password], [Mailbox], [Age], [Question], [Answer], [Gender], [Profession]) VALUES ('" + name + "', '" + pw + "', '" + em + "', '" + age + "', '" + qt + "', '" + anw + "', '" + gd + "', '" + prv + "')";
            SqlDataSource1.Insert();

            Response.Redirect("~/ASS2/DisplayEnrolments.aspx?key=" + name);

        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
    }


    protected void cb_CheckedChanged(object sender, EventArgs e)
    {
        if (cb.Checked == true)
            regisButton.Enabled = true;
        else
            regisButton.Enabled = false;
    }
}