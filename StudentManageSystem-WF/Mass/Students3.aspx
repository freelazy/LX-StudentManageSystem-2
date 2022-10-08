<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Students3.aspx.cs" Inherits="StudentManageSystem_WF.Students3" %>

<html>
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="DS1" runat="server"
                 SelectCommand="select * from students"
                 ConnectionString="<%$ ConnectionStrings: mydb %>" />
            <asp:GridView DataSourceID="DS1" runat="server" />
        </div>
    </form>
</body>
</html>
