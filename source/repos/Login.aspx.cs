using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LewishamProjectSite;
using System.Web.Security;

namespace LewishamProjectSite
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void LoginView1_ViewChanged(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ProManagerSQL"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from userInformation where username=@username and password=@password", con);
            cmd.Parameters.AddWithValue("@username", Login1.UserName);
            cmd.Parameters.AddWithValue("@password", Login1.Password);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            System.Data.DataTable dt = new DataTable();
            da.Fill(dt);


            if (dt.Rows.Count > 0)

            {
                FormsAuthentication.RedirectFromLoginPage(Login1.UserName, Login1.RememberMeSet);

                FormsIdentity ident = User.Identity as FormsIdentity;
                //FormsAuthenticationTicket authTicket = ident.Ticket;



            }
          
          
          
        }

        protected void Password_TextChanged(object sender, EventArgs e)
        {

        }

        protected void RememberMe_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
    }
