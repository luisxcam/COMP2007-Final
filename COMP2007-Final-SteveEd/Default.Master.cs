﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP2007_Final_SteveEd
{
    public partial class Default : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!HttpContext.Current.User.Identity.IsAuthenticated)
            {
                PrivateNav.Visible = false;
                PublicNav.Visible = true;
                body.Attributes["class"] = "loggedOut";
                footer.Attributes["class"] = "";                
            }
            else
            {
                PrivateNav.Visible = true;
                PublicNav.Visible = false;
                body.Attributes["class"] = "";
                footer.Attributes["class"] = "loggedin_footer";
            }
        }
    }
}