using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManageSystem_WF
{
    public partial class StuDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string id = Request.QueryString["id"];
                // var dd = DbHelper.DoExecuteQuery("select top 1").Rows[0];

                var connection = DbHelper.GetConnection();
                SqlCommand command = new SqlCommand("select id,name,homecity,telephone,state from students where id='" + id+"'", connection);
                SqlDataReader sdr = command.ExecuteReader();
                if (sdr.Read())
                {
                    txtId.Text = sdr[0].ToString();
                    txtName.Text = sdr[1].ToString();
                    txtHomecity.Text = sdr[2].ToString();
                    txtTelephone.Text= sdr[3].ToString();
                    txtState.Text= sdr[4].ToString();
                }
            }
        }
    }
}