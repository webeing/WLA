using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PetaPoco;
using NLog;

namespace ArtPrize.Models.Services
{
    public class AlreadyExistingIpException : Exception
    {
        public AlreadyExistingIpException(string message) : base(message) { }
    }

    public class VoteService
    {
        private Database db;
        private UserService userService;

        public Logger Logger { get; set; }

        public VoteService() 
        {
            db = new Database("ApplicationServices");
            userService = new UserService(db);
            Logger = NLog.LogManager.CreateNullLogger();
        }

        public void Create(Vote vote)
        {
            if (vote == null)
                throw new ArgumentNullException("Vote is null.");
            Logger.Debug("Started Vote.Service execution.");
            Logger.Debug(
                string.Format("Vote: ArworkId: {0}, Ip: {1}, SessionId: {2}, VoteDate: {0}",
                vote.ArtworkId, vote.Ip, vote.SessionId, vote.VoteDate));
            if (db.Query<Vote>("WHERE ip = @0",vote.Ip).Count() > 0)
                throw new AlreadyExistingIpException("There was a vote with the same ip.");
            Logger.Debug("Validating vote...");
            DataValidator.Validate(vote);
            Logger.Debug("The vote is valid. Entering transaction...");
            using (var scope = db.GetTransaction())
            {
                // Do transacted updates here
                Logger.Debug("Creating user...");
                userService.Create(vote.User);
                Logger.Debug("User correctly created.");
                Logger.Debug("Now saving the vote");
                //use anonymous object to fill the gap of missing userid                
                db.Insert("Votes","Id",vote.Wrapper);
                Logger.Info(string.Format("Vote {0} correctly saved in the database.",vote.Id));
                // Commit
                scope.Complete();
            }
            Logger.Debug("Completed Vote.Service execution.");
        }

        public IEnumerable<KeyValuePair<int, int>> GetCurrentVotes() 
        {
            return db.Query<KeyValuePair<int, int>>("SELECT ArtworkId as 'Key', count(id) as 'Value' from Votes group by ArtworkId");
        }
    }
}