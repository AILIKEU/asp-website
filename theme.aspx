<%@ Page Language="C#" AutoEventWireup="true" CodeFile="theme.aspx.cs" Inherits="theme" Theme="主题1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>主题设计使用</title>

        <style>
    body
           {
               font-size:17px;
               color:White;
               margin:0;
               padding:0;}
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


    <form id="form1" runat="server">

    <div>
        <asp:Label ID="Label1" runat="server" Text="p198"></asp:Label>
        <br />
<asp:Button ID="Button1" runat="server" Text="关灯" onclick="Button1_Click1" />
<asp:Button ID="Button2" runat="server" Text="开灯" onclick="Button2_Click" />


        <a href=index.aspx><img class="return" src="img/back.gif"/></a>
    </div>
    
    </form>
</body>
</html>
