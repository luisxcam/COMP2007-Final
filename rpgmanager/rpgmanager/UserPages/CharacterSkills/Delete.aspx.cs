﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using rpgmanager.Models;

namespace rpgmanager.UserPages.CharacterSkills
{
    public partial class Delete : System.Web.UI.Page
    {
		protected rpgmanager.Models.rpg_entities _db = new rpgmanager.Models.rpg_entities();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected CharacterSkill item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int CharacterSkillsId)
        {
            using (_db)
            {
                var item = _db.CharacterSkills.Find(CharacterSkillsId);

                if (item != null)
                {
                    _db.CharacterSkills.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single CharacterSkill item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public rpgmanager.Models.CharacterSkill GetItem([FriendlyUrlSegmentsAttribute(0)]int? CharacterSkillsId)
        {
            if (CharacterSkillsId == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.CharacterSkills.Where(m => m.CharacterSkillsId == CharacterSkillsId).Include(m => m.Character).Include(m => m.Skill).FirstOrDefault();
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

