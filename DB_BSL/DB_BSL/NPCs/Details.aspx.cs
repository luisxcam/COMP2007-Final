using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using DB_BSL.Models;

namespace DB_BSL.NPCs
{
    public partial class Details : System.Web.UI.Page
    {
		protected DB_BSL.Models.Entities _db = new DB_BSL.Models.Entities();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Select methd to selects a single NPC item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public DB_BSL.Models.NPC GetItem([FriendlyUrlSegmentsAttribute(0)]int? NPCId)
        {
            if (NPCId == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.NPCs.Where(m => m.NPCId == NPCId).FirstOrDefault();
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

