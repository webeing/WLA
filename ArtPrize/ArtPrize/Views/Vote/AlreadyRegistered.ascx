<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ArtPrize.Models.Error>" %>

<div class="modal unsuccess" data-result="AlreadyRegistered">
    <div class="dialog-wrap">
                <a class="close" href="#close" title="chiudi"><img src="<%= ConfigurationManager.AppSettings["BasePath"] %>"/img/icon-close.gif" alt="chiudi" /></a>
    <h3>Sei già registrato</h3>
    <p>Ti ricordiamo che non è possibile votare più di una volta.</p>
    </div><!--/dialog-wrap-->
</div><!--modal-->