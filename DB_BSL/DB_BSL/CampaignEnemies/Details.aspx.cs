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

namespace DB_BSL.CampaignEnemies
{
    public partial class Details : System.Web.UI.Page
    {
		protected DB_BSL.Models.Entities _db = new DB_BSL.Models.Entities();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Select methd to selects a single CampaignEnemy item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public DB_BSL.Models.CampaignEnemy GetItem([FriendlyUrlSegmentsAttribute(0)]int? CampaignEnemyId)
        {
            if (CampaignEnemyId == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.CampaignEnemies.Where(m => m.CampaignEnemyId == CampaignEnemyId).Include(m => m.Campaign).Include(m => m.Enemy).FirstOrDefault();
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

