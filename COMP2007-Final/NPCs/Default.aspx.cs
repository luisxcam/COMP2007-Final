using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using COMP2007_Final.Models;

namespace COMP2007_Final.NPCs
{
    public partial class Default : System.Web.UI.Page
    {
		protected COMP2007_Final.Models.DefaultConnection _db = new COMP2007_Final.Models.DefaultConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Model binding method to get List of NPC entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<COMP2007_Final.Models.NPC> GetData()
        {
            return _db.NPCs;
        }
    }
}

