using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

public partial class ASS2_LOCKED_Mailbox : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         
    }

    string strPath = "";
    public void SendEmail(object sender, EventArgs e)
    {
        MailMessage newMsg = new MailMessage();
        foreach (GridViewRow customerRow in Customers.Rows)
        {
            CheckBox cb = (CheckBox)customerRow.FindControl("chkMailbox");
            if (cb != null && cb.Checked)
            {
                newMsg.To.Add(new MailAddress(customerRow.Cells[1].Text));
            }
        }
        newMsg.From = new MailAddress("yujunit@qq.com", "Yu Jun");
        newMsg.Subject = txtSubject.Text;
        newMsg.Body = txtMsg.Text;

        bool sendEmail = true;
        if (fileUpload.HasFile)
        {
            if (UpLoadFile(fileUpload.FileName))
            {
                Attachment newAttach = new Attachment(strPath);
                newMsg.Attachments.Add(newAttach);
            }
            else
            {
                sendEmail = false;
            }
        }

        if (sendEmail)
        {
            try
            {
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.qq.com";
                smtp.Port = 25;
                smtp.Credentials = new NetworkCredential("yujunit", "yang0317");
                smtp.Send(newMsg);
                lblMail.Text = "Mail Successfully Sent";
            }
            catch (Exception exc)
            {
                lblMail.Text = exc.Message;
            }
        }
    }


    public bool UpLoadFile(string strFileName)
    {
        bool blnFileOK = false;
        string strExt =
          System.IO.Path.GetExtension(fileUpload.PostedFile.FileName);
        if ((strExt != ".gif") && (strExt != ".jpg"))
        {
            lblMail.Text = "Invalid File Type";
        }
        else
        {
            blnFileOK = true;
            strPath =
              Server.MapPath(".") + "/UploadFiles/" + strFileName;
            fileUpload.PostedFile.SaveAs(strPath);
        }
        return blnFileOK;
    }
}