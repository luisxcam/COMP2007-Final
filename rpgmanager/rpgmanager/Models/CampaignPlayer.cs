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
    
    public partial class CampaignPlayer
    {
        public int CampaignPlayerId { get; set; }
        public int CharacterId { get; set; }
        public int CampaignId { get; set; }
    
        public virtual Campaign Campaign { get; set; }
        public virtual Character Character { get; set; }
    }
}
