using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace StudentManageSystem_WF
{
    public class StuDelete : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {           
            // 获取请求者发送的数据
            var id = context.Request.Params["id"];

            // 操作数据库，执行删除任务
            DbHelper.DoExecuteNonQuery("delete from students where id = @id", new SqlParameter("@id", id));

            // 返回相应页面
            context.Response.Redirect($"/StuList");
        }

        public bool IsReusable => false;
    }
}