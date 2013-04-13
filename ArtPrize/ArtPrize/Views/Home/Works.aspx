<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="meta" ContentPlaceHolderID="meta_og" runat="server">
    <meta name="description" content="Barclays Vota la tua opera preferita e potrai essere estratto per vincere un viaggio per due persone in una città d’arte italiana" />
    <title>Barclays Art Prize opere in gara</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
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
							<a href="<%= Url.Content("~/opere-in-gara") %>" id="link_vota_artprize">Vota</a>
							</span>
						</li>
					</ol>
				</div>
				<!--/secondaryNavigationContainer -->
				
                <!--//ancora da customizzare -->
				<div id="lensIndicator" class="cycle-pager">
					<span class="cycle-pager-active">•</span>
                    <span class="">•</span>
                    <span class="">•</span>
				</div>
               
			</div>
			<!-- /Breadcrumb nav -->
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div class="cycle-slideshow" 
           data-cycle-fx="scrollHorz"
           data-cycle-timeout="0"
           data-cycle-swipe="true"
           data-cycle-prev="#previous"
           data-cycle-next="#next"
           data-cycle-slides="> section"
           >
    <section id="opera-one" class="lens opera"><!-- PRIMA SLIDER --->
            <div class="inner">
                <div class="widthSix primary">
                    <h2>Uno, nessuno, centomila <br/>
                       Clelia Scimone</h2>
                    <div class="rte">
                        <p>Un viso che pian piano sembra confondersi con lo sfondo fino a quasi scomparire. Il volto di una generazione in difficoltà, che paradossalmente ci rende tutti uguali (o quasi). Così, nella continua ricerca di quel posto nel mondo che ci appartiene, ma che sembra esserci negato, ci impegniamo nella speranza che qualcuno ci noti, punti sulle nostre qualità e abbia fiducia in noi. Perché fiducia, onestà, rispetto e integrità sono i valori più importanti, necessari per ricominciare da capo e ritrovare, insieme, qualcosa che abbiamo perduto o che non abbiamo ancora trovato: la nostra identità.</p>
                        <p>Tecnica: fotografia digitale.</p>
                    </div>
                   <!--social links -->
                    <ul class="social-links">
                        <li>
                            <div class="fb-like" data-send="false" data-layout="button_count" data-width="450" data-show-faces="false" data-href="http://www.barclays.it/ArtPrize/Works/Like/1"></div>
                        </li>
                        <li><a href="https://twitter.com/share" class="twitter-share-button" data-lang="it" data-text="Vota anche tu l'opera 'Uno, nessuno, centomila' di Clelia Scimone">Tweet</a>
                        </li>
                    </ul>
                    <!--social links -->
                </div><!--/primary-->

                <div class="widthSix secondary">
                    <div class="imageWithCaption">
                        <img src="<%= Url.Content("~/img/opere/uno-nessuno-centomila.jpg") %>" alt="Barclays Art Prize Uno, nessuno, centomila Clelia Scimone" />
                        <p><strong><%= ((System.Collections.Generic.Dictionary<int,int>)ViewData["votes"])[1] %></strong>
                        persone hanno votato Uno, nessuno, centomila di Clelia Scimone</p>
                    </div>
                    
                    <!--buttons-->
                    <div class="dialogButtons">

						<a href="#zoom-op01" id="zoom-op01" class="btn zoom-btn btn-grey75" title="Ingrandisci Opera 1">Ingrandisci</a>
						<a href="<%= Url.Content("~/Vote/Works/1") %>" id="vote-op01" class="btn vote-btn btn-cyan75">Vota questa opera</a>
					</div><!--/dialogButton-->
                    
            	</div><!--/secondary-->
            </div><!--/inner-->
            	
            </section><!-- OPERA 01 --->

            <!-- OPERA 02 -->
            <section id="opera-two" class="lens opera"><!-- PRIMA SLIDER --->
            <div class="inner">
                <div class="widthSix primary">
                    <h2>Ti allungo una mano <br />Giulio Pace</h2>
                    <div class="rte">
                        <p>L’opera è stata concepita per riassumere i caratteri richiesti dalla committenza: rispetto, integrità, servizio, eccellenza e stewardship. Per fare questo ho utilizzato il valore molteplice delle mani: tendere le mani, dare la mano, essere in buone mani... sono “frasi fatte” che dimostrano quanto la gestualità delle mani simboleggi, nell’uso comune, atti di sostegno e garanzia. L’opera è così formata da due grandi mani unite tra loro da una cerniera la quale aprendosi simula un gesto di accessibilità, di apertura.</p>
                        <p>Tecnica: stampa su tessuto.</p>
                    </div>
                    <!--social links -->
                    <ul class="social-links">
                        <li>
                            <div class="fb-like" data-send="false" data-layout="button_count" data-width="450" data-show-faces="false" data-href="http://www.barclays.it/ArtPrize/Works/Like/2"></div>
                        </li>
                        <li><a href="https://twitter.com/share" class="twitter-share-button" data-lang="it" data-text="Vota anche tu l'opera 'Ti allungo una mano' di Giulio Pace">Tweet</a>
                        </li>
                    </ul>
                    <!--social links -->

                </div><!--/primary-->

                <div class="widthSix secondary">
                    <div class="imageWithCaption">
                        <img src="<%= Url.Content("~/img/opere/ti-allungo-una-mano.jpg") %>" alt="Barclays Art Prize Ti allungo una mano Giulio Pace" />
                        <p><strong><%= ((System.Collections.Generic.Dictionary<int,int>)ViewData["votes"])[2] %></strong>
                                                persone hanno votato Ti allungo una mano di Giulio Pace</p>
                    </div>
                    
                    <!--buttons-->
                    <div class="dialogButtons">

						<a href="#zoom-op02" id="zoom-op02" class="btn zoom-btn btn-grey75" title="Ingrandisci Opera 2">Ingrandisci</a>
						<a href="<%= Url.Content("~/Vote/Works/2") %>" id="vote-op02" class="btn vote-btn btn-cyan75">Vota questa opera</a>
					</div><!--/dialogButton-->
                    
            	</div><!--/secondary-->
            </div><!--/inner-->
            	
        </section><!-- OPERA 02 --->

        <!-- OPERA 03 -->
        <section id="opera-three" class="lens opera"><!-- PRIMA SLIDER --->
            <div class="inner">
                <div class="widthSix primary">
                    <h2>Arcano Maggiore n. 3 – L’Imperatrice <br />
                    Pietro Librici</h2>
                    <div class="rte">
                        <p>Il dipinto riattualizza la grande tradizione della raffigurazione di persone illustri usando in maniera moderna la luce e il colore ma anche la fonte ispiratrice. Infatti, rifacendosi alle tavole dei Tarocchi, Pietro Librici ha rielaborato la carta dell’Imperatrice, simbolo dell’azione futura e della benevolenza, dandole il volto della regina inglese Elisabetta I sotto il cui regno anche le arti conobbero grande fioritura. Dall’intenso e profondo sfondo blu notte si stagliano il blu, il bianco e il rosso, colori del brand inglese Barclays.
                        <br />
                        (Commento di Mariella De Santis)</p>
                        <p>Tecnica: olio su tela.</p>
                    </div>

                    <!--social links -->
                    <ul class="social-links">
                        <!-- link button da modificare -->
                        <li>
                          <div class="fb-like" data-href="http://www.barclays.it/ArtPrize/Works/Like/3" data-send="false" data-layout="button_count" data-width="450" data-show-faces="false"></div>
                        </li>
                        <li><a href="https://twitter.com/share" class="twitter-share-button" data-lang="it" data-text="Vota anche tu l'opera 'Arcano Maggiore n.3 - L' Imperatrice' di Pietro Librici">Tweet</a>
                        </li>
                    </ul>
                    <!--social links -->
                </div><!--/primary-->

                <div class="widthSix secondary">
                    <div class="imageWithCaption">
                        <img src="<%= Url.Content("~/img/opere/arcano-maggiore-imperatrice.jpg") %>" alt="Barclays Art Prize Arcano Maggiore n. 3 – L’Imperatrice Pietro Librici" />
                        <p><strong><%= ((System.Collections.Generic.Dictionary<int,int>)ViewData["votes"])[3] %></strong>
                                                                        persone hanno votato Arcano Maggiore n. 3 – L’Imperatrice di Pietro Librici</p>
                    </div>
                    
                    <!--buttons-->
                    <div class="dialogButtons">

						<a href="#zoom-op03" id="zoom-op03" class="btn zoom-btn btn-grey75" title="Ingrandisci Opera 3">Ingrandisci</a>
						<a href="<%= Url.Content("~/Vote/Works/3") %>" id="vote-op03" class="btn vote-btn btn-cyan75">Vota questa opera</a>
					</div><!--/dialogButton-->
                    
            	</div><!--/secondary-->
            </div><!--/inner-->
            	
        </section><!-- OPERA 03 --->
    </div><!--/cycle-slideshow-->


    <!-- BIG IMG MODAL OPENING -->
    <div id="opera-modal1" class="modal">
        <div class="dialog-wrap">
            <a id="close-op01" class="close" href="#close" title="chiudi"><img src="<%= Url.Content("~/img/icon-close.gif") %>" alt="chiudi"/></a>
            <img src="<%= Url.Content("~/img/opere/uno-nessuno-centomila-big.jpg") %>" alt="Barclays Art Prize Uno, nessuno, centomila Clelia Scimone"/>
        </div>
    </div>

    <div id="opera-modal2" class="modal">
        <div class="dialog-wrap">
            <a id="close-op02" class="close" href="#close" title="chiudi"><img src="<%= Url.Content("~/img/icon-close.gif") %>" alt="chiudi"/></a>
            <img src="<%= Url.Content("~/img/opere/ti-allungo-una-mano-big.jpg") %>" alt="Barclays Art Prize Ti allungo una mano Giulio Pace"/>
        </div>
    </div>

    <div id="opera-modal3" class="modal">
        <div class="dialog-wrap">
            <a id="close-op03" class="close" href="#close" title="chiudi"><img src="<%= Url.Content("~/img/icon-close.gif") %>" alt="chiudi"/></a>
            <img src="<%= Url.Content("~/img/opere/arcano-maggiore-imperatrice-big.jpg") %>" alt="Barclays Art Prize Arcano Maggiore n. 3 – L’Imperatrice Pietro Librici"/>
        </div>
    </div>
    <!-- /BIG IMG MODAL OPENING -->
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
 <div class="horizontal">
    <ul id="lensNavigator">
        <li id="previous"><a href="#" class="prev" title="">Previous</a></li>
        <li id="next"><a href="#" class="next" title="">Next</a></li>
    </ul>
</div>
</asp:Content>

<asp:Content ID="socialScript" ContentPlaceHolderID="Script" runat="server">
<div id="fb-root"></div>
<script>

(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/it_IT/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
/* twitter button */
!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");
</script>
<script type="text/javascript">
    $(document).ready(function () {

        $('.cycle-slideshow').on('cycle-next', function (event, opts) {
            
            FB.XFBML.parse();
        });

        $('#vota_artprize').addClass("current");
    });
</script>
</asp:Content>
