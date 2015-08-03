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

namespace DB_BSL.Weapons
{
    public partial class Delete : System.Web.UI.Page
    {
		protected DB_BSL.Models.Entities _db = new DB_BSL.Models.Entities();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected Weapon item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int WeaponId)
        {
            using (_db)
            {
                var item = _db.Weapons.Find(WeaponId);

                if (item != null)
                {
                    _db.Weapons.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single Weapon item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public DB_BSL.Models.Weapon GetItem([FriendlyUrlSegmentsAttribute(0)]int? WeaponId)
        {
            if (WeaponId == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.Weapons.Where(m => m.WeaponId == WeaponId).FirstOrDefault();
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

