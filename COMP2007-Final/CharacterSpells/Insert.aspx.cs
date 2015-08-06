﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using COMP2007_Final.Models;

namespace COMP2007_Final.CharacterSpells
{
    public partial class Insert : System.Web.UI.Page
    {
        protected COMP2007_Final.Models.DatabaseConnection _db = new COMP2007_Final.Models.DatabaseConnection();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // This is the Insert method to insert the entered CharacterSpell item
        // USAGE: <asp:FormView InsertMethod="InsertItem">
        public void InsertItem()
        {
            using (_db)
            {
                var item = new COMP2007_Final.Models.CharacterSpell();

                TryUpdateModel(item);

                //check each CharacterSpell in the database to see if the data being entered is a duplicate
                foreach (CharacterSpell cS in _db.CharacterSpells)
                {
                    //if the data is duplicated add a model error
                    if (item.CharacterId == cS.CharacterId && item.SpellId == cS.SpellId)
                    {
                        ModelState.AddModelError("", "Duplicate character-spell entries are not allowed!");
                        return;
                    } //if ends
                } //foreach ends

                if (ModelState.IsValid)
                {
                    // Save changes
                    _db.CharacterSpells.Add(item);
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