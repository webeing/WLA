<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<int>" %>

<div class="modal success" data-result="Ok">
<div class="dialog-wrap">
            <a class="close" href="#close" title="chiudi"><img src="<%= Url.Content("~/img/icon-close.gif") %>" alt="chiudi" /></a>
<h1>Grazie per aver votato</h1>
<h3>Ora potrai essere estratto per vincere un viaggio per due persone in una città d'arte italiana.</h3>

</div><!--/dialog-wrap-->
</div><!--modal-->