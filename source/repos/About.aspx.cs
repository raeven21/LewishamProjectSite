using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LewishamProjectSite
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
               
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}