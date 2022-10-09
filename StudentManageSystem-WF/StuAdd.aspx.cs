using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace StudentManageSystem_WF
{
    public partial class StuAdd : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.HttpMethod == "POST")
            {
                // 获取请求者发送的数据
                var id = Request.Params["id"];
                var name = Request.Params["name"];
                var telephone = Request.Params["telephone"];
                var homecity = Request.Params["homecity"];
                var duyin = Request.Params["duyin"];
                var state = Request.Params["state"];

                if (string.IsNullOrEmpty(name))
                {
                    // 做一些相关的校验，并返回之前的页面
                    Response.Redirect("/StuAdd.aspx");
                }

                // 操作数据库，执行添加任务
                int i = DbHelper.DoExecuteNonQuery(
                    @"insert into students (id, [name], homecity, [state], telephone, duyin) VALUES(@id, @name, @homecity, @state, @telephone, @duyin)",
                    new SqlParameter("@id", id),
                    new SqlParameter("@name", name),
                    new SqlParameter("@homecity", homecity),
                    new SqlParameter("@state", state),
                    new SqlParameter("@telephone", telephone),
                    new SqlParameter("@duyin", duyin));

                if (i == 0)
                {
                    Response.Redirect("/StuAdd");
                }
                else
                {
                    //Server.Transfer("/StuList");
                    Response.Redirect($"/StuDetail?id={id}");
                }
            }
        }
    }
}