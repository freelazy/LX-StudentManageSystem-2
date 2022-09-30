<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Students1.aspx.cs" Inherits="StudentManageSystem_WF.Students1" %>
<%@ Import Namespace="System.Data" %>
<html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>学生列表</title>
    <style>
        table, tr, td {
            border: 1px solid grey;
            border-collapse: collapse;
        }
        td {
            padding: 5px 1em;
        }
    </style>
</head>
<body>
    <h3>学生列表</h3>
    <table>
    <% foreach (DataRow dr in studentsDt.Rows) { %>
        <tr>
            <td><%:dr[0] %></td>
            <td><%:dr[1] %></td>
            <td><%:dr[2] %></td>
        </tr>
    <% } %>
    </table>
</body>
</html>
