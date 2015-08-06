using System;
using System.Collections.Specialized;
using System.ComponentModel.DataAnnotations;
using System.Web.DynamicData;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Linq;
using rpgmanager.Models;

namespace rpgmanager {
    public partial class ForeignKey_EditField : System.Web.DynamicData.FieldTemplateUserControl {

		protected rpgmanager.Models.rpg_entities _db = new rpgmanager.Models.rpg_entities();

		public string DataTypeName { get; set; }

		public string DataTextField { get; set; }

		public string DataValueField { get; set; }

        public IQueryable GetData()
        {
			var entityType = Type.GetType(this.DataTypeName);
            return _db.Set(entityType).AsQueryable();
        } 

        protected void Page_Init(object sender, EventArgs e) {

        }
		
		// show bootstrap has-error
		protected void Page_PreRender(object sender, EventArgs e)
        {
            // if validation error then apply bootstrap has-error CSS class
            var isValid = this.Page.ModelState.IsValidField(Column.Name);

        }


        protected override void ExtractValues(IOrderedDictionary dictionary)
        {
            // If it's an empty string, change it to null
            string value = DropDownList1.SelectedValue;
            if (String.IsNullOrEmpty(value))
            {
                value = null;
            }

            dictionary[Column.Name] = ConvertEditedValue(value);
        }


        public override Control DataControl {
            get {
                return DropDownList1;
            }
        }
    
    }
}
