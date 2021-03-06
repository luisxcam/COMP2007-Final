﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using rpgmanager.Models;

namespace rpgmanager.UserPages.CharacterSkills
{
    public partial class Insert : System.Web.UI.Page
    {
		protected rpgmanager.Models.rpg_entities _db = new rpgmanager.Models.rpg_entities();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // This is the Insert method to insert the entered CharacterSkill item
        // USAGE: <asp:FormView InsertMethod="InsertItem">
        public void InsertItem()
        {
            using (_db)
            {
                var item = new rpgmanager.Models.CharacterSkill();

                TryUpdateModel(item);

                //check each CharacterSkill in the database to see if the data being entered is a duplicate
                foreach (CharacterSkill cS in _db.CharacterSkills)
                {
                    //if the data is duplicated add a model error
                    if (item.CharacterId == cS.CharacterId && item.SkillId == cS.SkillId)
                    {
                        ModelState.AddModelError("", "Duplicate character-skill entries are not allowed!");
                        return;
                    } //if ends
                } //foreach ends

                if (ModelState.IsValid)
                {
                    // Save changes
                    _db.CharacterSkills.Add(item);
                    _db.SaveChanges();

                    Response.Redirect("Default");
                }
            }
        }

        protected void ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Cancel", StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("Default");
            }
        }
    }
}
