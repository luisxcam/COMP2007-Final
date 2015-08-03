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
namespace COMP2007_Final.CharacterSkills
{
    public partial class Edit : System.Web.UI.Page
    {
		protected COMP2007_Final.Models.DefaultConnection _db = new COMP2007_Final.Models.DefaultConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Update methd to update the selected CharacterSkill item
        // USAGE: <asp:FormView UpdateMethod="UpdateItem">
        public void UpdateItem(int  CharacterSkillsId)
        {
            using (_db)
            {
                var item = _db.CharacterSkills.Find(CharacterSkillsId);

                if (item == null)
                {
                    // The item wasn't found
                    ModelState.AddModelError("", String.Format("Item with id {0} was not found", CharacterSkillsId));
                    return;
                }

                TryUpdateModel(item);

                //check each CharacterSkill in the database to see if the data being entered is a duplicate
                foreach (CharacterSkill cS in _db.CharacterSkills)
                {
                    //if the data is duplicated and does not match the current CharacterSkillId, add a model error
                    if (item.CharacterId == cS.CharacterId && item.SkillId == cS.SkillId && item.CharacterSkillsId != cS.CharacterSkillsId)
                    {
                        ModelState.AddModelError("", "Duplicate character-skill entries are not allowed!");
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

        // This is the Select method to selects a single CharacterSkill item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public COMP2007_Final.Models.CharacterSkill GetItem([FriendlyUrlSegmentsAttribute(0)]int? CharacterSkillsId)
        {
            if (CharacterSkillsId == null)
            {
                return null;
            }

            using (_db)
            {
                return _db.CharacterSkills.Find(CharacterSkillsId);
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
