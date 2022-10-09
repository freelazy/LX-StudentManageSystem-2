using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace StudentManageSystem_WF
{
    public partial class StuUpdate : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            warning.Text = string.Empty;

            if (!IsPostBack)
            {
                var id = Request.Params["id"];

                var student = DbHelper
                    .DoExecuteQuery($"select * from students where id = '{id}'")
                    .Rows[0];

                tbId.Text = student["id"] as string;
                tbName.Text = student["name"] as string;
                tbHomecity.Text = student["homecity"] as string;
                tbTelephone.Text = student["telephone"] as string;
                tbDuyin.Text = student["duyin"] as string;
                tbState.Text = $"{student["state"]}";
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            // 进行数据完整性和正确性的校验
            if (string.IsNullOrEmpty(tbName.Text))
            {
                warning.Text = "您输入的名字不合格。";
                return;
            }

            // 操作数据库，执行修改任务
            int ret = DbHelper.DoExecuteNonQuery(
                $@"update students set name=@name, homecity=@homecity, state=@state, telephone=@telephone, duyin=@duyin where id=@id",
                new SqlParameter("@name", tbName.Text),
                new SqlParameter("@homecity", tbHomecity.Text),
                new SqlParameter("@state", tbState.Text),
                new SqlParameter("@telephone", tbTelephone.Text),
                new SqlParameter("@duyin", tbDuyin.Text),
                new SqlParameter("@id", tbId.Text));

            if (ret == 0)
            {
                warning.Text = "保存出现问题，请检查重试";
            }
            else
            {
                Response.Redirect($"/StuDetail?id={tbId.Text}");
            }
        }
    }
}