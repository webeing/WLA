﻿<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="meta" ContentPlaceHolderID="meta_og" runat="server">
    <meta name="description" content="La prima edizione del concorso Barclays Art Prize for young talents si rivolge agli studenti e agli ex studenti dell'Accademia di Belle Arti di Brera." />
    <title>Barclays Art Prize Home</title>
</asp:Content>
<asp:Content ID="SecondaryNav" ContentPlaceHolderID="header" runat="server">
    <div class="empty" id="secondaryNavigation"></div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="home-cycle" class="cycle-slideshow" 
            data-cycle-fx="scrollHorz"
            data-cycle-timeout="0"
            data-cycle-swipe="true"
            data-cycle-prev="#previous"
            data-cycle-next="#next"
            data-cycle-slides="> section"
            >
        <section id="barclays-artprize" class="lens"><!-- PRIMA SLIDER --->
	        <div class="inner">
	            <div class="widthSix primary">
	                <div class="aperture">
	                    <span class="curtain left">
	                        <span class="edge">
	                            <span class="top"></span>
	                            <span class="bottom"></span>
	                        </span>
	                    </span>
	
	                    <div class="imageWithCaption">
	                        <img src="<%= Url.Content("~/img/opere/uno-nessuno-centomila.jpg") %>" alt="Uno, Nessuno, Centomila di Clelia Scimone si aggiudica il premio dell'edizione del Barclays Art Prize 2013"/>
	                    </div>
	
	                    <span class="curtain right">
	                        <span class="edge">
	                            <span class="top"></span>
	                            <span class="bottom"></span>
	                        </span>
	                    </span>
	                </div><!--/aperture-->
	            </div><!--/primary-->
	
	            <div class="widthSix secondary">
	                <h2>Barclays Art Prize 2013</h2>
	                <h3>A Clelia Scimone il primo premio</h3>
	                <div class="rte">
	                    <p>Con <strong>"Uno, Nessuno, Centomila"</strong> Clelia Scimone si è aggiudicata il primo premio dell'edizione del Barclays Art Prize 2013.<br />
                            Il secondo classificato è "Arcano Maggiore n. 3 - L'Imperatrice" di Pietro Librici; terzo classificato, "Ti allungo una mano" di Giulio Pace.<br />
                            Ringraziamo tutti coloro che hanno con il loro voto sostenuto il talento.</p>
	                </div>
	
	                <ul class="listLinks">
	                    <li><a href="<%= Url.Content("~/About") %>" title="Barclays Art Prize: Il concorso">Il concorso</a></li>
	                    <li><a href="<%= Url.Content("~/opere-in-gara") %>" title="Barclays Art Prize: Le opere in gara">Le opere in gara</a></li>
	                </ul>	
	            </div><!--/secondary-->
	        </div><!--/inner-->	
	    </section><!-- FINE PRIMA SLIDER --->

	    <section id="artprize-preview" class="lens"><!-- INIZIO SECONDO SLIDER --->
	
	            <div class="inner">
	                <div class="widthFive primary">
	                    <h2>Vota una delle 3 <br/>opere in gara</h2>
	                <h3>Puoi vincere un weekend in una citt&#224; d'arte italiana</h3>
	                <p></p>
	
	                <div class="listNewsItems">
	                    <ul>
	                        <li>
                                <p>
                                    Uno, nessuno, centomila<br/>
                                    Clelia Scimone  
                                </p>
                                <img src="<%= Url.Content("~/img/opere/uno-nessuno-centomila-min.jpg") %>" alt="Barclays Art Prize Uno, nessuno, centomila Clelia Scimone">
                            </li>
	
                            <li>
                                <p>
                                    Ti allungo una mano<br/>
                                    Giulio Pace
                                </p>
                                <img src="<%= Url.Content("~/img/opere/ti-allungo-una-mano-min.jpg") %>" alt="Barclays Art Prize Ti allungo una mano Giulio Pace">
                            </li>
	
                            <li class="last">
                                <p>
                                    Arcano Maggiore n. 3 – L’Imperatrice<br/>
                                    Pietro Librici
                                </p>
                                <img src="<%= Url.Content("~/img/opere/arcano-maggiore-imperatrice-min.jpg") %>" alt="Barclays Art Prize Arcano Maggiore n. 3 – L’Imperatrice Pietro Librici">
                            </li>
	                    </ul>
	                </div>
	            </div><!-- fine primary -->
	
	            <div class="widthSeven secondary">
	                <div class="imageWithCaption cycle-slideshow"
                                data-cycle-fx="scrollHorz" 
                                data-cycle-timeout="2000" 
                                data cycle-swipe="true" 
                                data-cycle-slides="> figure" 
                                data-cycle-loader="wait">

	                    <div class="cycle-pager"></div>
	                    <figure class="image">
		                    <img src="<%= Url.Content("~/img/opere/uno-nessuno-centomila.jpg") %>" alt="Uno, nessuno, centomila Clelia Scimone" />
		                    <p>Uno, nessuno, centomila Clelia Scimone</p>
	                    </figure>
	                    <figure class="image">
	                        <img src="<%= Url.Content("~/img/opere/ti-allungo-una-mano.jpg") %>" alt="Barclays Art Prize Ti allungo una mano Giulio Pace" />
	                        <p>Ti allungo una mano Giulio Pace</p>
	                    </figure>
	                    <figure class="image">
	                        <img src="<%= Url.Content("~/img/opere/arcano-maggiore-imperatrice.jpg") %>" alt="Barclays Art Prize Arcano Maggiore n. 3 – L’Imperatrice Pietro Librici" />
	                        <p>Arcano Maggiore n. 3 – L’Imperatrice Pietro Librici</p>
	                    </figure>
	                </div><!--/imageWithCaption-->
	
	                <ul class="listLinks">
	                    <li><a href="<%= Url.Content("~/opere-in-gara") %>" title="Barclays Art Prize: Vota la tua opera preferita">Vota la tua opera preferita</a></li>
	                    <li><a href="<%= Url.Content("~/Premio") %>" title="Barclays Art Prize: Premio">Premio</a></li>
	                    <li><a href="<%= Url.Content("~/Regolamento") %>" title="Barclays Art Prize: Regolamento">Regolamento</a></li>
	                </ul>
	
	            </div><!-- fine secondary -->
	        </div><!-- fine inner -->
	
	    </section><!-- FINE SECONDA SLIDER --->

	    <section id="barclays-innovation" class="lens"><!-- TERZA SLIDER --->
	        <div class="inner">
	            <div class="widthSix">
	                <h2>Apertura nuovo centro d&#8217;innovazione</h2>
	
	                <div class="rte">
	                    <p>
	                        I lavori di ristrutturazione del nuovo centro di innovazione Barclays di Piazza della Repubblica a Milano sono quasi ultimati. Scopri questa e altre novità relative alla Barclays Premier Flagship di via dei Mercanti a Milano.
	                    </p>
	
	                    <ul class="listLinks">
	                        <li>
	                            <a href="<%= Url.Content("~/Innovation") %>" title="Barclays Art Prize: Scopri di più su Barclays Innovation Center">Scopri di pi&#249;</a>
	                        </li>
	                    </ul>
	
	                </div>
	            </div><!--/widthSix-->
	
	            <div class="widthSix">
	                <div class="imageWithCaption">
	                    <img src="<%= Url.Content("~/img/innovation/01innovation01.png") %>" alt="Apertura nuovo centro di innovazione" />
	                </div>
	            </div><!--/widthSix-->
	        </div><!--/inner-->
	    </section><!-- FINE TERZA SLIDER --->
    </div><!--/cycle-slideshow -->
</asp:Content>

<asp:Content ID="footer" ContentPlaceHolderID="footer" runat="server">
    <div class="horizontal">
        <ul id="lensNavigator">
            <li id="previous"><a href="#" class="prev" title="">Previous</a></li>
            <li id="next"><a href="#" class="next" title="">Next</a></li>
        </ul>
    </div>
</asp:Content>
