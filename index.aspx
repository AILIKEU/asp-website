<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASP.NET课程设计总结</title>
   
<style>
body
           {
               margin:0;
               padding:0;}
               div
               {
                   margin:0;
                   padding:0;
                   color:White;
                }
            .style1
            {
                text-align:center;
                }
                
</style>
</head>
<body>
<div style="position:absolute; width:100%; height:100%; z-index:-1"> 
<img style="position:fixed;" src="img/index/background.png" height="100%" width="100%" /> 
</div> 
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="hy"></asp:Label>
        <h1 class="style1">ASP.NET课程设计总结</h1> 
        <p class="style1">1.<a href="buildinobject.aspx"><img src="img/index/bulidinobject.png" /></a></p>
        <p class="style1">2.<a href="servercontrols.aspx"><img src="img/index/servercontrols.png" /></a></p>
        <p class="style1">3.<a href="database.aspx"><img src="img/index/database.png" /></a></p>
        <p class="style1">4.<a href="ajax.aspx"><img src="img/index/ajax.png" /></a></p>
        <p class="style1">5.<a href="theme.aspx"><img src="img/index/theme.png" /></a></p>
         <br/><br/><h1 class="style1">&nbsp;&nbsp;&nbsp;by 王欢 2014122920 网络141</h1>
    </div>
    </form>
</body>
</html>
