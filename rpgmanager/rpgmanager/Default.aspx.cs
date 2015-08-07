using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace rpgmanager
{
    public partial class Default1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                AuthenticatedHomePage.Visible = true;
                NotAuthenticatedHomePage.Visible = false;               
            }
            else
            {
                AuthenticatedHomePage.Visible = false;
                NotAuthenticatedHomePage.Visible = true;
            }
        }
        }
    }
