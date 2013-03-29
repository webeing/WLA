using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.ServiceModel.Web;
using System.ServiceModel.Activation;
using ArtPrize.Models.Services;
using NLog;
using ArtPrize.Models;
using System.IO;
using System.Configuration;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service" in code, svc and config file together.
[AspNetCompatibilityRequirements(RequirementsMode = AspNetCompatibilityRequirementsMode.Allowed)]
public class Service : IService
{
    [WebInvoke(ResponseFormat = WebMessageFormat.Json)]
    public Dictionary<int,int> Votes()
    {
        VoteService service = new VoteService();
        Logger logger = NLog.LogManager.GetLogger(System.Web.HttpContext.Current.Session.SessionID);
        service.Logger = logger;
        logger.Trace("Retrieving votes from database");
        var res = service.GetCurrentVotes();//.ToDictionary(x => x.ArtworkId, x => x.Count);
        logger.Debug("Retrieved votes. Votes: {0}", res.Aggregate(string.Empty, (acc, x) => acc + string.Format("Artwork: {0} -> {1}", x.ArtworkId, x.Count)));
        return new int[] { 1, 2, 3 }.
            ToDictionary(
                x => x,
                x =>
                {
                    var val = res.SingleOrDefault(f => f.ArtworkId == x);
                    return (val != null) ? val.Count : 0;
                });        
    }

       
    public System.IO.Stream Add(
        int artworkId,
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
        string captchaResponse)
    {
        Logger logger = NLog.LogManager.GetLogger(System.Web.HttpContext.Current.Session.SessionID);
        Recaptcha.RecaptchaValidator validator = new Recaptcha.RecaptchaValidator();
        validator.Challenge = captchaChallenge;
        validator.PrivateKey = ConfigurationManager.AppSettings["ReCaptchaPrivateKey"];
        validator.RemoteIP = System.Web.HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"];
        validator.Response = captchaResponse;
        Recaptcha.RecaptchaResponse res = validator.Validate();
        if (!res.IsValid)
            return InvalidResponse("Captcha non valido.");
        try
        {
            Vote vote = new Vote()
            {
                ArtworkId = artworkId,
                SessionId = System.Web.HttpContext.Current.Session.SessionID,
                VoteDate = DateTime.Now,
                User = new User() { 
                    Address = address,
                    City = city,
                    District = district,
                    Email = email,
                    Gender = gender,
                    CAP = cap,
                    Birthday = DateTime.Parse(date),
                    Ip = System.Web.HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"],
                    LastName = lastName,
                    Name = name,
                    PrivacyRead = privacy,
                    RuleAcceptance = rule,
                    MobilePhone = phone                     
                }
            };

            VoteService voteService = new VoteService();
            voteService.Logger = logger;           
            voteService.Create(vote);
            return OkResponse(vote.ArtworkId);
        }        
        catch (AlreadyExistingUserException ex)
        {
            return AlreadyRegisteredResponse();
        }
        catch (System.ComponentModel.DataAnnotations.ValidationException ex)
        {
            return InvalidResponse(ex.Message);
        }
        catch (Exception ex)
        {
            return ErrorResponse();
        }        
    }

    private Stream InvalidResponse(string p)
    {
        return new MemoryStream(
                Encoding.UTF8.GetBytes(
                    String.Format(
                        File.ReadAllText(AppDomain.CurrentDomain.BaseDirectory + @"\ArtPrize\Vota\Result\invalid.html"),p)));
    }



    private Stream ErrorResponse()
    {
        return new MemoryStream(
                Encoding.UTF8.GetBytes(                    
                    File.ReadAllText(AppDomain.CurrentDomain.BaseDirectory + @"\ArtPrize\Vota\Result\error.html")));
    }

    public Stream OkResponse(int artworkId) 
    {
        return new MemoryStream(
                Encoding.UTF8.GetBytes(                    
                    String.Format(
                        File.ReadAllText(AppDomain.CurrentDomain.BaseDirectory + @"\ArtPrize\Vota\Result\ok.html"),artworkId)));
    }

    public Stream AlreadyRegisteredResponse()
    {
        return new MemoryStream(
                Encoding.UTF8.GetBytes(                    
                    File.ReadAllText(AppDomain.CurrentDomain.BaseDirectory + @"\ArtPrize\Vota\Result\AlreadyRegistered.html")));
    }
}
