<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StuDetail.aspx.cs" Inherits="StudentManageSystem_WF.StuDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        学生编号：<asp:Label runat="server" ID="txtId"/><br/>
        学生姓名：<asp:Label runat="server" ID="txtName"/><br/>
        学生地址：<asp:Label runat="server" ID="txtHomecity"/><br/>
        学生电话：<asp:Label runat="server" ID="txtTelephone"/><br/>
        学生状态：<asp:Label runat="server" ID="txtState"/><br/>
    </form>
</body>
</html>
