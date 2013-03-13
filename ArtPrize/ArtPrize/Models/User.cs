using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel.DataAnnotations;

namespace ArtPrize.Models
{
    public class User
    {
        public int Id { get; set; }
        [Required]
        [StringLength(50)]
        public string Name { get; set; }
        [Required]
        [StringLength(50)]
        public string LastName { get; set; }
        public string Address { get; set; }
        [Required]
        [DataType(DataType.EmailAddress, ErrorMessage="Indirizzo email non valido")]
        public string Email { get; set; }
        [Required]
        [DataType(DataType.PhoneNumber, ErrorMessage = "Numero di telefono non valido")]
        public string MobilePhone { get; set; }     
    }
}
