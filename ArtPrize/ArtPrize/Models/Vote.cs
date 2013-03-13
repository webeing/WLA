using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ArtPrize.Models
{
    public class Vote
    {
        public int Id { get; set; }
        public DateTime VoteDate { get; set; }
        public User User { get; set; }

    }
}
