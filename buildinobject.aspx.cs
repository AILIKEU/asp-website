using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class bulidinobject : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Request.QueryString["id"]!=null)
        {
            String text = "<br/>";
            text+="第一个参数为："+Request.QueryString["id"].ToString()+"<br/>";
            text+="第二个参数为："+Request.QueryString["name"].ToString()+"<br/>";
            text+="第三个参数为："+Request.QueryString["action"].ToString()+"<br/><br/>";
            Label1.Text = text;
           
            
        }
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String text = "<br/>";
        text += "UserHostAddress :" + Request.UserHostAddress+"<br/>";
        text += "Path:" + Request.Path.ToString()+"<br/>";
        text += "Brower:" + Request.Browser.ToString()+"<br/>";
        Label2.Text = text;
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("index.aspx");
    }
protected void  Button2_Click(object sender, EventArgs e)
{
    try
    {
         HttpCookie myCookic = new HttpCookie("myCookie");
                myCookic.Value = Server.HtmlEncode("一个Cookie应用");
                myCookic.Expires = DateTime.Now.AddDays(5);
                Response.AppendCookie(myCookic);
                Label3.Text = "Cookie创建成功";

    }
    catch { 
    Label3.Text = "Cookic创建失败";
    
    }
               
}
protected void Button3_Click(object sender, EventArgs e)
{
    //读取cookic
    String ctext = "";
    try
    {
        ctext += "-----------------<br/>";
        ctext += "获取cookie的值<br/>";
        HttpCookie GetCookie = Request.Cookies["myCookie"];
        ctext += "Cookie的值:" + GetCookie.Value.ToString() + "<br/>";
        ctext += "当前时间:" + DateTime.Now.ToString() + "<br/>";
        Label3.Text = ctext;


    }
    catch
    {
         Label3.Text = "Cookie 没有创建";
    }
}
}