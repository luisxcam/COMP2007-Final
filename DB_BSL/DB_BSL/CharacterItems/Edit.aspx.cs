﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using DB_BSL.Models;
namespace DB_BSL.CharacterItems
{
    public partial class Edit : System.Web.UI.Page
    {
		protected DB_BSL.Models.Entities _db = new DB_BSL.Models.Entities();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Update methd to update the selected CharacterItem item
        // USAGE: <asp:FormView UpdateMethod="UpdateItem">
        public void UpdateItem(int  CharacterItemId)
        {
            using (_db)
            {
                var item = _db.CharacterItems.Find(CharacterItemId);

                if (item == null)
                {
                    // The item wasn't found
                    ModelState.AddModelError("", String.Format("Item with id {0} was not found", CharacterItemId));
                    return;
                }

                TryUpdateModel(item);

                if (ModelState.IsValid)
                {
                    // Save changes here
                    _db.SaveChanges();
                    Response.Redirect("../Default");
                }
            }
        }

        // This is the Select method to selects a single CharacterItem item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public DB_BSL.Models.CharacterItem GetItem([FriendlyUrlSegmentsAttribute(0)]int? CharacterItemId)
        {
            if (CharacterItemId == null)
            {
                return null;
            }

            using (_db)
            {
                return _db.CharacterItems.Find(CharacterItemId);
            }
        }

        protected void ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Cancel", StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("../Default");
            }
        }
    }
}
