<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ArtPrize.Models.User>" %>

    <script src="/Scripts/MicrosoftAjax.js" type="text/javascript"></script>
    <script src="/Scripts/MicrosoftMvcAjax.js" type="text/javascript"></script>
    <script src="/Scripts/MicrosoftMvcValidation.js" type="text/javascript"></script>

    <% Html.EnableClientValidation(); %>

    <% using (Html.BeginForm()) {%>
        <%= Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Fields</legend>                       
            
            <input id="ArtworkId" type="hidden" value="1" name="ArtworkId" />
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.Name) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.Name) %>
                <%= Html.ValidationMessageFor(model => model.Name) %>
            </div>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.LastName) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.LastName) %>
                <%= Html.ValidationMessageFor(model => model.LastName) %>
            </div>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.Address) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.Address) %>
                <%= Html.ValidationMessageFor(model => model.Address) %>
            </div>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.Email) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.Email) %>
                <%= Html.ValidationMessageFor(model => model.Email) %>
            </div>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.MobilePhone) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.MobilePhone) %>
                <%= Html.ValidationMessageFor(model => model.MobilePhone) %>
            </div>
            
            <p>
                <input type="submit" value="Create" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%= Html.ActionLink("Back to List", "Index") %>
    </div>


