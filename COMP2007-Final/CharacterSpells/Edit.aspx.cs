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
namespace COMP2007_Final.CharacterSpells
{
    public partial class Edit : System.Web.UI.Page
    {
		protected COMP2007_Final.Models.DefaultConnection _db = new COMP2007_Final.Models.DefaultConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Update methd to update the selected CharacterSpell item
        // USAGE: <asp:FormView UpdateMethod="UpdateItem">
        public void UpdateItem(int  CharacterSpellsId)
        {
            using (_db)
            {
                var item = _db.CharacterSpells.Find(CharacterSpellsId);

                if (item == null)
                {
                    // The item wasn't found
                    ModelState.AddModelError("", String.Format("Item with id {0} was not found", CharacterSpellsId));
                    return;
                }

                TryUpdateModel(item);

                //check each CharacterSpell in the database to see if the data being entered is a duplicate
                foreach (CharacterSpell cI in _db.CharacterSpells)
                {
                    //if the data is duplicated and does not match the current CharacterSpellId, add a model error
                    if (item.CharacterId == cI.CharacterId && item.SpellId == cI.SpellId && item.CharacterSpellsId != cI.CharacterSpellsId)
                    {
                        ModelState.AddModelError("", "Duplicate character-spell entries are not allowed!");
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

        // This is the Select method to selects a single CharacterSpell item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public COMP2007_Final.Models.CharacterSpell GetItem([FriendlyUrlSegmentsAttribute(0)]int? CharacterSpellsId)
        {
            if (CharacterSpellsId == null)
            {
                return null;
            }

            using (_db)
            {
                return _db.CharacterSpells.Find(CharacterSpellsId);
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
