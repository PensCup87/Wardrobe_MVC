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
    
    public partial class Shoe
    {
        public int ShoeID { get; set; }
        [Display(Name ="Shoe Name")]
        public string ShoeName { get; set; }
        [Display(Name = "Photo")]
        public string ShoePhoto { get; set; }
        [Display(Name = "Type")]
        public string ShoeType { get; set; }
        [Display(Name = "Color")]
        public string ShoeColor { get; set; }
        [Display(Name = "Season")]
        public string ShoeSeason { get; set; }
        [Display(Name = "Occasion")]
        public string ShoeOccasion { get; set; }
    }
}
