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
namespace rpgmanager.UserPages.CampaignPlayers
{
    public partial class Edit : System.Web.UI.Page
    {
		protected rpgmanager.Models.rpg_entities _db = new rpgmanager.Models.rpg_entities();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Update methd to update the selected CampaignPlayer item
        // USAGE: <asp:FormView UpdateMethod="UpdateItem">
        public void UpdateItem(int  CampaignPlayerId)
        {
            using (_db)
            {
                var item = _db.CampaignPlayers.Find(CampaignPlayerId);

                if (item == null)
                {
                    // The item wasn't found
                    ModelState.AddModelError("", String.Format("Item with id {0} was not found", CampaignPlayerId));
                    return;
                }

                TryUpdateModel(item);

                //check each CampaignPlayer in the database to see if the data being entered is a duplicate
                foreach (CampaignPlayer cP in _db.CampaignPlayers)
                {
                    //if the data is duplicated and does not match the current CampaignPlayerId, add a model error
                    if (item.CampaignId == cP.CampaignId && item.CharacterId == cP.CharacterId && item.CampaignPlayerId != cP.CampaignPlayerId)
                    {
                        ModelState.AddModelError("", "Duplicate campaign-character entries are not allowed!");
                        return;
                    } //if ends
                } //foreach ends

                if (ModelState.IsValid)
                {
                    // Save changes here
                    _db.SaveChanges();
                    Response.Redirect("../Default");
                }
            }
        }

        // This is the Select method to selects a single CampaignPlayer item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public rpgmanager.Models.CampaignPlayer GetItem([FriendlyUrlSegmentsAttribute(0)]int? CampaignPlayerId)
        {
            if (CampaignPlayerId == null)
            {
                return null;
            }

            using (_db)
            {
                return _db.CampaignPlayers.Find(CampaignPlayerId);
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
