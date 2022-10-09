using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace StudentManageSystem_WF
{
    public partial class StuList : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) // 千万不要忘了，只有第一次渲染页面，才加载数据
            {
                var dt = DbHelper.DoExecuteQuery("select id, name, homecity from students");
                rp1.DataSource = dt;
                rp1.DataBind();
            }
        }
    }
}