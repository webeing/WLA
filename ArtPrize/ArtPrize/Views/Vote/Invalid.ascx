<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ArtPrize.Models.Error>" %>

<div class="modal unsuccess">
<div class="dialog-wrap">
            <a class="close" href="#close" title="chiudi">
            <img src="../img/icon-close.gif" alt="chiudi" /></a>
<h3>Registrazione incompleta</h3>
<p><%= Model.Description %></p>
</div><!--/dialog-wrap-->
</div><!--modal-->