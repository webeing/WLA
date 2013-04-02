<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<int>" %>

<div class="modal success" data-result="Ok">
<div class="dialog-wrap">
            <a class="close" href="#close" title="chiudi"><img src="<%= Url.Content("~/img/icon-close.gif") %>" alt="chiudi" /></a>
<h1>Grazie per aver votato</h1>
<h3>Passa nella filiale Barclays di Piazza della Repubblica 8 a Milano e ritira il poster dell'opera che hai scelto in formato 70x100cm.</h3>
<h3>Clicca sul pulsante per effettuare il download dell'opera ad alta risoluzione.
<a href="<%= Url.Content("~/img/opera" + Model + ".pdf") %>" class="btn download" title="Fai il download della tua opera preferita">Download</a>
</h3>
</div><!--/dialog-wrap-->
</div><!--modal-->