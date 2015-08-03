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

namespace COMP2007_Final.Campaigns
{
    public partial class Delete : System.Web.UI.Page
    {
		protected COMP2007_Final.Models.DefaultConnection _db = new COMP2007_Final.Models.DefaultConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected Campaign item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int CampaignId)
        {
            using (_db)
            {
                var item = _db.Campaigns.Find(CampaignId);

                if (item != null)
                {
                    _db.Campaigns.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single Campaign item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public COMP2007_Final.Models.Campaign GetItem([FriendlyUrlSegmentsAttribute(0)]int? CampaignId)
        {
            if (CampaignId == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.Campaigns.Where(m => m.CampaignId == CampaignId).Include(m => m.User).FirstOrDefault();
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

