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

namespace COMP2007_Final.CharacterItems
{
    public partial class Delete : System.Web.UI.Page
    {
		protected COMP2007_Final.Models.DefaultConnection _db = new COMP2007_Final.Models.DefaultConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected CharacterItem item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int CharacterItemId)
        {
            using (_db)
            {
                var item = _db.CharacterItems.Find(CharacterItemId);

                if (item != null)
                {
                    _db.CharacterItems.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single CharacterItem item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public COMP2007_Final.Models.CharacterItem GetItem([FriendlyUrlSegmentsAttribute(0)]int? CharacterItemId)
        {
            if (CharacterItemId == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.CharacterItems.Where(m => m.CharacterItemId == CharacterItemId).Include(m => m.Character).Include(m => m.Item).FirstOrDefault();
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

