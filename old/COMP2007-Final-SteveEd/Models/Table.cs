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
    
    public partial class Table
    {
        public int Id { get; set; }
        public Nullable<int> level { get; set; }
        public string gender { get; set; }
        public string name { get; set; }
        public string @class { get; set; }
        public Nullable<int> strength { get; set; }
        public Nullable<int> dexterity { get; set; }
        public Nullable<int> constitution { get; set; }
        public Nullable<int> hp { get; set; }
        public Nullable<int> speed { get; set; }
        public string weapon { get; set; }
        public Nullable<int> gold { get; set; }
        public Nullable<int> experience { get; set; }
        public Nullable<int> intelligence { get; set; }
        public Nullable<int> wisdom { get; set; }
        public Nullable<int> charisma { get; set; }
        public Nullable<int> mana { get; set; }
        public Nullable<int> carryweight { get; set; }
        public string armour { get; set; }
        public Nullable<int> campaign { get; set; }
    
        public virtual campaign1 campaign1 { get; set; }
    }
}