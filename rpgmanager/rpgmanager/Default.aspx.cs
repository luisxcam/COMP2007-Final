using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;


namespace rpgmanager
{
    public partial class Default1 : System.Web.UI.Page
    {
      

        protected void Page_Load(object sender, EventArgs e)
        {
            //check if the user is logged in or not
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                //if the user is logged in there will be a dashbaord picture
                AuthenticatedHomePage.Visible = true;
                NotAuthenticatedHomePage.Visible = false;
                //disable scroll bars by placing overflow: hidden on body
                HtmlGenericControl htmlsearcher = (HtmlGenericControl)Master.FindControl("body");
                htmlsearcher.Attributes.Add("class", "loggedIn");

            }
            else
            {
                //shows the logged out informational landing page
                AuthenticatedHomePage.Visible = false;
                NotAuthenticatedHomePage.Visible = true;
                HtmlGenericControl htmlsearcher = (HtmlGenericControl)Master.FindControl("body");
                htmlsearcher.Attributes.Remove("loggedIn");
            }
        }
        }
    }
