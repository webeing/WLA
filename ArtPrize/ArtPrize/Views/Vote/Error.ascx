<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ArtPrize.Models.Error>" %>

<div class="modal error" data-result="Error">
<div class="dialog-wrap">
            <a class="close" href="#close" title="chiudi"><img src="<%= ConfigurationManager.AppSettings["BasePath"] %>"/img/icon-close.gif" alt="chiudi" /></a>
<h3>Siamo spiacenti</h3>
<p>Non è stato possibile completare l'operazione di voto, riprova in seguito.</p>
</div><!--/dialog-wrap-->
</div><!--modal-->