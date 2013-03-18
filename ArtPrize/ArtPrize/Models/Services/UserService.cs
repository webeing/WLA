using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PetaPoco;
using System.ComponentModel.DataAnnotations;
using NLog;

namespace ArtPrize.Models.Services
{
    public class AlreadyExistingEmailException : Exception
    {
        public AlreadyExistingEmailException(string message) : base(message) { }
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
                throw new AlreadyExistingEmailException("There was an user with the same mail.");
            db.Insert(user);
            Logger.Info(string.Format("User {0} correctly saved.",user.Id));
            Logger.Debug("Completed UserService.Create execution.");
        }
    }
}