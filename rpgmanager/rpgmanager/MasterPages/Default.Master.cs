using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using rpgmanager.Models;

namespace rpgmanager
{
    public partial class Default : System.Web.UI.MasterPage
    {
        //instance variables
        protected rpgmanager.Models.rpg_entities _db = new rpgmanager.Models.rpg_entities();
        bool valid = false;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!HttpContext.Current.User.Identity.IsAuthenticated)
            {
                PrivateNav.Visible = false;
                PublicNav.Visible = true;
              //  body.Attributes["class"] = "loggedOut";
                body.Attributes.Add("class", "loggedOut");
            }
            else
            {
                PrivateNav.Visible = true;
                PublicNav.Visible = false;
             //   body.Attributes["class"] = "";
                body.Attributes.Remove("loggedOut");
            }
        }

        // This is the Insert method to insert the entered Campaign item
        // USAGE: <asp:FormView InsertMethod="InsertItem">
        public void InsertItem()
        {
            using (_db)
            {
                var item = new rpgmanager.Models.Campaign();

                TryUpdateModel(item);

                foreach(User u in _db.Users)
                {
                    if (item.UsernameId == u.UsernameId)
                    {
                        valid = true;
                    } //if ends
                } //foreach ends

                if (valid)
                {
                    // Save changes
                    _db.Campaigns.Add(item);
                    _db.SaveChanges();
                    Page.ClientScript.RegisterStartupScript(GetType(), "hwa", "alert('Campaign successfully added!');", true);
                } //if ends
                else
                {
                    Page.ClientScript.RegisterStartupScript(GetType(), "hwa", "alert('Campaign was not added.\\nPlease ensure a valid user was selected.');", true);
                } //else ends

                //Response.Redirect("Default");
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