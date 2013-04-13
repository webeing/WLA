<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="meta" ContentPlaceHolderID="meta_og" runat="server">
    <meta name="description" content="Barclays Privacy" />
    <title>Barclays Art Prize Privacy</title>
</asp:Content>
<asp:Content ID="ContentHeader" ContentPlaceHolderID="header" runat="server">
    <!-- Breadcrumb nav -->
			<div class="" id="secondaryNavigation">
				<div class="secondaryNavigationContainer">
					<ol>
						<li class="preSelected">
							<span id="home">
							<a title="Home" href="<%= Url.Content("~/Index") %>">Home</a>
							</span>
						</li>
						<li class="selected">
							<span>
							<a href="<%= Url.Content("~/Privacy") %>" id="link_privacy">Privacy</a>
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
                    <p>I dati raccolti con il presente modulo saranno trattati da Barclays Bank PLC (di seguito la “Banca”), in qualità di titolare del trattamento, per le seguenti finalità: (a) gestione del concorso “Barclays art prize for young talents”, (b) invio di aggiornamenti in merito al concorso “Barclays art prize for young talents” (c) informazione commerciale e promozione e vendita di prodotti e servizi offerti dalla Banca e da società appartenenti al medesimo Gruppo Barclays, il tutto mediante posta anche elettronica, telefono, sms, mms, fax, sistemi automatizzati di chiamata.</p>
                    <p>Per tale ultima finalità i dati potranno essere anche trattati per finalità di segmentazione della clientela sulla base di macro-cluster omogenei. I dati saranno trattati mediante strumenti manuali, informatici e telematici ed in ogni caso idonei a garantirne la sicurezza e ad evitare accessi non autorizzati ai dati, con logiche strettamente correlate alle finalità del trattamento.</p>
                    <p>I dati non saranno diffusi e potranno essere comunicati, esclusivamente per le finalità di cui sopra a (i) persone, società, associazioni o studi professionali che prestino servizi ed attività di assistenza e consulenza alla Banca, (ii) società appartenenti al medesimo Gruppo Societario della Banca, anche situate all’estero, (iii) soggetti cui la facoltà di accedere ai dati sia riconosciuta da disposizioni di legge e di normativa secondaria.</p>
                    <p>I soggetti di cui sopra tratterranno i dati in qualità di autonomi titolari del trattamento, essendo estranei all’originale trattamento svolto dalla Banca, ovvero potranno accedervi in qualità di responsabili esterni del trattamento. Potrà altresì accedere ai dati il personale dipendente e/o i collaboratori della Banca opportunamente incaricati. L’elenco aggiornato dei responsabili è disponibile presso la sede della Banca su richiesta.</p>
                    <p>Il conferimento dei dati per le suddette finalità è facoltativo. Tuttavia, i dati richiesti in sede di compilazione del presente modulo di registrazione e contrassegnati con un asterisco (*) sono strettamente funzionali e necessari per consentire la partecipazione al concorso. Per tale ragione il trattamento di tali dati per le finalità di cui alle precedenti lettere (a) e (b) non necessita del suo consenso. Un eventuale suo rifiuto a conferire detti dati avrà come conseguenza l’impossibilità di proseguire la sua registrazione e di conseguenza l’impossibilità di consentire la sua partecipazione al concorso. Un eventuale rifiuto a conferire i dati per le finalità di cui alla precedente lettera (c) non pregiudicherà invece, in alcun modo, la sua partecipazione al concorso. Prestando il suo consenso acconsentirà alla ricezione di dette comunicazioni con le modalità di cui sopra. Ai sensi dell’art. 7 del D.Lgs. 196/2003, lei ha diritto di ottenere la conferma dell’esistenza, la comunicazione, l’aggiornamento, la rettificazione, l’integrazione, la cancellazione, la trasformazione in forma anonima o il blocco dei suoi dati, nonché di opporsi al trattamento a fini di invio di materiale pubblicitario o di vendita diretta o per il compimento di ricerche di mercato o di comunicazione commerciale. Lei potrà esercitare tali diritti scrivendo a Barclays Bank PLC, Retail Distribution & Marketing Manager - Via Arconati 1, 20135 Milano, e-mail:
<a href="mailto:marketing@barclays.it" title="mail">marketing@barclays.it</a>. Titolare del trattamento è Barclays Bank PLC, con sede legale ed amministrativa in 1, Churchill Place London E14 5HP (UK), e sede secondaria in Italia in Via della Moscova 18 - 20121 Milano, <a href="http://www.barclays.it" title="Barclays" target="_blank">www.barclays.it</a>.
                    </p>
                    <p>Responsabile del trattamento è il Retail Distribution & Marketing Manager della Divisione Retail and Business Banking Italia.</p>
                </div>

            </div>


            <div class="widthThree" id="panel">
                <div class="panelSectionLinks">
                    <h3>In questa sezione:</h3>
                    <ul class="twoLevels">
                        <li>
                            <h3><a href="<%= Url.Content("~/Premio") %>" title="Barclays Art Prize: Premio">Premio</a></h3>

                        </li>

                        <li>
                            <h3><a href="<%= Url.Content("~/Regolamento") %>" title="Barclays Art Prize: Regolamento">Regolamento</a></h3>
                        </li>
                    </ul>
                </div>
            </div>

        </div><!--/inner-->
   </div><!--/inner-->

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
