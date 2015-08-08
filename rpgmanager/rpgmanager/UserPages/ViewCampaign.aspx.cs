using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.ModelBinding;
using System.Web.UI.WebControls;
using System.Data.Entity;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using rpgmanager.Models;

namespace rpgmanager.UserPages
{
    public partial class ViewCampaign : System.Web.UI.Page
    {
        protected rpgmanager.Models.rpg_entities _db = new rpgmanager.Models.rpg_entities();
        protected rpgmanager.Models.rpg_entities _db2 = new rpgmanager.Models.rpg_entities();
        protected rpgmanager.Models.rpg_entities _db3 = new rpgmanager.Models.rpg_entities();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<rpgmanager.Models.Campaign> GetDataCampaign()
        {
            return _db.Campaigns.Include(m => m.User);
        }

        // Model binding method to get List of Character entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<rpgmanager.Models.Character> GetData()
        {
            return _db.Characters.Include(m => m.Armour).Include(m => m.User).Include(m => m.Weapon);
        }


        // This is the Select methd to selects a single Campaign item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public rpgmanager.Models.Campaign GetItemCampaign([FriendlyUrlSegmentsAttribute(0)]int? CampaignId)
        {
            if (CampaignId == null)
            {
                return null;
            }

            using (_db2)
            {
                return _db2.Campaigns.Where(m => m.CampaignId == CampaignId).Include(m => m.User).FirstOrDefault();
            }
        }

        // Model binding method to get List of CharacterItem entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<rpgmanager.Models.CharacterItem> GetData2()
        {
            return _db3.CharacterItems.Include(m => m.Character).Include(m => m.Item);
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