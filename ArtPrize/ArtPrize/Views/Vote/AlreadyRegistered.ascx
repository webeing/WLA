﻿<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ArtPrize.Models.Error>" %>

<div class="modal unsuccess" data-result="AlreadyRegistered">
    <div class="dialog-wrap">
                <a class="close" href="#close" title="chiudi"><img src="<%= Url.Content("~/img/icon-close.gif") %>" alt="chiudi" /></a>
    <h1>Sei già registrato</h1>
    <h3>Ti ricordiamo che non è possibile votare più di una volta.</h3>
    </div><!--/dialog-wrap-->
</div><!--modal-->