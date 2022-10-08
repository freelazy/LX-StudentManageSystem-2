<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StuAdd.aspx.cs" Inherits="StudentManageSystem_WF.StuAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        #form1 > div > span 
        {
            color: red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <span>学生编号：</span>
            <asp:TextBox runat="server" id="txtId"/>
        </div>
         <span>学生姓名：</span>
         <asp:TextBox runat="server" id="txtName"/><br />
        学生地址：<asp:TextBox runat="server" id="txtHomecity"/><br />
        <asp:Button id="btnAdd" runat="server" OnClick="btnAdd_Click"/>
    </form>
</body>
</html>
