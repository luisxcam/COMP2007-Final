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

namespace rpgmanager.UserPages.Skills
{
    public partial class Delete : System.Web.UI.Page
    {
		protected rpgmanager.Models.rpg_entities _db = new rpgmanager.Models.rpg_entities();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected Skill item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int SkillId)
        {
            using (_db)
            {
                var item = _db.Skills.Find(SkillId);

                if (item != null)
                {
                    _db.Skills.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single Skill item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public rpgmanager.Models.Skill GetItem([FriendlyUrlSegmentsAttribute(0)]int? SkillId)
        {
            if (SkillId == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.Skills.Where(m => m.SkillId == SkillId).FirstOrDefault();
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

