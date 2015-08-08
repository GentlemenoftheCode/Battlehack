using System.ComponentModel.DataAnnotations;

namespace Demo.Models
{
    public class Raffle
    {
        [ScaffoldColumn(false)]
        public int RaffleID { get; set; }

        [Required, StringLength(100), Display(Name = "Raffle Name")]
        public string RaffleName { get; set; }

        [Required, StringLength(10000), Display(Name = "Raffle Description"), DataType(DataType.MultilineText)]
        public string Description { get; set; }

        public string ImagePath { get; set; }

        [Display(Name = "Total Amount")]
        public double? UnitPrice { get; set; }

        public int? CharityID { get; set; }

        public virtual Charity Charity { get; set; }
    }
}