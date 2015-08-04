using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using SampleDaata.DB_MODELS;

namespace COMP2007_Final_SteveEd.Characters
{
    public partial class Default : System.Web.UI.Page
    {
		protected SampleDaata.DB_MODELS.databaseSupremeEntities _db = new SampleDaata.DB_MODELS.databaseSupremeEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Model binding method to get List of Character entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<SampleDaata.DB_MODELS.Character> GetData()
        {
            return _db.Characters.Include(m => m.Armour).Include(m => m.AspNetUser).Include(m => m.Weapon);
        }
    }
}

