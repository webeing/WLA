<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ArtPrize.Models.Vote>" %>    
<%@ Import Namespace="Recaptcha" %>
   
 <form method="post" id="vota-artprize" action="<%= Url.Action("Add","Vote") %>" novalidate="novalidate">
 
 
            <input type="hidden" value="<%= Model.ArtworkId %>" name="ArtworkId" id="ArtworkId">           

            <p class="privacy_accept client">
                Sei già cliente Barclays?
                <span>
                    <input type="radio" value="true" name="User.IsCustomer" id="Radio3" class="required"/>si
                </span>
                <span>
                    <input type="radio" value="false" name="User.IsCustomer" id="Radio4"/>no
                </span>
                <br/>
            </p>
            
            <label for="Name">
				Nome <small>*</small>
				<input type="text" value="" name="User.Name" id="User_Name" class="required"/>
                
			</label>                                    
            
            <label for="surname">
				Cognome <small>*</small>
				<input type="text" value="" name="User.LastName" id="User_LastName" class="required"/>
                
			</label>                                    
            
            <label for="birthday">
                Data di nascita <small>*</small>
                <input type="text" value="" name="User.Birthday" id="User_Birthday" class="required dateIT is18"/>
            </label>

            <label for="gender">
                Sesso <small>*</small><br>
                <span>F
                <input type="radio" value="f" name="User.Gender" id="User_Gender_M" class="required"/> </span>
                <span>M
                <input type="radio" value="m" name="User.Gender" id="User_Gender_F" class="required"/></span>

            </label>
            <label for="phone">
                Telefono cellulare <small>*</small>
                <!--
                //dovremmo inserire un valore "finto" iniziale a titolo di esempio
                //value="es. 33x xxxxxxx"
                -->
                <input type="text" value="" name="User.MobilePhone" id="User_MobilePhone" class="required digits"/>

            </label>
            <label for="mail">
                e-mail <small>*</small>
                <input type="text" value="" name="User.Email" id="User_Email" class="required email"/>

            </label>
            <label for="address">
                Indirizzo <small>*</small>
                <input type="text" value="" name="User.Address" id="User_Address" class="required"/>

            </label>
            <label for="country">
                Comune <small>*</small>
                <input type="text" value="" name="User.City" id="User_City" class="required"/>

            </label>
            <label for="prov">
                Provincia <small>*</small>
                <select name="User.District" id="User_District" class="selected">
                    <option value="">- -</option>
                    <option value="AG">AGRIGENTO</option>
                    <option value="AL">ALESSANDRIA</option>
                    <option value="AN">ANCONA</option>
                    <option value="AO">AOSTA</option>
                    <option value="AR">AREZZO</option>
                    <option value="AP">ASCOLI PICENO</option>
                    <option value="AT">ASTI</option>
                    <option value="AV">AVELLINO</option>
                    <option value="BA">BARI</option>
                    <option value="BT">BARLETTA-ANDRIA-TRANI</option>
                    <option value="BL">BELLUNO</option>
                    <option value="BN">BENEVENTO</option>
                    <option value="BG">BERGAMO</option>
                    <option value="BI">BIELLA</option>
                    <option value="BO">BOLOGNA</option>
                    <option value="BZ">BOLZANO</option>
                    <option value="BS">BRESCIA</option>
                    <option value="BR">BRINDISI</option>
                    <option value="CA">CAGLIARI</option>
                    <option value="CL">CALTANISSETTA</option>
                    <option value="CB">CAMPOBASSO</option>
                    <option value="CI">CARBONIA-IGLESIAS</option>
                    <option value="CE">CASERTA</option>
                    <option value="CT">CATANIA</option>
                    <option value="CZ">CATANZARO</option>
                    <option value="CH">CHIETI</option>
                    <option value="CO">COMO</option>
                    <option value="CS">COSENZA</option>
                    <option value="CR">CREMONA</option>
                    <option value="KR">CROTONE</option>
                    <option value="CN">CUNEO</option>
                    <option value="EN">ENNA</option>
                    <option value="FM">FERMO</option>
                    <option value="FE">FERRARA</option>
                    <option value="FI">FIRENZE</option>
                    <option value="FG">FOGGIA</option>
                    <option value="FC">FORLI’-CESENA</option>
                    <option value="FR">FROSINONE</option>
                    <option value="GE">GENOVA</option>
                    <option value="GO">GORIZIA</option>
                    <option value="GR">GROSSETO</option>
                    <option value="IM">IMPERIA</option>
                    <option value="IS">ISERNIA</option>
                    <option value="SP">LA SPEZIA</option>
                    <option value="AQ">L’AQUILA</option>
                    <option value="LT">LATINA</option>
                    <option value="LE">LECCE</option>
                    <option value="LC">LECCO</option>
                    <option value="LI">LIVORNO</option>
                    <option value="LO">LODI</option>
                    <option value="LU">LUCCA</option>
                    <option value="MC">MACERATA</option>
                    <option value="MN">MANTOVA</option>
                    <option value="MS">MASSA-CARRARA</option>
                    <option value="MT">MATERA</option>
                    <option value="VS">MEDIO CAMPIDANO</option>
                    <option value="ME">MESSINA</option>
                    <option value="MI">MILANO</option>
                    <option value="MO">MODENA</option>
                    <option value="MB">MONZA E DELLA BRIANZA</option>
                    <option value="NA">NAPOLI</option>
                    <option value="NO">NOVARA</option>
                    <option value="NU">NUORO</option>
                    <option value="OG">OGLIASTRA</option>
                    <option value="OT">OLBIA-TEMPIO</option>
                    <option value="OR">ORISTANO</option>
                    <option value="PD">PADOVA</option>
                    <option value="PA">PALERMO</option>
                    <option value="PR">PARMA</option>
                    <option value="PV">PAVIA</option>
                    <option value="PG">PERUGIA</option>
                    <option value="PU">PESARO E URBINO</option>
                    <option value="PE">PESCARA</option>
                    <option value="PC">PIACENZA</option>
                    <option value="PI">PISA</option>
                    <option value="PT">PISTOIA</option>
                    <option value="PN">PORDENONE</option>
                    <option value="PZ">POTENZA</option>
                    <option value="PO">PRATO</option>
                    <option value="RG">RAGUSA</option>
                    <option value="RA">RAVENNA</option>
                    <option value="RC">REGGIO DI CALABRIA</option>
                    <option value="RE">REGGIO NELL’EMILIA</option>
                    <option value="RI">RIETI</option>
                    <option value="RN">RIMINI</option>
                    <option value="RM">ROMA</option>
                    <option value="RO">ROVIGO</option>
                    <option value="SA">SALERNO</option>
                    <option value="SS">SASSARI</option>
                    <option value="SV">SAVONA</option>
                    <option value="SI">SIENA</option>
                    <option value="SR">SIRACUSA</option>
                    <option value="SO">SONDRIO</option>
                    <option value="TA">TARANTO</option>
                    <option value="TE">TERAMO</option>
                    <option value="TR">TERNI</option>
                    <option value="TO">TORINO</option>
                    <option value="TP">TRAPANI</option>
                    <option value="TN">TRENTO</option>
                    <option value="TV">TREVISO</option>
                    <option value="TS">TRIESTE</option>
                    <option value="UD">UDINE</option>
                    <option value="VA">VARESE</option>
                    <option value="VE">VENEZIA</option>
                    <option value="VB">VERBANO-CUSIO-OSSOLA</option>
                    <option value="VC">VERCELLI</option>
                    <option value="VR">VERONA</option>
                    <option value="VV">VIBO VALENTIA</option>
                    <option value="VI">VICENZA</option>
                    <option value="VT">VITERBO</option>
                </select>


            </label>
            <label for="cap">
                CAP <small>*</small>
                <input type="text" value="" name="User.CAP" id="User_CAP" class="required digits"/>

            </label>
            <div class="clear"></div>
            <br/>

            <p class="rule_accept">
                Accetto il <a title="regolamento del concorso" href="<%= Url.Content("~/Regolamento") %>" target="_blank">regolamento del concorso</a> a  premi “Barclays Art Prize for young talents”
                <br>
                <span>
                        <input type="radio" value="true" name="User.RuleAcceptance" id="User_RuleAcceptance" class="isTrue" checked="checked"/>Accetto
                </span>
                <span>
                    <input type="radio" value="false" name="User.RuleAcceptance" id="FalseRulesAcceptance_NO"/>Non accetto
                </span>

            </p>

            <p class="privacy_accept">
                Dichiaro di aver preso visione dell’<a title="informativa sulla privacy" href="<%= Url.Content("~/Privacy") %>" target="_blank">informativa sulla privacy</a> e di acconsentire al trattamento dei miei dati da parte della Banca per le finalità menzionate alle lettere (a) e (b) della suddetta informativa. Inoltre
                <br>
                <span>
                    <input type="radio" value="true" name="User.PrivacyRead" id="User_PrivacyRead" checked="checked"/>do il consenso
                </span>
                <span>
                    <input type="radio" value="false" name="User.PrivacyRead" id="User_PrivacyRead_NO"/>nego il consenso
                </span>
                <br/>al trattamento dei miei dati da parte della Banca per finalità di informazione commerciale, promozione e vendita di prodotti e servizi offerti dalla Banca medesima o da società appartenenti al medesimo Gruppo Barclays, consapevole che tale consenso è facoltativo.
            </p>

            <div class="clear"></div>
            <p class="disclaimer">
                Messaggio pubblicitario con finalità promozionale. Regolamento completo disponibile sul sito Barclays.it/artprize. La durata complessiva del concorso è dal 5/03/2013 al 30/04/2013 (votazione online dal 9/04/2013 al 30/04/2013); l’assegnazione finale sarà effettuata entro il 2/05/2013. Il montepremi complessivo è di € 1.500 (IVA non esposta). La partecipazione al concorso è gratuita. La votazione online è consentita a tutti i residenti in Italia di età superiore a 18 anni. Sono esclusi dalla partecipazione i dipendenti della società organizzatrice e delle società appartenenti al Gruppo Barclays.
            </p>
			<small class="legend">* Dati obbligatori.</small>					
            <div class="clear"></div>                

            <div class="dialogButtons">
                <input type="submit" class="btn btn-cyan75" id="vote-btn" value="Accetta e vota">
            </div>

    </form>

    <script type"text/javascript">
        var redirectUrl = '<%= Url.Content("~/opere-in-gara") %>';
    </script>


