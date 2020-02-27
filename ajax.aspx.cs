using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ajax : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = DateTime.Now.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Label1.Font.Size = FontUnit.Point(Convert.ToInt32(TextBox1.Text));

        }
        catch {

            Response.Write("错误");
        }
    }
    protected void Timer1_Tick1(object sender, EventArgs e)
    {
        Label2.Text = DateTime.Now.ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        System.Threading.Thread.Sleep(3000);
        Label3.Text = "成功";
    }
}