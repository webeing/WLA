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
                    <!--
                    // possiamo inserire il calendario di jqueryUI ???
                    //se sì, provvedo ad implementarlo
                    -->
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
				    Telefono cellulare
                    <!--
                    //dovremmo inserire un valore "finto" iniziale a titolo di esempio
                    //value="es. 33x xxxxxxx"
                    -->
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
                    <!--
                    //Select con lista province
                    // codice lo incollo qui :)
                    <select>
                        <option value=”AG”>AGRIGENTO</option>
                        <option value=”AL”>ALESSANDRIA</option>
                        <option value=”AN”>ANCONA</option>
                        <option value=”AO”>AOSTA</option>
                        <option value=”AR”>AREZZO</option>
                        <option value=”AP”>ASCOLI PICENO</option>
                        <option value=”AT”>ASTI</option>
                        <option value=”AV”>AVELLINO</option>
                        <option value=”BA”>BARI</option>
                        <option value=”BT”>Barletta-Andria-Trani</option>
                        <option value=”BL”>BELLUNO</option>
                        <option value=”BN”>BENEVENTO</option>
                        <option value=”BG”>BERGAMO</option>
                        <option value=”BI”>BIELLA</option>
                        <option value=”BO”>BOLOGNA</option>
                        <option value=”BZ”>BOLZANO</option>
                        <option value=”BS”>BRESCIA</option>
                        <option value=”BR”>BRINDISI</option>
                        <option value=”CA”>CAGLIARI</option>
                        <option value=”CL”>CALTANISSETTA</option>
                        <option value=”CB”>CAMPOBASSO</option>
                        <option value=”CI”>Carbonia-Iglesias</option>
                        <option value=”CE”>CASERTA</option>
                        <option value=”CT”>CATANIA</option>
                        <option value=”CZ”>CATANZARO</option>
                        <option value=”CH”>CHIETI</option>
                        <option value=”CO”>COMO</option>
                        <option value=”CS”>COSENZA</option>
                        <option value=”CR”>CREMONA</option>
                        <option value=”KR”>CROTONE</option>
                        <option value=”CN”>CUNEO</option>
                        <option value=”EN”>ENNA</option>
                        <option value=”FM”>FERMO</option>
                        <option value=”FE”>FERRARA</option>
                        <option value=”FI”>FIRENZE</option>
                        <option value=”FG”>FOGGIA</option>
                        <option value=”FC”>FORLI’-CESENA</option>
                        <option value=”FR”>FROSINONE</option>
                        <option value=”GE”>GENOVA</option>
                        <option value=”GO”>GORIZIA</option>
                        <option value=”GR”>GROSSETO</option>
                        <option value=”IM”>IMPERIA</option>
                        <option value=”IS”>ISERNIA</option>
                        <option value=”SP”>LA SPEZIA</option>
                        <option value=”AQ”>L’AQUILA</option>
                        <option value=”LT”>LATINA</option>
                        <option value=”LE”>LECCE</option>
                        <option value=”LC”>LECCO</option>
                        <option value=”LI”>LIVORNO</option>
                        <option value=”LO”>LODI</option>
                        <option value=”LU”>LUCCA</option>
                        <option value=”MC”>MACERATA</option>
                        <option value=”MN”>MANTOVA</option>
                        <option value=”MS”>MASSA-CARRARA</option>
                        <option value=”MT”>MATERA</option>
                        <option value=”VS”> MEDIO CAMPIDANO</option>
                        <option value=”ME”>MESSINA</option>
                        <option value=”MI”>MILANO</option>
                        <option value=”MO”>MODENA</option>
                        <option value=”MB”>MONZA E DELLA BRIANZA</option>
                        <option value=”NA”>NAPOLI</option>
                        <option value=”NO”>NOVARA</option>
                        <option value=”NU”>NUORO</option>
                        <option value=”OG”>OGLIASTRA</option>
                        <option value=”OT”>OLBIA-TEMPIO</option>
                        <option value=”OR”>ORISTANO</option>
                        <option value=”PD”>PADOVA</option>
                        <option value=”PA”>PALERMO</option>
                        <option value=”PR”>PARMA</option>
                        <option value=”PV”>PAVIA</option>
                        <option value=”PG”>PERUGIA</option>
                        <option value=”PU”>PESARO E URBINO</option>
                        <option value=”PE”>PESCARA</option>
                        <option value=”PC”>PIACENZA</option>
                        <option value=”PI”>PISA</option>
                        <option value=”PT”>PISTOIA</option>
                        <option value=”PN”>PORDENONE</option>
                        <option value=”PZ”>POTENZA</option>
                        <option value=”PO”>PRATO</option>
                        <option value=”RG”>RAGUSA</option>
                        <option value=”RA”>RAVENNA</option>
                        <option value=”RC”>REGGIO DI CALABRIA</option>
                        <option value=”RE”>REGGIO NELL’EMILIA</option>
                        <option value=”RI”>RIETI</option>
                        <option value=”RN”>RIMINI</option>
                        <option value=”RM”>ROMA</option>
                        <option value=”RO”>ROVIGO</option>
                        <option value=”SA”>SALERNO</option>
                        <option value=”SS”>SASSARI</option>
                        <option value=”SV”>SAVONA</option>
                        <option value=”SI”>SIENA</option>
                        <option value=”SR”>SIRACUSA</option>
                        <option value=”SO”>SONDRIO</option>
                        <option value=”TA”>TARANTO</option>
                        <option value=”TE”>TERAMO</option>
                        <option value=”TR”>TERNI</option>
                        <option value=”TO”>TORINO</option>
                        <option value=”TP”>TRAPANI</option>
                        <option value=”TN”>TRENTO</option>
                        <option value=”TV”>TREVISO</option>
                        <option value=”TS”>TRIESTE</option>
                        <option value=”UD”>UDINE</option>
                        <option value=”VA”>VARESE</option>
                        <option value=”VE”>VENEZIA</option>
                        <option value=”VB”>VERBANO-CUSIO-OSSOLA</option>
                        <option value=”VC”>VERCELLI</option>
                        <option value=”VR”>VERONA</option>
                        <option value=”VV”>VIBO VALENTIA</option>
                        <option value=”VI”>VICENZA</option>
                        <option value=”VT”>VITERBO</option>
                    </select>

                    -->
				    <%= Html.TextBoxFor(model => model.District)%>
                    <%= Html.ValidationMessageFor(model => model.District)%>
			    </label>
			    <label for="cap">
				    CAP
				    <%= Html.TextBoxFor(model => model.CAP)%>
                    <%= Html.ValidationMessageFor(model => model.CAP)%>
			    </label>                                               
            
                <p class="privacy_accept">
					Dichiaro di aver preso visione dell’<a href="<%= Url.Content("~/Home/Privacy") %>" title="informativa sulla privacy">informativa sulla privacy</a> e di acconsentire al trattamento dei miei dati da parte della Banca per le finalità menzionate alle lettere (a) e (b) della suddetta informativa.
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
					Accetto il <a href="<%= Url.Content("~/Home/Rule") %>" title="regolamento del concorso">regolamento del concorso</a> a  premi “BARCLAYS ART PRIZE FOR YOUNG TALENTS”
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

                <div class="clear"></div>

		        <div class="dialogButtons">
                    <input type="submit" value="Accetta e vota" id="vote-btn" class="btn btn-cyan75" />
                </div>

    <% } %>

    <div>
        <%= Html.ActionLink("Back to List", "Index") %>
    </div>


