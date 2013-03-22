using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PetaPoco;
using System.ComponentModel.DataAnnotations;
using NLog;

namespace ArtPrize.Models.Services
{
    public class AlreadyExistingAnagException : Exception
    {
        public AlreadyExistingAnagException() : base("There was an user with the same name, lastname, city and address") { }
    }

    public class AlreadyExistingIpException : Exception
    {
        public AlreadyExistingIpException() : base("There was an user with the same name ip name and last name") { }
    }
    
    public class AlreadyExistingEmailException : Exception
    {
        public AlreadyExistingEmailException() : base("There was an user with the same mail.") { }
    }

    public class AlreadyExistingMobileException : Exception
    {
        public AlreadyExistingMobileException() : base("There was an user with the same mail.") { }
    }

    public class UserService
    {
        Database db;
        public Logger Logger { get; set; }

        public UserService() 
        {
            db = new Database("ApplicationServices");
            Logger = LogManager.CreateNullLogger();
        }

        public UserService(Database database) 
        {
            db = database;
            Logger = LogManager.CreateNullLogger();
        }

        public void Create(User user) 
        {
            if (user == null)
                throw new ArgumentNullException("The user is null.");
            Logger.Debug("Started UserService.Create execution.");
            Logger.Debug(
                string.Format("User: Name: {0}, LastName: {1}, Email: {2}, MobilePhone: {3}, Address: {4}",
                user.Name, user.LastName, user.Email, user.MobilePhone, user.Address));            
            Logger.Debug("Validating user");
            DataValidator.Validate(user);
            Logger.Debug("User is valid.");
            if (db.Query<User>("WHERE Email = @0", user.Email).Count() > 0)
                throw new AlreadyExistingEmailException();
            if (db.Query<User>("WHERE MobilePhone = @0", user.MobilePhone).Count() > 0)
                throw new AlreadyExistingMobileException();
            if (db.Query<User>("WHERE Ip = @0 AND Name = @1 AND LastName = @2", user.Ip,user.Name,user.LastName).Count() > 0)
                throw new AlreadyExistingIpException();
            if (db.Query<User>("WHERE Name = @0 AND LastName = @1 AND City = @2 AND Address = @3", user.Name, user.LastName, user.City, user.Address).Count() > 0)
                throw new AlreadyExistingIpException();
            db.Insert(user);
            Logger.Info(string.Format("User {0} correctly saved.",user.Id));
            Logger.Debug("Completed UserService.Create execution.");
        }
    }
}