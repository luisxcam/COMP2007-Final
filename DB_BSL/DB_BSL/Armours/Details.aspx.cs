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

namespace DB_BSL.Armours
{
    public partial class Details : System.Web.UI.Page
    {
		protected DB_BSL.Models.Entities _db = new DB_BSL.Models.Entities();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Select methd to selects a single Armour item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public DB_BSL.Models.Armour GetItem([FriendlyUrlSegmentsAttribute(0)]int? ArmourId)
        {
            if (ArmourId == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.Armours.Where(m => m.ArmourId == ArmourId).FirstOrDefault();
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
