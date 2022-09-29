<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Students4.aspx.cs" Inherits="StudentManageSystem_WF.Students4" %>
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
            <asp:GridView ID="studentsGV" runat="server"
                ShowFooter="true" 
                AutoGenerateColumns="false"
                AllowSorting="true"
                EmptyDataText="没有查询到任何学生">
                <Columns>
                    <asp:BoundField DataField="name" HeaderText="姓名" SortExpression="id"/>
                    <asp:BoundField DataField="homecity" />
                    <asp:ButtonField ButtonType="Link" Text="dksk" />
                    <asp:CommandField ShowDeleteButton="true" ShowEditButton="true" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <div>
                                <p><%# Eval("name") %> (<%# Eval("homecity") %>)</p>
                                <h3 style="color: red">我是谁</h3>
                                <h5 style="color: green">我就是我，不一样的烟火</h5>
                                <asp:Button ID="dddd" runat="server" Text="我是按钮" />
                            </div>
                        </ItemTemplate>
                        <ItemStyle BackColor="Green" />
                    </asp:TemplateField>
                </Columns>
                <AlternatingRowStyle BackColor="LightBlue" Font-Size="XX-Large"/>
                <HeaderStyle BackColor="Gray" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
