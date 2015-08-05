using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using COMP2007_Final_SteveEd.Models;


namespace COMP2007_Final_SteveEd
{
    public partial class ViewCampaign : System.Web.UI.Page
    {
        protected COMP2007_Final_SteveEd.Models.DungeonTestEntities1 _db = new COMP2007_Final_SteveEd.Models.DungeonTestEntities1();
        protected COMP2007_Final_SteveEd.Models.DungeonTestEntities1 _db2 = new COMP2007_Final_SteveEd.Models.DungeonTestEntities1();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Model binding method to get List of Character entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<COMP2007_Final_SteveEd.Models.Character> GetData()
        {
            return _db.Characters.Include(m => m.Armour).Include(m => m.User).Include(m => m.Weapon);
        }


        // This is the Select methd to selects a single Campaign item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public COMP2007_Final_SteveEd.Models.Campaign GetItemCampaign([FriendlyUrlSegmentsAttribute(0)]int? CampaignId)
        {
            CampaignId = 1;
            if (CampaignId == null)
            {
                return null;
            }

            using (_db2)
            {
                return _db2.Campaigns.Where(m => m.CampaignId == CampaignId).Include(m => m.User).FirstOrDefault();
            }
        }

        protected void ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Cancel", StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("/Login");
            }
        }
    }
}