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

namespace COMP2007_Final.Characters
{
    public partial class Delete : System.Web.UI.Page
    {
		protected COMP2007_Final.Models.DefaultConnection _db = new COMP2007_Final.Models.DefaultConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected Character item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int CharacterId)
        {
            using (_db)
            {
                var item = _db.Characters.Find(CharacterId);

                if (item != null)
                {
                    _db.Characters.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single Character item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public COMP2007_Final.Models.Character GetItem([FriendlyUrlSegmentsAttribute(0)]int? CharacterId)
        {
            if (CharacterId == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.Characters.Where(m => m.CharacterId == CharacterId).Include(m => m.Armour).Include(m => m.User).Include(m => m.Weapon).FirstOrDefault();
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

