//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace rpgmanager.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Weapon
    {
        public Weapon()
        {
            this.Characters = new HashSet<Character>();
        }
    
        public int WeaponId { get; set; }
        public string Name { get; set; }
        public string WeaponType { get; set; }
        public string JobSpecific { get; set; }
        public Nullable<int> AttackRate { get; set; }
        public Nullable<int> MagicAttack { get; set; }
        public Nullable<int> Weight { get; set; }
        public string Attribute { get; set; }
        public string Enchantment { get; set; }
        public Nullable<int> MonetaryValue { get; set; }
        public string Rarity { get; set; }
    
        public virtual ICollection<Character> Characters { get; set; }
    }
}
