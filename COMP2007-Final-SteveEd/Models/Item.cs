//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace COMP2007_Final_SteveEd.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Item
    {
        public Item()
        {
            this.CharacterItems = new HashSet<CharacterItem>();
        }
    
        public int ItemId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public Nullable<int> MonetaryValue { get; set; }
        public Nullable<int> Weight { get; set; }
    
        public virtual ICollection<CharacterItem> CharacterItems { get; set; }
    }
}
