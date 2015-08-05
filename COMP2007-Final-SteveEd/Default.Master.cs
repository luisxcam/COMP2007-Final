using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using COMP2007_Final_SteveEd.Models;

namespace COMP2007_Final_SteveEd
{
    public partial class Default : System.Web.UI.MasterPage
    {
        protected COMP2007_Final_SteveEd.Models.DungeonTestEntities1 _db = new COMP2007_Final_SteveEd.Models.DungeonTestEntities1();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!HttpContext.Current.User.Identity.IsAuthenticated)
            {
                PrivateNav.Visible = false;
                PublicNav.Visible = true;
                body.Attributes["class"] = "loggedOut";              
            }
            else
            {
                PrivateNav.Visible = true;
                PublicNav.Visible = false;
                body.Attributes["class"] = "";
            }
        }
        // This is the Insert method to insert the entered Campaign item
        // USAGE: <asp:FormView InsertMethod="InsertItem">
        public void InsertItem()
        {
            using (_db)
            {
                var item = new COMP2007_Final_SteveEd.Models.Campaign();

                TryUpdateModel(item);
  
                    // Save changes
                    _db.Campaigns.Add(item);
                    _db.SaveChanges();

                    Response.Redirect("Default");               
            }
        }

        protected void ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Cancel", StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("Default");
            }
        }
    }
}