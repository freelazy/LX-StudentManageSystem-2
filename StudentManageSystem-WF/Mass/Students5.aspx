<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Students5.aspx.cs" Inherits="StudentManageSystem_WF.Students5" %>
<%@ Register Src="~/MyLogin.ascx" TagName="MyLogin" TagPrefix="fl" %>

<html>
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <fl:MyLogin runat="server" DefaultUsername="xxx" />
        </div>
        <div>
            <%--<asp:Repeater ID="sl" runat="server">
                <HeaderTemplate>
                    <table border="1" style="border-collapse: collapse">
                        <tr><th colspan="2">头</th></tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr><td><%# Eval("name") %></td><td><%# Eval("homecity") %></td></tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>--%>

            <asp:Repeater ID="sl" runat="server">
                <HeaderTemplate>
                    <ul>
                </HeaderTemplate>
                <ItemTemplate>
                    <li><%# Eval("name") %>, <%# Eval("homecity") %></li>
                </ItemTemplate>
                <FooterTemplate>
                    </ul>
                </FooterTemplate>
            </asp:Repeater>

            <%--

            <%=Request["id"] %>
            <%=Request.QueryString["id"] %>
            <%=Request.Form["id"] %>
            <%=Request.Params["id"] %>
            <%=Request.Files["id"] %>
            <%=Request.UserAgent %>
            <%=Request.Headers["location"] %>

            <%=Request.Cookies["Asp_Net.SessionId"] %>
            <%=Response.Cookies["ssss"] %>
            
            <%=ViewState["kkkkk"] %>   
            <% ViewState["kkkkk"] = 333; %>

            <%=Session["ksdkfj"] %>

            <% Application["网站url"] = "xxxx"; %>
            <%=Application["总共访问的数目"] %>
            <p>访问次数: <%= new Random().Next() %></p>

            <%=Server.MapPath("/UploadedFiles") %>
            <% Server.Transfer("Logon.aspx", true); %>

            --%>
        </div>
    </form>
</body>
</html>
