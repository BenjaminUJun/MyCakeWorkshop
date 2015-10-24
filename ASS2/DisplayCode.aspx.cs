using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ASS2_DisplayCode : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string file2 = Request.QueryString["key"];
        string filePath = Server.MapPath(file2);
        FileName.Text = Request.QueryString[file2];
        FileInfo file = new FileInfo(filePath);
        {
            Code.Text = ReadFile(filePath);
        }
    }
    private string ReadFile(string filepath)
    {
        string fileOutput = "";
        try
        {
            StreamReader FileReader = new StreamReader(filepath);
            while (FileReader.Peek() > -1)
            {
                fileOutput += FileReader.ReadLine().Replace("<", "&lt;").
                Replace("  ", "&nbsp;&nbsp;&nbsp;&nbsp;")
                                      + "<br />";
            }
            FileReader.Close();
        }
        catch (FileNotFoundException e)
        {
            fileOutput = e.Message;
        }
        return fileOutput;
    }
}