﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using COMP2007_Final.Models;

namespace COMP2007_Final.CharacterItems
{
    public partial class Edit : System.Web.UI.Page
    {
        protected COMP2007_Final.Models.DatabaseConnection _db = new COMP2007_Final.Models.DatabaseConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Update methd to update the selected CharacterItem item
        // USAGE: <asp:FormView UpdateMethod="UpdateItem">
        public void UpdateItem(int CharacterItemId)
        {
            using (_db)
            {
                var item = _db.CharacterItems.Find(CharacterItemId);

                if (item == null)
                {
                    // The item wasn't found
                    ModelState.AddModelError("", String.Format("Item with id {0} was not found", CharacterItemId));
                    return;
                }

                TryUpdateModel(item);

                //check each CharacterItem in the database to see if the data being entered is a duplicate
                foreach (CharacterItem cI in _db.CharacterItems)
                {
                    //if the data is duplicated and does not match the current CharacterItemId, add a model error
                    if (item.CharacterId == cI.CharacterId && item.ItemId == cI.ItemId && item.CharacterItemId != cI.CharacterItemId)
                    {
                        ModelState.AddModelError("", "Duplicate character-item entries are not allowed!");
                        return;
                    } //if ends
                } //foreach ends

                if (ModelState.IsValid)
                {
                    // Save changes here
                    _db.SaveChanges();
                    Response.Redirect("../Default");
                } //if ends
            } //using ends
        } //method UpdateItem ends

        // This is the Select method to selects a single CharacterItem item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public COMP2007_Final.Models.CharacterItem GetItem([FriendlyUrlSegmentsAttribute(0)]int? CharacterItemId)
        {
            if (CharacterItemId == null)
            {
                return null;
            }

            using (_db)
            {
                return _db.CharacterItems.Find(CharacterItemId);
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