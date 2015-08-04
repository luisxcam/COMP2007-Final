using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using SampleDaata.DB_MODELS;

namespace COMP2007_Final_SteveEd.Characters
{
    public partial class Details : System.Web.UI.Page
    {
		protected SampleDaata.DB_MODELS.databaseSupremeEntities _db = new SampleDaata.DB_MODELS.databaseSupremeEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Select methd to selects a single Character item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public SampleDaata.DB_MODELS.Character GetItem([FriendlyUrlSegmentsAttribute(0)]int? CharacterId)
        {
            if (CharacterId == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.Characters.Where(m => m.CharacterId == CharacterId).Include(m => m.Armour).Include(m => m.AspNetUser).Include(m => m.Weapon).FirstOrDefault();
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

