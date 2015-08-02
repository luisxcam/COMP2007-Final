using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using COMP2007_Final.Models;
using System.Data.Entity.Infrastructure;

namespace COMP2007_Final.CharacterItems
{
    public partial class Insert : System.Web.UI.Page
    {
        //local variables
		protected COMP2007_Final.Models.DefaultConnection _db = new COMP2007_Final.Models.DefaultConnection();
        bool error;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // This is the Insert method to insert the entered CharacterItem item
        // USAGE: <asp:FormView InsertMethod="InsertItem">
        public void InsertItem()
        {
            //set error to false
            error = false;

            using (_db)
            {
                var item = new COMP2007_Final.Models.CharacterItem();

                TryUpdateModel(item);

                if (ModelState.IsValid)
                {
                    //try catch to catch any exceptions when inserting to the database
                    try
                    {
                        // Save changes
                        _db.CharacterItems.Add(item);
                        _db.SaveChanges();
                    }
                    catch (DbUpdateException) 
                    {
                        error = true; //set error to true
                        ClientScript.RegisterStartupScript(GetType(), "hwa", "alert('Duplicate Entry!\\nPlease only insert unique player-item combinations.\\nIf you wish to update quantity, please use the edit option.');", true);
                    }

                    //if there wasn't an error, redirect the user to the default page
                    if (!error)
                    {
                        Response.Redirect("Default");
                    } //if ends
                } //if ends
            } //using ends
        } //method InsertItem ends

        protected void ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Cancel", StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("Default");
            } //if ends
        } //method ItemCommand ends
    } //class Insert ends
} //namespace COMP2007_Final.CharacterItems ends
