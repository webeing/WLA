<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ArtPrize.Models.Error>" %>

<div class="modal error" data-result="Error">
<div class="dialog-wrap">
            <a class="close" href="#close" title="chiudi"><img src="<%= Url.Content("~/img/icon-close.gif") %>" alt="chiudi" /></a>
<h1>Siamo spiacenti</h1>
<h3>Non è stato possibile completare l'operazione di voto, riprova in seguito.</h3>
</div><!--/dialog-wrap-->
</div><!--modal-->