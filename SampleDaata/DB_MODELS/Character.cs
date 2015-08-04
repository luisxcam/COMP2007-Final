//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SampleDaata.DB_MODELS
{
    using System;
    using System.Collections.Generic;
    
    public partial class Character
    {
        public Character()
        {
            this.CampaignPlayers = new HashSet<CampaignPlayer>();
            this.CharacterItems = new HashSet<CharacterItem>();
            this.CharacterSkills = new HashSet<CharacterSkill>();
            this.CharacterSpells = new HashSet<CharacterSpell>();
        }
    
        public int CharacterId { get; set; }
        public string Id { get; set; }
        public Nullable<int> WeaponId { get; set; }
        public Nullable<int> ArmourId { get; set; }
        public string CharacterName { get; set; }
        public string CharClass { get; set; }
        public Nullable<int> CharLevel { get; set; }
        public string Gender { get; set; }
        public Nullable<int> HP { get; set; }
        public Nullable<int> Mana { get; set; }
        public Nullable<int> Strength { get; set; }
        public Nullable<int> Dexterity { get; set; }
        public Nullable<int> Constitution { get; set; }
        public Nullable<int> Intelligence { get; set; }
        public Nullable<int> Wisdom { get; set; }
        public Nullable<int> Charisma { get; set; }
        public Nullable<int> SkillPoints { get; set; }
        public Nullable<int> StatPoints { get; set; }
        public Nullable<int> Speed { get; set; }
        public Nullable<int> Gold { get; set; }
        public Nullable<int> Experience { get; set; }
        public Nullable<int> CarryWeight { get; set; }
    
        public virtual Armour Armour { get; set; }
        public virtual AspNetUser AspNetUser { get; set; }
        public virtual ICollection<CampaignPlayer> CampaignPlayers { get; set; }
        public virtual ICollection<CharacterItem> CharacterItems { get; set; }
        public virtual ICollection<CharacterSkill> CharacterSkills { get; set; }
        public virtual ICollection<CharacterSpell> CharacterSpells { get; set; }
        public virtual Weapon Weapon { get; set; }
    }
}
