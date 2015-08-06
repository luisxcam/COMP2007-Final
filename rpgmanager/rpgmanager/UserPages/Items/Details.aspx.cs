using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using rpgmanager.Models;

namespace rpgmanager.UserPages.Items
{
    public partial class Details : System.Web.UI.Page
    {
		protected rpgmanager.Models.rpg_entities _db = new rpgmanager.Models.rpg_entities();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Select methd to selects a single Item item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public rpgmanager.Models.Item GetItem([FriendlyUrlSegmentsAttribute(0)]int? ItemId)
        {
            if (ItemId == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.Items.Where(m => m.ItemId == ItemId).FirstOrDefault();
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

