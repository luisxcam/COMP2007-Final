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

namespace rpgmanager.UserPages.CharacterSpells
{
    public partial class Delete : System.Web.UI.Page
    {
		protected rpgmanager.Models.rpg_entities _db = new rpgmanager.Models.rpg_entities();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected CharacterSpell item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int CharacterSpellsId)
        {
            using (_db)
            {
                var item = _db.CharacterSpells.Find(CharacterSpellsId);

                if (item != null)
                {
                    _db.CharacterSpells.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single CharacterSpell item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public rpgmanager.Models.CharacterSpell GetItem([FriendlyUrlSegmentsAttribute(0)]int? CharacterSpellsId)
        {
            if (CharacterSpellsId == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.CharacterSpells.Where(m => m.CharacterSpellsId == CharacterSpellsId).Include(m => m.Character).Include(m => m.Spell).FirstOrDefault();
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

