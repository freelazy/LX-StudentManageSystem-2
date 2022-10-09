using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManageSystem_WF
{
    public partial class StuDetail : System.Web.UI.Page
    {
        public DataRow Student { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Student = DbHelper
                    .DoExecuteQuery(
                        "select * from students where id = @id",
                        new SqlParameter("id", Request.Params["id"])
                    )
                    .Rows[0];
            }
        }
    }
}