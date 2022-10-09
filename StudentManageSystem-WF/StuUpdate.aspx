<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StuUpdate.aspx.cs" Inherits="StudentManageSystem_WF.StuUpdate" %>

<html>
<head>
    <style>
        .btn-group {
            padding: 2em;
            display: flex;
            justify-content: space-around;
            width: 200px;
        }
    </style>
</head>
<body>
    <h3> 添加学生 </h3>
    <form runat="server">
        <p>
            <asp:Label ID="warning" runat="server" style="color: red; background: lightyellow; padding: 5px;">
                欢迎您使用此功能
            </asp:Label>
        </p>
        <div>
            <div>
                <span>学号</span>
                <span><asp:TextBox ID="tbId" runat="server" ReadOnly="true"/></span>
            </div>
            <div>
                <span>姓名</span>
                <span><asp:TextBox ID="tbName" runat="server"/></span>
            </div>
            <div>
                <span>电话</span>
                <span><asp:TextBox ID="tbTelephone" runat="server"/></span>
            </div>
            <div>
                <span>地址</span>
                <span><asp:TextBox ID="tbHomecity" runat="server"/></span>
            </div>
            <div>
                <span>读音</span>
                <span><asp:TextBox ID="tbDuyin" runat="server"/></span>
            </div>
            <div>
                <span>状态</span>
                <span><asp:TextBox ID="tbState" runat="server"/></span>
            </div>
        </div>
        <div class='btn-group'>
            <button onclick='goHome(); return false'>返回首页</button>
            <asp:Button Text="保存" runat="server" OnClick="btnUpdate_Click" />
        </div>
    </form>
    <script>
        function goHome() {
            window.location.href = '/StuList';
        }
    </script>
</body>
</html>
