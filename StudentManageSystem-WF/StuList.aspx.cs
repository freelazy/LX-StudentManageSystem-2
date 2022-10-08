using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManageSystem_WF
{
    public partial class StuList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dataTable= DbHelper.DoExecuteQuery("select id,name,homecity from students");
            rt1.DataSource = dataTable;
            rt1.DataBind();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("/StuAdd.aspx");
        }
    }
}