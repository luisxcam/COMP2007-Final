using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using COMP2007_Final_SteveEd.Models;
namespace COMP2007_Final_SteveEd.Enemies
{
    public partial class Edit : System.Web.UI.Page
    {
		protected COMP2007_Final_SteveEd.Models.DungeonTestEntities1 _db = new COMP2007_Final_SteveEd.Models.DungeonTestEntities1();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Update methd to update the selected Enemy item
        // USAGE: <asp:FormView UpdateMethod="UpdateItem">
        public void UpdateItem(int  EnemyId)
        {
            using (_db)
            {
                var item = _db.Enemies.Find(EnemyId);

                if (item == null)
                {
                    // The item wasn't found
                    ModelState.AddModelError("", String.Format("Item with id {0} was not found", EnemyId));
                    return;
                }

                TryUpdateModel(item);

                if (ModelState.IsValid)
                {
                    // Save changes here
                    _db.SaveChanges();
                    Response.Redirect("../Default");
                }
            }
        }

        // This is the Select method to selects a single Enemy item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public COMP2007_Final_SteveEd.Models.Enemy GetItem([FriendlyUrlSegmentsAttribute(0)]int? EnemyId)
        {
            if (EnemyId == null)
            {
                return null;
            }

            using (_db)
            {
                return _db.Enemies.Find(EnemyId);
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
