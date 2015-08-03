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
    public partial class Edit : System.Web.UI.Page
    {
		protected COMP2007_Final.Models.DefaultConnection _db = new COMP2007_Final.Models.DefaultConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Update methd to update the selected CampaignEnemy item
        // USAGE: <asp:FormView UpdateMethod="UpdateItem">
        public void UpdateItem(int  CampaignEnemyId)
        {
            using (_db)
            {
                var item = _db.CampaignEnemies.Find(CampaignEnemyId);

                if (item == null)
                {
                    // The item wasn't found
                    ModelState.AddModelError("", String.Format("Item with id {0} was not found", CampaignEnemyId));
                    return;
                }

                TryUpdateModel(item);

                //check each CampaignEnemy in the database to see if the data being entered is a duplicate
                foreach (CampaignEnemy cE in _db.CampaignEnemies)
                {
                    //if the data is duplicated and does not match the current CampaignEnemyId, add a model error
                    if (item.CampaignId == cE.CampaignId && item.EnemyId == cE.EnemyId && item.CampaignEnemyId != cE.CampaignEnemyId)
                    {
                        ModelState.AddModelError("", "Duplicate campaign-enemy entries are not allowed!");
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

        // This is the Select method to selects a single CampaignEnemy item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public COMP2007_Final.Models.CampaignEnemy GetItem([FriendlyUrlSegmentsAttribute(0)]int? CampaignEnemyId)
        {
            if (CampaignEnemyId == null)
            {
                return null;
            }

            using (_db)
            {
                return _db.CampaignEnemies.Find(CampaignEnemyId);
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
