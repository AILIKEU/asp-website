<%@ Page Language="C#" AutoEventWireup="true" CodeFile="servercontrols.aspx.cs" Inherits="servercontrols" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>服务器控件的使用</title>
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
<div style="position:absolute; width:100%; height:80%; z-index:-1"> 
<img style="position:fixed;" src="img/servercontrols/background.jpg" height="100%" width="100%" /> 
</div> 
    <form id="form1" runat="server">

    <div>
      <asp:Label ID="Label2" runat="server" Text="hy" Font-Size="XX-Small" ForeColor="Black"></asp:Label>
         <div>
        p158
        <br/>
        姓名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="RequiredFieldValidator" Text="姓名不能为空" EnableClientScript="True" 
                ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>

        <br />
        密码：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox2" 
                ForeColor="Red">密码不能为空</asp:RequiredFieldValidator>

        <br />
            <asp:Button ID="Button2" runat="server" Text="登录" onclick="Button2_Click" />
            <br />
            <asp:Label ID="Label5" runat="server"></asp:Label>
        </div>
        <br />
        <div>
        p138
            <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                <asp:ListItem>唱歌</asp:ListItem>
                <asp:ListItem>跳舞</asp:ListItem>
                <asp:ListItem>读书</asp:ListItem>
                <asp:ListItem>运动</asp:ListItem>
            </asp:CheckBoxList>
            <asp:Button ID="Button1" runat="server" Text="确定" onclick="Button1_Click" />
            <br />
            <asp:CheckBox ID="CheckBox1" runat="server" 
                oncheckedchanged="CheckBox1_CheckedChanged" />
            改变风格
            <br />
            <asp:CheckBox ID="CheckBox2" runat="server" 
                oncheckedchanged="CheckBox2_CheckedChanged" />
            改变颜色
            <br />
           
               <asp:Label ID="Label1" runat="server" Text="未选择" ></asp:Label>
            <br />
        </div>
        <br />
        <div>
        p141<br/>
            <asp:DropDownList ID="DropDownList1" runat="server" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>请选择一门课程</asp:ListItem>
                <asp:ListItem>ASP.NET</asp:ListItem>
                <asp:ListItem>JSP</asp:ListItem>
                <asp:ListItem>PHP</asp:ListItem>
                <asp:ListItem>数据结构</asp:ListItem>
                <asp:ListItem>操作系统</asp:ListItem>
                <asp:ListItem>数据库原理</asp:ListItem>
            </asp:DropDownList>

            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" 
                onselectedindexchanged="ListBox1_SelectedIndexChanged" SelectionMode="Multiple">
                <asp:ListItem>请选择多门课程</asp:ListItem>
                <asp:ListItem>ASP.NET</asp:ListItem>
                <asp:ListItem>JSP</asp:ListItem>
                <asp:ListItem>PHP</asp:ListItem>
                <asp:ListItem>数据结构</asp:ListItem>
                <asp:ListItem>操作系统</asp:ListItem>
                <asp:ListItem>数据库原理</asp:ListItem>
            </asp:ListBox>
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        </div>
        <a href=index.aspx><img class="return" src="img/back.gif"/></a>
    </div>
    </form>
</body>
</html>
