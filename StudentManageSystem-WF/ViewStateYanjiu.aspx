<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewStateYanjiu.aspx.cs" Inherits="StudentManageSystem_WF.ViewStateYanjiu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%--
            <p>
                <asp:HiddenField ID="hf1" Value="0" runat="server" />
                这是本页面在 Page 生命中，被访问的第 <asp:Label ID="sd" Text="<%# hf1.Value %>" runat="server"/> 次。
            </p>
            --%>
            <p>
                这是本页面在 Page 生命中，被访问的第 <%: VisitCount %> 次。
            </p>
            <p>
                <asp:TextBox ID="tb1" runat="server" />
                <asp:Button ID="bt1" runat="server" Text="验证" OnClick="bt1_Click" />
            </p>
            <p>
                <asp:Label ID="lb1" runat="server" />
            </p>
        </div>
    </form>
</body>
</html>
