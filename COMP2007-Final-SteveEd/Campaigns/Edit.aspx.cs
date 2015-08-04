﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using SampleDaata.DB_MODELS;
namespace COMP2007_Final_SteveEd.Campaigns
{
    public partial class Edit : System.Web.UI.Page
    {
		protected SampleDaata.DB_MODELS.databaseSupremeEntities _db = new SampleDaata.DB_MODELS.databaseSupremeEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Update methd to update the selected Campaign item
        // USAGE: <asp:FormView UpdateMethod="UpdateItem">
        public void UpdateItem(int  CampaignId)
        {
            using (_db)
            {
                var item = _db.Campaigns.Find(CampaignId);

                if (item == null)
                {
                    // The item wasn't found
                    ModelState.AddModelError("", String.Format("Item with id {0} was not found", CampaignId));
                    return;
                }

                TryUpdateModel(item);

                if (ModelState.IsValid)
                {
                    // Save changes here
                    _db.SaveChanges();
                    Response.Redirect("../Default");
                }
            }
        }

        // This is the Select method to selects a single Campaign item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public SampleDaata.DB_MODELS.Campaign GetItem([FriendlyUrlSegmentsAttribute(0)]int? CampaignId)
        {
            if (CampaignId == null)
            {
                return null;
            }

            using (_db)
            {
                return _db.Campaigns.Find(CampaignId);
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
