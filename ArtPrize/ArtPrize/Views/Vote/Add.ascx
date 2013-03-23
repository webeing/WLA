<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ArtPrize.Models.User>" %>

    <script src="/Scripts/MicrosoftAjax.js" type="text/javascript"></script>
    <script src="/Scripts/MicrosoftMvcAjax.js" type="text/javascript"></script>
    <script src="/Scripts/MicrosoftMvcValidation.js" type="text/javascript"></script>


    <% Html.EnableClientValidation(); %>

    <% using (Html.BeginForm("Add", "Vote", FormMethod.Post, new { id = "vota-artprize" }))
       {%>
        <%= Html.ValidationSummary(true)%>                                                                
            
            <label for="Name">
				Nome
				<%= Html.TextBoxFor(model => model.Name)%>
                <%= Html.ValidationMessageFor(model => model.Name)%>
			</label>                                    
            
            <label for="surname">
				Cognome
				<%= Html.TextBoxFor(model => model.LastName)%>
                <%= Html.ValidationMessageFor(model => model.LastName)%>
			</label>                                    
            
            <label for="birthday">
				    Data di nascita
				    <%= Html.TextBoxFor(m => m.Birthday) %>
                    <%= Html.ValidationMessageFor(model => model.Birthday)%>
			    </label>
			    <label for="gender">
				    Sesso<br/>
				    <span>F 
				    <%= Html.RadioButtonFor(m => m.Gender,"f") %> </span>
				    <span>M 
				    <%= Html.RadioButtonFor(m => m.Gender,"m") %></span>
                    <%= Html.ValidationMessageFor(model => model.Gender)%>
			    </label>							
			    <label for="phone">
				    Telefono
				    <%= Html.TextBoxFor(model => model.MobilePhone)%>
                    <%= Html.ValidationMessageFor(model => model.MobilePhone)%>
			    </label>
			    <label for="mail">
				    e-mail
				    <%= Html.TextBoxFor(model => model.Email)%>
                    <%= Html.ValidationMessageFor(model => model.Email)%>
			    </label>
			    <label for="address">
				    Indirizzo
				    <%= Html.TextBoxFor(model => model.Address)%>
                    <%= Html.ValidationMessageFor(model => model.Address)%>
			    </label>
			    <label for="country">
				    Comune
				    <%= Html.TextBoxFor(model => model.City)%>
                    <%= Html.ValidationMessageFor(model => model.City)%>
			    </label>
			    <label for="prov">
				    Provincia
				    <%= Html.TextBoxFor(model => model.District)%>
                <%= Html.ValidationMessageFor(model => model.District)%>
			    </label>
			    <label for="cap">
				    CAP
				    <%= Html.TextBoxFor(model => model.CAP)%>
                    <%= Html.ValidationMessageFor(model => model.CAP)%>
			    </label>                                               
            
            <p class="privacy_accept">
								Dichiaro di aver preso visione dell’<a href="/privacy.html" title="informativa sulla privacy">informativa sulla privacy</a> e di acconsentire al trattamento dei miei dati da parte della Banca per le finalità menzionate alle lettere (a) e (b) della suddetta informativa.
								<br/>
								<span>
                                    <%= Html.RadioButtonFor(model => model.PrivacyRead, "false") %>do il consenso                                    
                                </span>
								<span>
								    <%= Html.RadioButtonFor(model => model.PrivacyRead, "", new { @checked = "checked" })%>nego il consenso
                                </span>
                                <%= Html.ValidationMessageFor(model => model.PrivacyRead) %>
								</p>
								
								<p class="terms_accept">
									Inoltre do il consenso al trattamento dei miei dati da parte della Banca per finalità di informazione commerciale, promozione e vendita di prodotti e servizi offerti dalla Banca medesima o da società appartenenti al medesimo Gruppo Barclays, consapevole che tale consenso è facoltativo.
							        <br/>
							        <span>
                                        <%= Html.RadioButtonFor(model => model.TermsAcceptance, "True") %>do il consenso                                         
                                    </span>
							        <span>
							            <%= Html.RadioButtonFor(model => model.TermsAcceptance, "False", new { @checked = "checked" })%>nego il consenso
                                    </span>
                                    <%= Html.ValidationMessageFor(model => model.TermsAcceptance) %>
								</p>
								
								<p class="rule_accept">
									Accetto il <a href="/regolamento.html" title="regolamento del concorso">regolamento del concorso</a> a  premi “BARCLAYS ART PRIZE FOR YOUNG TALENTS”
								    <br/>
								    <span>
                                         <%= Html.RadioButtonFor(model => model.RuleAcceptance, "false") %>Accetto
                                    </span>
								    <span>
                                        <%= Html.RadioButtonFor(model => model.RuleAcceptance, "false", new { @checked = "checked" , id ="FalseRulesAcceptance" })%>Non accetto
                                    </span>
                                    <%= Html.ValidationMessageFor(model => model.RuleAcceptance) %>
								</p>
								<div class="clear"></div>
								<p class="disclaimer">
								Messaggio pubblicitario con finalità promozionale. Regolamento completo disponibile sul sito Barclays/artprize.it. La durata complessiva del concorso è dal 05/03/2013 al 30/04/2013 (votazione online dal 9/4/2013 al 30/04/2013); l'assegnazione finale sarà effettuata entro il02/05/2013. Il montepremi complessivo è di € 1.500 (IVA non esposta). La partecipazione al concorso è gratuita. La votazione online è consentita a tutti i residenti in Italia di età superiore a 18 anni. Sono esclusi dalla partecipazione i dipendenti della società organizzatrice e delle società appartenenti al Gruppo Barclays.
								</p>
								
								<div class="clear"></div>
								<div class="dialogButtons">
									<button id="vote-btn">Accetta e vota</button>
								</div>

    <% } %>

    <div>
        <%= Html.ActionLink("Back to List", "Index") %>
    </div>


