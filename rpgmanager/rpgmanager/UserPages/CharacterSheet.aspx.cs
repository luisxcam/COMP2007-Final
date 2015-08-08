﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using rpgmanager.Models;
using System.Data.Entity;

namespace rpgmanager.UserPages
{
    public partial class CharacterSheet : System.Web.UI.Page
    {
        protected rpgmanager.Models.rpg_entities _db = new rpgmanager.Models.rpg_entities();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // This is the Insert method to insert the entered Character item
        // USAGE: <asp:FormView InsertMethod="InsertItem">
        public void InsertItem()
        {
            using (_db)
            {
                var item = new rpgmanager.Models.Character();

                TryUpdateModel(item);

                if (ModelState.IsValid)
                {
                    // Save changes
                    _db.Characters.Add(item);
                    _db.SaveChanges();

                    Response.Redirect("~/UserPages/ViewCampaign.aspx");
                }
            }
        }

        protected void ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Cancel", StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("~/UserPages/ViewCampaign.aspx");
            }
        }
    }
}