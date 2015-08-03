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
namespace DB_BSL.Users
{
    public partial class Edit : System.Web.UI.Page
    {
		protected DB_BSL.Models.Entities _db = new DB_BSL.Models.Entities();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Update methd to update the selected User item
        // USAGE: <asp:FormView UpdateMethod="UpdateItem">
        public void UpdateItem(int  UsernameId)
        {
            using (_db)
            {
                var item = _db.Users.Find(UsernameId);

                if (item == null)
                {
                    // The item wasn't found
                    ModelState.AddModelError("", String.Format("Item with id {0} was not found", UsernameId));
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

        // This is the Select method to selects a single User item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public DB_BSL.Models.User GetItem([FriendlyUrlSegmentsAttribute(0)]int? UsernameId)
        {
            if (UsernameId == null)
            {
                return null;
            }

            using (_db)
            {
                return _db.Users.Find(UsernameId);
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