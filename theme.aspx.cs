using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class theme : System.Web.UI.Page
{
    protected void page_PreInit(object sender, EventArgs e)
    { 
        if(Request.QueryString["t"]!=null){
            Page.Theme = Request.QueryString["t"].ToString();
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("theme.aspx?t=主题1");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("theme.aspx?t=主题2");
    }
}