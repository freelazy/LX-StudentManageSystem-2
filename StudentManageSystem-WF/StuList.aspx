<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StuList.aspx.cs" Inherits="StudentManageSystem_WF.StuList" %>

<html>
<head>
    <style>
        header {
            display: flex;
            justify-content: space-between;
        }
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
            padding: 5px 2em;
        }
        a {
            text-decoration: none;
        }
    </style>
</head>
<body>
    <header>
        <h3> 学生列表 </h3>
        <div>
            <span>欢迎您 xxx !</span>
            <span><a href="/logout">注销</a></span>
        </div>
    </header>
    <div>
        <a href='/StuAdd'>添加学生</a>
    </div>
    <asp:Repeater runat="server" ID="rp1">
        <HeaderTemplate>
        <table>
          <tr><th>姓名</th><th>地址</th><th>操作</th></tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td><a href="/StuDetail?id=<%# Eval("id") %>"><%# Eval("name") %></a></td>
                <td><%# Eval("homecity") %></td>
                  <td>
                    <a href='/StuUpdate?id=<%# Eval("id") %>'>编辑</a>
                    <a href='#' onclick='doDelete("<%# Eval("id") %>")'>删除</a>
                  </td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>         
        </table>
        </FooterTemplate>
    </asp:Repeater>

    <script>
        function doDelete(id) {
            if (window.confirm('是不是确定要删除?')) {
                window.location.href = '/StuDelete.ashx?id=' + id;
            }
        }
    </script>
</body>
</html>