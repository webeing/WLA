using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel.DataAnnotations;
using PetaPoco;

namespace ArtPrize.Models
{
    [PetaPoco.TableName("Votes")]
    [PetaPoco.PrimaryKey("Id")]
    public class Vote
    {        
        public int Id { get; set; }
        [Required]
        public int ArtworkId { get; set; }
        [Required]
        public string SessionId { get; set; }
        public DateTime VoteDate { get; set; }
        [Ignore]
        public User User { get; set; }        
        [Ignore]
        public VoteWrapper Wrapper
        {
            get
            {
                return new VoteWrapper(this);
            }
            
        }
    }

    public class VoteWrapper
    {
        private Vote vote;

        public VoteWrapper(Vote v) 
        {
            vote = v;
        }

        public int Id 
        {
            get
            {
                return vote.Id;
            }
            set 
            {
                vote.Id = value;
            } 
        }

        public int ArtworkId
        {
            get
            {
                return vote.ArtworkId;
            }
            set
            {
                vote.ArtworkId = value;
            }
        }
        public string SessionId
        {
            get
            {
                return vote.SessionId;
            }
            set
            {
                vote.SessionId = value;
            }
        }
        public DateTime VoteDate
        {
            get
            {
                return vote.VoteDate;
            }
            set
            {
                vote.VoteDate = value;
            }
        }        
        public int UserId
        {
            get
            {
                return vote.User.Id;
            }
            set
            {
                vote.User.Id = value;
            }
        }        
    }
}
