using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using rpgmanager.Models;

namespace rpgmanager.Characters
{
    public partial class Default : System.Web.UI.Page
    {
		protected rpgmanager.Models.rpg_entities _db = new rpgmanager.Models.rpg_entities();
       public int i = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Model binding method to get List of Character entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<rpgmanager.Models.Character> GetData()
        {
        
           // "../Content/images/archer.jpg"
            return _db.Characters.Include(m => m.Armour).Include(m => m.User).Include(m => m.Weapon);
        }
    }
}

