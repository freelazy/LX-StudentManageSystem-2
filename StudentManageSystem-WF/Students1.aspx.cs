using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace StudentManageSystem_WF
{
    public partial class Students1 : System.Web.UI.Page
    {
        public DataTable studentsDt { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            studentsDt = DbHelper.DoExecuteQuery("select * from students");
        }
    }
}