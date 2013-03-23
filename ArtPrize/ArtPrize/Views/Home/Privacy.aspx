<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="ContentHeader" ContentPlaceHolderID="header" runat="server">
    <!-- Breadcrumb nav -->
			<div class="" id="secondaryNavigation">
				<div class="secondaryNavigationContainer">
					<ol>
						<li class="preSelected">
							<span id="home">
							<a title="Home" href="<%= Url.Content("~/Home/Index") %>">Home</a>
							</span>
						</li>
						<li class="selected">
							<span>
							<a href="<%= Url.Content("~/Home/Privacy") %>" id="link_privacy">Privacy</a>
							</span>
						</li>
					</ol>
				</div>
				<!--/secondaryNavigationContainer -->
			</div>
			<!-- /Breadcrumb nav -->
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div id="inner">
        <div class="inner">
            <div class="widthNine">
                <div class="inner" id="contentHeader">
                    <div class="widthOne">
                        <h1>Privacy</h1>
                    </div>
                </div>

                <div class="rte">
                    <h3>INFORMATIVA AI SENSI DELL’ART. 13 DEL DECRETO LEGISLATIVO 30 GIUGNO 2003 N. 196
                    (codice in materia di protezione dei dati personali)</h3>
                    <p>I dati raccolti con il presente modulo saranno trattati da Barclays Bank PLC (di seguito la &grave;Banca”), in qualit&agrave; di titolare del trattamento, per le seguenti finalit&agrave;: (a) gestione del concorso &grave;Barclays art prize for young talents”, (b) invio di aggiornamenti in merito al concorso &grave;Barclays art prize for young talents” (c) informazione commerciale e promozione e vendita di prodotti e servizi offerti dalla Banca e da societ&agrave; appartenenti al medesimo Gruppo Barclays, il tutto mediante posta anche elettronica, telefono, sms, mms, fax, sistemi automatizzati di chiamata. </p>
                    <p>I dati potranno essere altresì trattati per finalit&agrave; di segmentazione della clientela sulla base di macro-cluster omogenei. I dati saranno trattati mediante strumenti manuali, informatici e telematici ed in ogni caso idonei a garantirne la sicurezza e ad evitare accessi non autorizzati ai dati, con logiche strettamente correlate alle finalit&agrave; del trattamento.</p>
                    <p>I dati non saranno diffusi e potranno essere comunicati, esclusivamente per le finalit&agrave; di cui sopra a (i) persone, societ&agrave;, associazioni o studi professionali che prestino servizi ed attivit&agrave; di assistenza e consulenza alla Banca, (ii) societ&agrave; appartenenti al medesimo Gruppo Societario della Banca, anche situate all’estero, (iii) soggetti cui la facolt&agrave; di accedere ai dati sia riconosciuta da disposizioni di legge e di normativa secondaria.</p>
                    <p>I soggetti di cui sopra tratterranno i dati in qualit&agrave; di autonomi titolari del trattamento, essendo estranei all’originale trattamento svolto dalla Banca, ovvero potranno accedervi in qualit&agrave; di responsabili esterni del trattamento. Potr&agrave; altresì accedere ai dati il personale dipendente e/o i collaboratori della Banca opportunamente incaricati. L’elenco aggiornato dei responsabili &egrave; disponibile presso la sede della Banca su richiesta.</p>
                        <p>Il conferimento dei dati per le suddette finalit&agrave; &egrave; facoltativo. Tuttavia, i dati richiesti in sede di compilazione del presente modulo di registrazione e contrassegnati con un asterisco (*) sono strettamente funzionali e necessari per consentire la partecipazione al concorso. Per tale ragione il trattamento di tali dati per le finalit&agrave; di cui alle precedenti lettere (a) e (b) non necessita del suo consenso. Un eventuale suo rifiuto a conferire detti dati avr&agrave; come conseguenza l’impossibilit&agrave; di proseguire la sua registrazione e di conseguenza l’impossibilit&agrave; di consentire la sua partecipazione al concorso. Un eventuale rifiuto a conferire i dati per le finalit&agrave; di cui alla precedente lettera (c) non pregiudicher&agrave; invece, in alcun modo, la sua partecipazione al concorso. Prestando il suo consenso acconsentir&agrave; alla ricezione di dette comunicazioni con le modalit&agrave; di cui sopra. Ai sensi dell’art. 7 del D.Lgs. 196/2003, lei ha diritto di ottenere la conferma dell’esistenza, la comunicazione, l’aggiornamento, la rettificazione, l’integrazione, la cancellazione, la trasformazione in forma anonima o il blocco dei suoi dati, nonché di opporsi al trattamento a fini di invio di materiale pubblicitario o di vendita diretta o per il compimento di ricerche di mercato o di comunicazione commerciale. Lei potr&agrave; esercitare tali diritti scrivendo a Barclays Bank PLC, Retail Distribution & Marketing Manager - Via Arconati 1, 20135 Milano, e-mail:<br/>
                    <a href="mailto:marketing@barclays.it" title="mail">marketing@barclays.it</a>. Titolare del trattamento &egrave; Barclays Bank PLC, con sede legale ed amministrativa in 1, Churchill Place London E14 5HP (UK), e sede secondaria in Italia in Via della Moscova 18 - 20121 Milano, www.barclays.it.</p>
                    Responsabile del trattamento &egrave; il Retail Distribution & Marketing Manager della Divisione Retail and Business Banking Italia.</p>
                </div>

            </div>

            <div class="widthThree" id="panel">
                <div class="panelSectionLinks">
                    <h3>In questa sezione:</h3>
                    <ul class="twoLevels">
                        <li>
                            <h3><a href="<%= Url.Content("~/Home/Prize") %>" title="Barclays Art Prize: Premio">Premio</a></h3>

                        </li>

                        <li>
                            <h3><a href="<%= Url.Content("~/Home/Rule") %>" title="Barclays Art Prize: Regolamento">Regolamento</a></h3>
                        </li>
                    </ul>
                </div>
            </div>

        </div><!--/inner-->
   </div><!--/inner-->

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
