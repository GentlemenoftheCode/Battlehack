using System.ComponentModel.DataAnnotations;

namespace Demo.Models
{
    public class Charity
    {
        [ScaffoldColumn(false)]
        public int CharityID { get; set; }

        [Required, StringLength(100), Display(Name = "Name")]
        public string CharityName { get; set; }

        [Required, StringLength(10000), Display(Name = "Charity Description"), DataType(DataType.MultilineText)]
        public string Description { get; set; }

        public string ImagePath { get; set; }

        [Required, StringLength(100), Display(Name = "Website")]
        public string Website { get; set; }

        [Display(Name = "Raffles")]
        public double? Raffles { get; set; }

        public virtual ICollection<Raffle> Raffle { get; set; }
    }
}