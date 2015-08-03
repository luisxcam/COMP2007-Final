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

namespace COMP2007_Final.Armours
{
    public partial class Delete : System.Web.UI.Page
    {
		protected COMP2007_Final.Models.DefaultConnection _db = new COMP2007_Final.Models.DefaultConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected Armour item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int ArmourId)
        {
            using (_db)
            {
                var item = _db.Armours.Find(ArmourId);

                if (item != null)
                {
                    _db.Armours.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single Armour item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public COMP2007_Final.Models.Armour GetItem([FriendlyUrlSegmentsAttribute(0)]int? ArmourId)
        {
            if (ArmourId == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.Armours.Where(m => m.ArmourId == ArmourId).FirstOrDefault();
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

