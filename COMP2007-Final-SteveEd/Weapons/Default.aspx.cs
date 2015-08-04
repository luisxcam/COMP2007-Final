using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using SampleDaata.DB_MODELS;

namespace COMP2007_Final_SteveEd.Weapons
{
    public partial class Default : System.Web.UI.Page
    {
		protected SampleDaata.DB_MODELS.databaseSupremeEntities _db = new SampleDaata.DB_MODELS.databaseSupremeEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Model binding method to get List of Weapon entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<SampleDaata.DB_MODELS.Weapon> GetData()
        {
            return _db.Weapons;
        }
    }
}

