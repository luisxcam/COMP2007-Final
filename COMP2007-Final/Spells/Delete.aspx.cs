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

namespace COMP2007_Final.Spells
{
    public partial class Delete : System.Web.UI.Page
    {
		protected COMP2007_Final.Models.DatabaseConnection _db = new COMP2007_Final.Models.DatabaseConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected Spell item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int SpellsId)
        {
            using (_db)
            {
                var item = _db.Spells.Find(SpellsId);

                if (item != null)
                {
                    _db.Spells.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single Spell item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public COMP2007_Final.Models.Spell GetItem([FriendlyUrlSegmentsAttribute(0)]int? SpellsId)
        {
            if (SpellsId == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.Spells.Where(m => m.SpellsId == SpellsId).FirstOrDefault();
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

