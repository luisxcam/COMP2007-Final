//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DB_BSL.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Enemy
    {
        public Enemy()
        {
            this.CampaignEnemies = new HashSet<CampaignEnemy>();
        }
    
        public int EnemyId { get; set; }
        public string Name { get; set; }
        public Nullable<int> CharLevel { get; set; }
        public string Race { get; set; }
        public string CharClass { get; set; }
        public Nullable<int> HP { get; set; }
        public Nullable<int> Mana { get; set; }
        public Nullable<int> ArmourRate { get; set; }
        public Nullable<int> WeaponDamage { get; set; }
        public Nullable<int> MagicAttack { get; set; }
        public Nullable<int> MagicDefense { get; set; }
        public Nullable<int> Speed { get; set; }
    
        public virtual ICollection<CampaignEnemy> CampaignEnemies { get; set; }
    }
}
