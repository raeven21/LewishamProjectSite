using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LewishamProjectSite
{
    public partial class ProjectsDetails : System.Web.UI.Page
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

        public IQueryable<project> GetProject(
                     [QueryString("projectId")] int? projectID,
                     [RouteData] string project1)
        {
            var _db = new LewishamProjectSite.ProjectContext();
            IQueryable<project> query = _db.projects;
            if (projectID.HasValue && projectID > 0)
            {
                query = query.Where(p => p.projectId == projectID);
            }
            else if (!String.IsNullOrEmpty(project1))
            {
                query = query.Where(p =>
                          String.Compare(p.project1, project1) == 0);
            }
            else
            {
                query = null;
            }
            return query;
        }
    }
}