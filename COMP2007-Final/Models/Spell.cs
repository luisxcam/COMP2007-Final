//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace COMP2007_Final.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Spell
    {
        public Spell()
        {
            this.CharacterSpells = new HashSet<CharacterSpell>();
        }
    
        public int SpellsId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string CharClass { get; set; }
        public string Attribute { get; set; }
        public Nullable<int> Rate { get; set; }
        public Nullable<int> Efficiency { get; set; }
        public Nullable<int> ManaRequired { get; set; }
        public Nullable<int> ChantingTime { get; set; }
    
        public virtual ICollection<CharacterSpell> CharacterSpells { get; set; }
    }
}