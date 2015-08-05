﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using COMP2007_Final_SteveEd.Models;

namespace COMP2007_Final_SteveEd.Characters
{
    public partial class Default : System.Web.UI.Page
    {
		protected COMP2007_Final_SteveEd.Models.DungeonTestEntities1 _db = new COMP2007_Final_SteveEd.Models.DungeonTestEntities1();
       public int i = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Model binding method to get List of Character entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<COMP2007_Final_SteveEd.Models.Character> GetData()
        {
        
           // "../Content/images/archer.jpg"
            return _db.Characters.Include(m => m.Armour).Include(m => m.User).Include(m => m.Weapon);
        }
    }
}

