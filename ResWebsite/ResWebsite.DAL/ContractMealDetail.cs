//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ResWebsite.DAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class ContractMealDetail
    {
        public int ContractMealDetailID { get; set; }
        public Nullable<int> ContractID { get; set; }
        public Nullable<int> Meal { get; set; }
        public string Description { get; set; }
        public Nullable<int> Quantity { get; set; }
        public Nullable<decimal> Price { get; set; }
    
        public virtual Contract Contract { get; set; }
        public virtual Meal Meal1 { get; set; }
    }
}