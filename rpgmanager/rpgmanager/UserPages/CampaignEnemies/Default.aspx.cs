﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using rpgmanager.Models;

namespace rpgmanager.UserPages.CampaignEnemies
{
    public partial class Default : System.Web.UI.Page
    {
		protected rpgmanager.Models.rpg_entities _db = new rpgmanager.Models.rpg_entities();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Model binding method to get List of CampaignEnemy entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<rpgmanager.Models.CampaignEnemy> GetData()
        {
            return _db.CampaignEnemies.Include(m => m.Campaign).Include(m => m.Enemy);
        }
    }
}

