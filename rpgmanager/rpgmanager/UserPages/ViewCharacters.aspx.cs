using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using rpgmanager.Models;
using System.Data.Entity;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;

namespace rpgmanager.UserPages
{
    public partial class ViewCharacters : System.Web.UI.Page
    {

        protected rpgmanager.Models.rpg_entities _db = new rpgmanager.Models.rpg_entities();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public rpgmanager.Models.Character GetItem([FriendlyUrlSegmentsAttribute(0)]int? CharacterId)
        {
            if (CharacterId == null)
            {
                return null;
            }

            using (_db)
            {

                return _db.Characters.Where(m => m.CharacterId == CharacterId).Include(m => m.Armour).Include(m => m.User).Include(m => m.Weapon).FirstOrDefault();

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