using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManageSystem_WF
{
    public partial class ViewStateYanjiu : System.Web.UI.Page
    {

        public int VisitCount
        {
            get 
            {
                return ViewState["vc"] != null ? (int)ViewState["vc"] : 0;
            }
            set
            {
                ViewState["vc"] = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //hf1.Value = (int.Parse(hf1.Value) + 1).ToString();
            //sd.DataBind();

            VisitCount += 1;
        }

        protected void bt1_Click(object sender, EventArgs e)
        {
            if (tb1.Text.Length < 5)
            {
                lb1.Text = "您输入的内容不合格，请重填。";
                lb1.ForeColor = System.Drawing.Color.Red;
                tb1.Text = String.Empty;
                tb1.Focus();
            }
            else
            {
                lb1.Text = "恭喜您，验证通过";
                lb1.ForeColor = System.Drawing.Color.Green;
                tb1.ReadOnly = true;
                bt1.Enabled = false;
            }
        }
    }
}