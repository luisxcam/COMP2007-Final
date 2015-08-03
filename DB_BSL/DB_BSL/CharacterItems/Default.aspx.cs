﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using DB_BSL.Models;

namespace DB_BSL.CharacterItems
{
    public partial class Default : System.Web.UI.Page
    {
		protected DB_BSL.Models.Entities _db = new DB_BSL.Models.Entities();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Model binding method to get List of CharacterItem entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<DB_BSL.Models.CharacterItem> GetData()
        {
            return _db.CharacterItems.Include(m => m.Character).Include(m => m.Item);
        }
    }
}

