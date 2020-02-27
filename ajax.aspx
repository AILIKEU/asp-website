<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ajax.aspx.cs" Inherits="ajax" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AJAX技术</title>
      <style>
    body
           {
               font-size:17px;
               color:Black;
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
<div style="position:absolute; width:100%; height:100%; z-index:-1"> 
<img style="position:fixed;" src="img/ajax/background.png" height="100%" width="100%" /> 
</div> 
    <form id="form1" runat="server">
    <div>
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
              <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
              <br />
              <br />
                p322
                <asp:Label ID="Label1" runat="server" Text="这是一串字符" Font-Size="12px"></asp:Label>
<br />
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="改变" />
                <br />
                <br />
                <br />
                p323
              <asp:Timer ID="Timer1" runat="server" ontick="Timer1_Tick1" Interval="1000">
                </asp:Timer>

                <br />
                p327 
                <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                <ProgressTemplate>
                正在操作中，请稍后。。。。
                </ProgressTemplate>
                </asp:UpdateProgress>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                <asp:Button ID="Button2" runat="server" Text="进度更新" onclick="Button2_Click" />
            </ContentTemplate>
        </asp:UpdatePanel>
        
        </div>
        <div>
        </div>
          <a href=index.aspx><img class="return" src="img/back.gif"/></a>
    </div>
    </form>
</body>
</html>
