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
    
    public partial class CharacterItem
    {
        public int CharacterItemId { get; set; }
        public int CharacterId { get; set; }
        public int ItemId { get; set; }
        public Nullable<int> Quantity { get; set; }
    
        public virtual Character Character { get; set; }
        public virtual Item Item { get; set; }
    }
}
