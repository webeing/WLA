﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace ArtPrize.Models
{
    public class ValidEmailAttribute : RegularExpressionAttribute
    {
        public ValidEmailAttribute() :
            base(@"^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$")
        { }
    }

    public class ValidPhoneNumberAttribute : RegularExpressionAttribute
    {
        public ValidPhoneNumberAttribute() :
            base(@"^\d.*$")
        { }
    }

    public class IsTrueAttribute : RegularExpressionAttribute
    {
        public IsTrueAttribute() : base(@"^True$") { }
    }

    [PetaPoco.TableName("Users")]
    [PetaPoco.PrimaryKey("Id")]
    public class User
    {
        public int Id { get; set; }
        [Required]
        [StringLength(50)]
        public string Name { get; set; }
        [Required]
        [StringLength(50)]
        public string LastName { get; set; }
        [Required]
        public string Address { get; set; }        
        [ValidEmail(ErrorMessage= "email non valida")]
        [Required]                
        public string Email { get; set; }
        [ValidPhoneNumber(ErrorMessage= "numero di telefono non valido")]
        [Required]        
        public string MobilePhone { get; set; }
        [Required]
        public string City { get; set; }
        // TODO: aggiungere validatore cap
        [Required]
        public string CAP { get; set; }
        [Required]
        public string District { get; set; }
        [Required]
        public string Birthday { get; set; }                
        [Required]
        public bool TermsAcceptance { get; set; }
        [IsTrue(ErrorMessage="Devi accettare le norme sulla privacy")]        
        public bool PrivacyRead { get; set; }
        [Required]
        public string Ip { get; set; }
        [IsTrue(ErrorMessage="Devi accettare il regolamento")]             
        public bool RuleAcceptance { get; set; }
        [Required]
        public char Gender { get; set; }
    }
}
