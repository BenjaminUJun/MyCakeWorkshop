using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ASS2_LOCKED_SearchCustomers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string select = DropDownList1.SelectedItem.Text;
        //Response.Write(select);
        switch (select)
        {
            case "UserID":
                search.SelectCommand = "SELECT UserName, Gender, Mailbox, Age, Question, Answer, Profession FROM UserInfo WHERE ID LIKE '%" + TextBox1.Text.Trim(' ') + "%'";
                break;
            case "UserName":
                search.SelectCommand = "SELECT  UserName, Gender, Mailbox, Age, Question, Answer, Profession FROM UserInfo WHERE UserName LIKE '%" + TextBox1.Text.Trim(' ') + "%'";
                break;
            case "Profession":
                search.SelectCommand = "SELECT  UserName, Gender, Mailbox, Age, Question, Answer, Profession FROM UserInfo WHERE Profession LIKE '%" + TextBox1.Text.Trim(' ') + "%'";
                break;
            case "Age":
                search.SelectCommand = "SELECT  UserName, Gender, Mailbox, Age, Question, Answer, Profession FROM UserInfo WHERE Age LIKE '%" + TextBox1.Text.Trim(' ') + "%'";
                break;
        }
        if (search.Select(DataSourceSelectArguments.Empty).GetEnumerator().MoveNext())
        {
            GridView1.DataSource = search;
            GridView1.DataBind();
            Label1.Text = "";
        }
        else
            Label1.Text = "No relevant user information! Please try again! ";
    }
}