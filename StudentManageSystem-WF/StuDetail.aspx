<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StuDetail.aspx.cs" Inherits="StudentManageSystem_WF.StuDetail" %>

<html>
<head>
    <style>
        table, tr, td {
            border: 1px solid black;
            padding: 5px 1em;
            border-collapse: collapse;
        }
        table {
            margin: 1em;
        }
        tr td:first-child{
            font-weight: bold;
        }
    </style>
</head>
<body>
    <h3> 学生详细信息 </h3>
    <table>
        <tr><td>学号</td><td><%:Student["id"] %></td></tr>
        <tr><td>姓名</td><td><%:Student["name"] %></td></tr>
        <tr><td>地址</td><td><%:Student["homecity"] %></td></tr>
        <tr><td>电话</td><td><%:Student["telephone"] %></td></tr>
    </table>
    <div>
        <button onclick='goHome()'>点我返回首页</button>
    </div>
    <script>
        function goHome() {
            window.location.href = '/StuList';
        }
    </script>
</body>
</html>