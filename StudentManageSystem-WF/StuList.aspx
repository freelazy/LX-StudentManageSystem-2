<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StuList.aspx.cs" Inherits="StudentManageSystem_WF.StuList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <a href="/StuAdd">添加学生</a>
        <asp:Button runat="server" Id="btnAdd" Text="添加学生" OnClick="btnAdd_Click"/>
        <asp:Repeater runat="server" ID="rt1">
            <HeaderTemplate>
                <table border="1">
                    <tr>
                        <th>学生编号</th>
                        <th>学生姓名</th>
                        <th>学生地址</th>
                        <th>操作</th>
                    </tr>
                
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td><%# Eval("id") %></td>
                    <td><%# Eval("name") %></td>
                    <td><%# Eval("homecity") %></td>

                    <td>
                        <a href="/StuDetail?id=<%# Eval("id") %>">详情</a>
                        <a href="/StuUpdate?id=<%# Eval("id") %>">修改</a>
                        <a href="/StuDelete?id=<%# Eval("id") %>">删除</a>
                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
    </form>
</body>
</html>
