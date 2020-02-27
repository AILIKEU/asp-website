<%@ Page Language="C#" AutoEventWireup="true" CodeFile="database.aspx.cs" Inherits="database" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>数据库的增删改查</title>
    <style>
        body
           {
               font-size:16px;
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
<img style="position:fixed;" src="img/database/background.png" height="100%" width="100%" /> 
</div> 

    <form id="form1" runat="server">
    <div>
        p217 删除操作：<br />
        学号:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" Text="删除" onclick="Button2_Click" />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        p218 更新操作：<br />
        学号:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        姓名:<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        性别：<asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>男</asp:ListItem>
            <asp:ListItem>女</asp:ListItem>
        </asp:DropDownList>
        年龄:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        地址:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:Button ID="Button3" runat="server" Text="更新" onclick="Button3_Click" />
        <br />
        <br />
        p214 插入操作：<br />
        学号:<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        姓名:<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        性别：<asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>男</asp:ListItem>
            <asp:ListItem>女</asp:ListItem>
        </asp:DropDownList>
        年龄:<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        地址:<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        <asp:Button ID="Button4" runat="server" Text="插入" onclick="Button4_Click" />
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        p208 数据库的连接
        p213 
        查询操作：<br />
        <asp:Label ID="Label1" runat="server" Text="没有数据"></asp:Label>
       
    </div>
        <a href=index.aspx><img class="return" src="img/back.gif"/></a>
    </form>
</body>
</html>
