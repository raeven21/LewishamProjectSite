using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LewishamProjectSite
{
    public partial class ProjectList : System.Web.UI.Page
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
        public IQueryable<project> GetProjects([QueryString("id")] int? projectId) { var _db = new LewishamProjectSite.ProjectContext(); IQueryable<project> query = _db.projects; if (projectId.HasValue && projectId > 0) { query = query.Where(p => p.projectId == projectId); } return query; }
    }
}