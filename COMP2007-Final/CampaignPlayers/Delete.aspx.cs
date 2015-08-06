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

namespace COMP2007_Final.CampaignPlayers
{
    public partial class Delete : System.Web.UI.Page
    {
		protected COMP2007_Final.Models.DatabaseConnection _db = new COMP2007_Final.Models.DatabaseConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected CampaignPlayer item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int CampaignPlayerId)
        {
            using (_db)
            {
                var item = _db.CampaignPlayers.Find(CampaignPlayerId);

                if (item != null)
                {
                    _db.CampaignPlayers.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single CampaignPlayer item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public COMP2007_Final.Models.CampaignPlayer GetItem([FriendlyUrlSegmentsAttribute(0)]int? CampaignPlayerId)
        {
            if (CampaignPlayerId == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.CampaignPlayers.Where(m => m.CampaignPlayerId == CampaignPlayerId).Include(m => m.Campaign).Include(m => m.Character).FirstOrDefault();
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

