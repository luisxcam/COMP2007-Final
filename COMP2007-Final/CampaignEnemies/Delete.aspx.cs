using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using COMP2007_Final.Models;

namespace COMP2007_Final.CampaignEnemies
{
    public partial class Delete : System.Web.UI.Page
    {
		protected COMP2007_Final.Models.DefaultConnection _db = new COMP2007_Final.Models.DefaultConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected CampaignEnemy item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int CampaignEnemyId)
        {
            using (_db)
            {
                var item = _db.CampaignEnemies.Find(CampaignEnemyId);

                if (item != null)
                {
                    _db.CampaignEnemies.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single CampaignEnemy item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public COMP2007_Final.Models.CampaignEnemy GetItem([FriendlyUrlSegmentsAttribute(0)]int? CampaignEnemyId)
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

