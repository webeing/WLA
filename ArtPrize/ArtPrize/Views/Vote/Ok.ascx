<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<int>" %>

<div class="modal success" data-result="Ok">
<div class="dialog-wrap">
            <a class="close" href="#close" title="chiudi"><img src="<%= ConfigurationManager.AppSettings["BasePath"] %>"/img/icon-close.gif" alt="chiudi" /></a>
<h3>Grazie per aver votato</h3>
<p>Passa nella filiale Barclays di Piazza della Repubblica 8 a Milano e ritira il poster dell'opera che hai scelto in formato 70x100cm.</p>
<p>Clicca sul pulsante per effettuare il download dell'opera ad alta risoluzione.
<a href="<%= ConfigurationManager.AppSettings["BasePath"] %>/img/opera<%= Model %>.pdf" class="btn download" title="Fai il download della tua opera preferita">Download</a>
</p>
</div><!--/dialog-wrap-->
</div><!--modal-->