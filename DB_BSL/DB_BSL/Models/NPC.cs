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
    
    public partial class NPC
    {
        public NPC()
        {
            this.CampaignNPCs = new HashSet<CampaignNPC>();
        }
    
        public int NPCId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string Role { get; set; }
    
        public virtual ICollection<CampaignNPC> CampaignNPCs { get; set; }
    }
}
