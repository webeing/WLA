<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ArtPrize.Models.Error>" %>

<div class="modal unsuccess" data-result="Invalid">
<div class="dialog-wrap">
            <a class="close" href="#close" title="chiudi"><img src="<%= ConfigurationManager.AppSettings["BasePath"] %>/img/icon-close.gif" alt="chiudi" /></a>
<h1>Registrazione incompleta</h1>
<h3><%= Model.Description %></h3>
</div><!--/dialog-wrap-->
</div><!--modal-->