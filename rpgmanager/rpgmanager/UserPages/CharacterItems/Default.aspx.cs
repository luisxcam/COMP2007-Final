using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using COMP2007_Final_SteveEd.Models;

namespace COMP2007_Final_SteveEd.CharacterItems
{
    public partial class Default : System.Web.UI.Page
    {
		protected COMP2007_Final_SteveEd.Models.DungeonTestEntities1 _db = new COMP2007_Final_SteveEd.Models.DungeonTestEntities1();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Model binding method to get List of CharacterItem entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<COMP2007_Final_SteveEd.Models.CharacterItem> GetData()
        {
            return _db.CharacterItems.Include(m => m.Character).Include(m => m.Item);
        }
    }
}

