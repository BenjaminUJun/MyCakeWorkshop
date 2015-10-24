using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ASS2_LOCKED_DisplayCustomers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    { 

    }
    protected void displayData(object sender, GridViewCommandEventArgs e)
    {
        lblDisplayCustomerSeleted.Text = customers.Rows[Convert.ToInt32(e.CommandArgument)].Cells[0].Text;
        singleCustomer.DataSource = SqlDataSource2;
        singleCustomer.DataBind();
    } 
 
}