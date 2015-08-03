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
    public partial class Details : System.Web.UI.Page
    {
		protected COMP2007_Final.Models.DefaultConnection _db = new COMP2007_Final.Models.DefaultConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Select methd to selects a single CharacterSkill item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public COMP2007_Final.Models.CharacterSkill GetItem([FriendlyUrlSegmentsAttribute(0)]int? CharacterSkillsId)
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

