<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StuUpdate.aspx.cs" Inherits="StudentManageSystem_WF.StuUpdate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        学生编号：<asp:TextBox runat="server" id="txtId"/><br />
        学生姓名：<asp:TextBox runat="server" id="txtName"/><br />
        学生地址：<asp:TextBox runat="server" id="txtHomecity"/><br />
        <asp:Button id="btnUpdate" runat="server" Text="修改" OnClick="btnUpdate_Click"/>
    </form>
</body>
</html>
