using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LewishamProjectSite
{
    public partial class _Default : Page
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

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ProManagerSQL"].ConnectionString);
            con.Open();
            //SqlTransaction transaction = con.BeginTransaction("ProManagerSQL");
            
            SqlCommand cm = new SqlCommand("Update userInformation Set userstatus = 'free' where username=@LoginName2", con);
            //cm.Transaction = transaction;
            cm.Parameters.AddWithValue("@LoginName2",LoginName2);
            //SqlDataAdapter da = new SqlDataAdapter(cm);
            //System.Data.DataTable db = new DataTable();
            //da.Fill(db);



            if (status.Text == "Busy")
            {
                status.Text = "Free";
                btnstatus.Text = "Busy";

            }
            else
            {
                status.Text = "Busy";
                btnstatus.Text = "Free";
            }
          
            
            


                
            
        }
        }
    }
