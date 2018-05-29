using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LewishamProjectSite
{
    public partial class EmployeeList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(User.Identity.IsAuthenticated)
            {

            }
            else
            {
                Response.Redirect("Login.aspx");
            }

        }

        public IQueryable<employee> GetEmployees([QueryString("id")] int? employeeId) { var _db = new LewishamProjectSite.ProjectContext(); IQueryable<employee> query = _db.employees; if (employeeId.HasValue && employeeId > 0) { query = query.Where(em => em.employeeId == employeeId); } return query; }
        public IQueryable<projectEmp> GetProEmps([QueryString("id")] int? projectEmpId) { var _db = new LewishamProjectSite.ProjectContext(); IQueryable<projectEmp> query = _db.projectEmps; if (projectEmpId.HasValue && projectEmpId > 0) { query = query.Where(pe => pe.projectEmpId == projectEmpId); } return query; }
    }
}