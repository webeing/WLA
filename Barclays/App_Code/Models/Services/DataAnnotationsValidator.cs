using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace ArtPrize.Models.Services
{
    public class DataValidator
    {
        public class ErrorInfo
        {
            public ErrorInfo(string property, string message)
            {
                this.Property = property;
                this.Message = message;
            }

            public string Message;
            public string Property;
        }

        public static void Validate(object instance)
        {
            var validationErrors = from prop in instance.GetType().GetProperties()
                                   from attribute in prop.GetCustomAttributes(typeof(ValidationAttribute), true).OfType<ValidationAttribute>()
                                   where !attribute.IsValid(prop.GetValue(instance, null))
                                   select new ErrorInfo(prop.Name, attribute.FormatErrorMessage(string.Empty));
            if (validationErrors.Count() > 0)
            {
                string message = String.Join(",", validationErrors.Select(e => string.Format("{0}: {1}",e.Property,e.Message)).ToArray());
                throw new ValidationException(message);
            }             
        }
    }
}