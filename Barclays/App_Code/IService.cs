using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.IO;
using ArtPrize.Models;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService" in both code and config file together.
[ServiceContract]
public interface IService
{
    [OperationContract]
    Dictionary<int,int> Votes();

    [OperationContract]
    Stream Add(int artworkId,
        string name,
        string lastName,
        string date,
        char gender,
        string phone,
        string email,
        string city,
        string address,
        string district,
        string cap,
        bool rule,
        bool privacy,
        string captchaChallenge,
        string captchaResponse);
}
