using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LewishamProjectSite
{
    public partial class EmployeeProjects : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
                return;
            }
            else
            {
                Response.Redirect("default.aspx");
            }
        }
    }
}