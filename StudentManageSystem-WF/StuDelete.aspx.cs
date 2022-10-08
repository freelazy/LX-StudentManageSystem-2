using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManageSystem_WF
{
    public partial class StuDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            //DbHelper.DoExecuteNonQuery("delete students where id='" + id+"'");
            //DbHelper.DoExecuteNonQuery($"delete students where id='{id}'");
            DbHelper.DoExecuteNonQuery("delete students where id=@id",
                new System.Data.SqlClient.SqlParameter("id", id));
            Response.Redirect("/StuList.aspx");
        }
    }
}