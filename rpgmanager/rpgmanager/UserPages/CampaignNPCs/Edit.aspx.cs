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
namespace rpgmanager.UserPages.CampaignNPCs
{
    public partial class Edit : System.Web.UI.Page
    {
		protected rpgmanager.Models.rpg_entities _db = new rpgmanager.Models.rpg_entities();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Update methd to update the selected CampaignNPC item
        // USAGE: <asp:FormView UpdateMethod="UpdateItem">
        public void UpdateItem(int  CampaignNPCId)
        {
            using (_db)
            {
                var item = _db.CampaignNPCs.Find(CampaignNPCId);

                if (item == null)
                {
                    // The item wasn't found
                    ModelState.AddModelError("", String.Format("Item with id {0} was not found", CampaignNPCId));
                    return;
                }

                TryUpdateModel(item);

                //check each CampaignNPC in the database to see if the data being entered is a duplicate
                foreach (CampaignNPC cNPC in _db.CampaignNPCs)
                {
                    //if the data is duplicated and does not match the current CampaignNPCId, add a model error
                    if (item.CampaignId == cNPC.CampaignId && item.NPCId == cNPC.NPCId && item.CampaignNPCId != cNPC.CampaignNPCId)
                    {
                        ModelState.AddModelError("", "Duplicate campaign-NPC entries are not allowed!");
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

        // This is the Select method to selects a single CampaignNPC item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public rpgmanager.Models.CampaignNPC GetItem([FriendlyUrlSegmentsAttribute(0)]int? CampaignNPCId)
        {
            if (CampaignNPCId == null)
            {
                return null;
            }

            using (_db)
            {
                return _db.CampaignNPCs.Find(CampaignNPCId);
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
