using System;
using System.Collections.Specialized;
using System.ComponentModel.DataAnnotations;
using System.Web.DynamicData;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP2007_Final_SteveEd {
    public partial class Integer_EditField : System.Web.DynamicData.FieldTemplateUserControl {
		
		protected void Page_Init(object sender, EventArgs e) {
         
        }
        
		// show bootstrap has-error
		protected void Page_PreRender(object sender, EventArgs e)
        {
            // if validation error then apply bootstrap has-error CSS class
            var isValid = this.Page.ModelState.IsValidField(Column.Name);
        }

        protected override void ExtractValues(IOrderedDictionary dictionary) {
            dictionary[Column.Name] = ConvertEditedValue(TextBox1.Text);
        }
    
        public override Control DataControl {
            get {
                return TextBox1;
            }
        }
    }
}
