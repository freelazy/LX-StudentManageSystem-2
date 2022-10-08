using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManageSystem_WF
{
    public partial class StuAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string id= txtId.Text;
            string name=txtName.Text;
            string homecity= txtHomecity.Text;
            DbHelper.DoExecuteNonQuery($"insert into students(id,name,homecity) values('{id}','{name}','{homecity}')");
            Response.Redirect("/StuList.aspx");
        }
    }
}