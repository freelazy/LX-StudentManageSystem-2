<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Students2.aspx.cs" Inherits="StudentManageSystem_WF.Students2" %>
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
        .stu-list {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h3>学生列表</h3>
        <div class="stu-list">
            <asp:GridView ID="studentsGV" runat="server" />
        </div>
    </form>

</body>
</html>
