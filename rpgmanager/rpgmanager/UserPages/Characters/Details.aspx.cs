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

namespace rpgmanager.Characters
{
    public partial class Details : System.Web.UI.Page
    {
		protected rpgmanager.Models.rpg_entities _db = new rpgmanager.Models.rpg_entities();
        string s;
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (s == "m" & genderIcon != null)
            //{
            //    genderIcon.Attributes.Add("class", "fa fa-mars");
            //}
            //else if (s == "f" & genderIcon != null)
            //{
            //    genderIcon.Attributes.Add("class", "fa fa-venus");
            //}
          
        }

        // This is the Select methd to selects a single Character item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public rpgmanager.Models.Character GetItem([FriendlyUrlSegmentsAttribute(0)]int? CharacterId)
        {
            if (CharacterId == null)
            {
                return null;
            }
              string s = _db.Characters.Where(o => o.CharacterId == CharacterId).Select(o => o.Gender).FirstOrDefault();

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

