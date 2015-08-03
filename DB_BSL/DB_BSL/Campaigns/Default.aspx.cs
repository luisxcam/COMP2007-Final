﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using DB_BSL.Models;

namespace DB_BSL.Campaigns
{
    public partial class Default : System.Web.UI.Page
    {
		protected DB_BSL.Models.Entities _db = new DB_BSL.Models.Entities();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Model binding method to get List of Campaign entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<DB_BSL.Models.Campaign> GetData()
        {
            return _db.Campaigns.Include(m => m.User);
        }
    }
}

