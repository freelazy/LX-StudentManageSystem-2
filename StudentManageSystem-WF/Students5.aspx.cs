﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManageSystem_WF
{
    public partial class Students5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                sl.DataSource = DbHelper.DoExecuteQuery("select * from students");
                sl.DataBind();
            }
        }
    }
}