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
    
    public partial class ImportMaterial
    {
        public int ImportID { get; set; }
        public string MaterialsName { get; set; }
        public Nullable<int> Quantity { get; set; }
        public Nullable<decimal> Price { get; set; }
        public string EmployeeID { get; set; }
        public Nullable<int> SupplierID { get; set; }
        public Nullable<System.DateTime> ImportDate { get; set; }
    
        public virtual Employee Employee { get; set; }
        public virtual Supplier Supplier { get; set; }
    }
}