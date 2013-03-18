<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ArtPrize.Models.Error>" %>

<% if (Model == null) { %>
    <div>
        Il tuo voto è stato salvato correttamente.
    </div>
<% } %>
<% else { %>
    <div>
        Si è verificato un errore: <%= Model.Description %>
    </div>
<% } %>