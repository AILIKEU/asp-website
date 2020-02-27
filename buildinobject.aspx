<%@ Page Language="C#" AutoEventWireup="true" CodeFile="buildinobject.aspx.cs" Inherits="bulidinobject" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>内置对象</title>
<style>
    
body
           {
               font-size:26px;
               margin:0;
               padding:0;}
               div
               {
                   margin:0;
                   padding:0;
                }
            .style
            {
                text-align:center;
                }
                .return
                {
                   width:10%;
                   height:10%;
                    position:fixed;
                    bottom:20px;
                    right:20px;
                    }
                
</style>
</head>
<body>
<div style="position:absolute; width:100%; height:80%; z-index:-1"> 
<img style="position:fixed;" src="img/buildinobject/background.png" height="100%" width="100%" /> 
</div> 
    <form id="form1" runat="server" >
    <div class="style1">
    p97
    <a href=buildinobject.aspx?id=2014122920&name=王欢&action=get>Request.QueryString的使用方法</a>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </div>
    <br />
    <div>
        p99 UserHostAddress,Path,Brower<asp:Button ID="Button1" runat="server" Text="测试" 
            onclick="Button1_Click" />
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
    </div>
    <br />
    <div>
    p107 点击创建cookie  
        <asp:Button ID="Button2" runat="server" Text="创建" onclick="Button2_Click" />
        <br />
        点击获取cookie
        <asp:Button ID="Button3" runat="server" Text="获取" onclick="Button3_Click" />
        <br/>
        <asp:Label ID="Label3" runat="server"></asp:Label>
    </div>

    <a href=index.aspx><img class="return" src="img/back.gif"/></a>
    
        
    </form>
</body>
</html>
