//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Wardrobe_MVC.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Accessory
    {
        public int AccessoryID { get; set; }
        [Display(Name ="Accessory Name")]
        public string AccessoryName { get; set; }
        [Display(Name = "Photo")]
        public string AccessoryPhoto { get; set; }
        [Display(Name = "Type")]
        public string AccessoryType { get; set; }
        [Display(Name = "Color")]
        public string AccessoryColor { get; set; }
        [Display(Name = "Season")]
        public string AccessorySeason { get; set; }
        [Display(Name = "Occasion")]
        public string AccessoryOccasion { get; set; }
    }
}
