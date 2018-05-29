using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LewishamProjectSite
{
    public partial class EmployeeDetails : System.Web.UI.Page
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

        public IQueryable<employee> GetEmployee(
                        [QueryString("employeeId")] int? employeeId,
                        [RouteData] string firstname)
        {
            var _db = new LewishamProjectSite.ProjectContext();
            IQueryable<employee> query = _db.employees;
            if (employeeId.HasValue && employeeId > 0)
            {
                query = query.Where(em => em.employeeId == employeeId);
            }
            else if (!String.IsNullOrEmpty(firstname))
            {
                query = query.Where(em =>
                          String.Compare(em.firstname, firstname) == 0);
            }
            else
            {
                query = null;
            }
            return query;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            
        }

        protected void buttontxt_Click(object sender, EventArgs e)
        {
            
        }
    }
}