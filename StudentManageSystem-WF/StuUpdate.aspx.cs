using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManageSystem_WF
{
    public partial class StuUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string id = Request.QueryString["id"];
                var connection = DbHelper.GetConnection();
                SqlCommand command = new SqlCommand("select id,name,homecity from students where id='" + id+"'", connection);
                SqlDataReader sdr = command.ExecuteReader();
                if (sdr.Read())
                {
                    txtId.Text = sdr[0].ToString();
                    txtName.Text = sdr[1].ToString();
                    txtHomecity.Text = sdr[2].ToString();
                }
            }
            
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string id = txtId.Text;
            string name = txtName.Text;
            string homecity = txtHomecity.Text;
            DbHelper.DoExecuteNonQuery($"update students set name='{name}', homecity='{homecity}' where id='{id}'");
            Response.Redirect("/StuList.aspx");
        }
    }
}