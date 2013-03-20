<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ArtPrize.Models.User>" %>

    <% using (Html.BeginForm()) {%>
        <%= Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Fields</legend>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.Id) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.Id) %>
                <%= Html.ValidationMessageFor(model => model.Id) %>
            </div>
            
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
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.City) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.City) %>
                <%= Html.ValidationMessageFor(model => model.City) %>
            </div>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.CAP) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.CAP) %>
                <%= Html.ValidationMessageFor(model => model.CAP) %>
            </div>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.District) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.District) %>
                <%= Html.ValidationMessageFor(model => model.District) %>
            </div>
            
            <label for="privacy_accept">
									<textarea>Barclays is committed to safeguarding the privacy of your information. By “your information” we mean any information about you, which you or third parties provide to us.
									The Barclays Privacy Principles, set out below, explain how your information will be treated by Barclays.
									Barclays Privacy Principles
									We will only collect & use your information where we have lawful grounds and legitimate business reasons to do so.
									We will be transparent in our dealings with you, and will tell you about how we will collect and use your information.
									If we have collected your information for a particular purpose we will not use it for anything else unless you have been informed and where relevant your permission obtained.
									We will not ask for more information than we need for the purposes for which we are collecting it.
									We will update our records when you inform us that your details have changed.
									We will continue to review and assess the quality of our information
									We will implement and adhere to information retention policies relating to your information and will ensure that your information is securely disposed of at the end of the appropriate retention period.
									We will observe the rights granted to you under applicable privacy and data protection laws and will ensure that queries relating to privacy issues are promptly and transparently dealt with.
									We will train our staff on their privacy obligations.
									We will ensure we have appropriate physical and technological security measures to protect your information regardless of where it is held.
									We will ensure that when we outsource any processes, the supplier has appropriate security measures in place and will contractually require them to comply with these Privacy Principles.
									We will ensure that suitable safeguards are in place before personal information is transferred to other countries.You are not required to provide any personal information on the public areas of this website. However, you may choose to do so by completing the forms on various pages of the site. We will only use the information you provide to us on these pages in order to process the relevant form. Please see the privacy wording on the relevant form for a more detailed explanation of how your information will be used.
									If you are a Barclays customer or already have a relationship with us you will have been advised by various methods as to how we collect and use your information.
									</textarea>
								        <input type="checkbox" name="privacy_accept" /> Dichiaro di aver letto l'informativa sulla privacy
								</label>
								
								<label for="terms_accept">
									<textarea>We advise you to read these Terms & Conditions (the "Terms") carefully before using the Website. By accessing and/or using the Website you are deemed to accept and be bound by these Terms, therefore if you do not wish to be bound by these Terms you should not access or use the Website.
									
									The content published on the Website, and in particular the products and services to which it refers, does not constitute advice and is not an invitation to subscribe to any of our products or services, instead it is designed to tell you more about us and the services which we offer. It is your responsibility to comply with applicable local laws, including ensuring that your access and/or use not only complies with the Terms, but also with the laws of the jurisdiction from which your use or access is made.
									</textarea>
								        <input type="checkbox" name="terms_accept" /> Accetto termini e condizioni
								</label>

            <p>
                <input type="submit" value="Create" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%= Html.ActionLink("Back to List", "Index") %>
    </div>


