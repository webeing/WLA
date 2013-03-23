<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="SecondaryNav" ContentPlaceHolderID="header" runat="server">
    <div class="empty" id="secondaryNavigation"></div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="cycle-slideshow" 
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
	                                    <img src="../img/home/01home_visual.png" alt="Barclays Art Prize"/>
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
	                            <h2>Barclays Art Prize</h2>
	                            <h3>for young talents</h3>
	                            <div class="rte">
	                                <p>Barclays investe nel talento dei giovani artisti emergenti. La prima edizione del concorso Barclays Art Prize for young talents si rivolge agli studenti e agli ex studenti dell'Accademia di Belle Arti di Brera.
	                                   Vota la tua opera preferita e scopri come vincere un weekend in una citt&agrave; d'arte italiana.</p>
	                            </div>
	
	                            <ul class="listLinks">
	                                <li><a href="<%= Url.Content("~/Home/About") %>" title="Barclays Art Prize: Il concorso">Il concorso</a></li>
	                                <li><a href="<%= Url.Content("~/Home/Works") %>" title="Barclays Art Prize: Le opere in gara">Le opere in gara</a></li>
	                            </ul>
	
	                        </div><!--/secondary-->
	
	                    </div><!--/inner-->
	
	                </section><!-- FINE PRIMA SLIDER --->

	                <section id="artprize-preview" class="lens"><!-- INIZIO SECONDO SLIDER --->
	
	                        <div class="inner">
	                            <div class="widthFive primary">
	                                <h2>Vota una delle tre <br/>opere in gara</h2>
	                            <h3>Vinci un weekend in una citt&#224; d'arte italiana</h3>
	                            <p></p>
	
	                            <div class="listNewsItems">
	                                <ul>
	                                    <li class="column">
                                            <p>
                                                <a href="#" title="Barclays Art Prize: Opera in gara - La barca che naviga, Andrea Silvestri">
                                                La barca che naviga <br/>
                                                Andrea Silvestri
                                                </a>
                                            </p>
                                            <img src="../img/minion.jpg" alt="Barclays Art Prize: Opera in gara - La barca che naviga, Andrea Silvestri">
                                        </li>
	
                                        <li>
                                            <p>
                                                <a href="#" title="Barclays Art Prize: Opera in gara - La donna con i fiori, Chiara Stella">
                                                    La donna con i fiori <br/>
                                                    Chiara Stella
                                                </a>
                                            </p>
                                            <img src="../img/minion.jpg" alt="Barclays Art Prize: Opera in gara - La donna con i fiori, Chiara Stella">
                                        </li>
	
                                        <li class="last">
                                            <p>
                                                <a href="#" title="Barclays Art Prize: Opera in gara - Explosion, Matteo Falcini">
                                                    Explosion <br/>
                                                    Matteo Falcini
                                                </a>
                                            </p>
                                            <img src="../img/minion.jpg" alt="Barclays Art Prize: Opera in gara - Explosion, Matteo Falcini">
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
		                                <img src="http://placehold.it/540x307&text=opera01" alt="Opera in gara: Explosion, Matteo Falcini" />
		                                <p>Explosion, Matteo Falcini</p>
	                                </figure>
	                                <figure class="image">
	                                    <img src="http://placehold.it/540x307&text=opera02" alt="Opera in gara: Explosion, Matteo Falcini" />
	                                    <p>Didascalia opera 2</p>
	                                </figure>
	                                <figure class="image">
	                                    <img src="http://placehold.it/540x307&text=opera03" alt="Opera in gara: Explosion, Matteo Falcini" />
	                                    <p>Didascalia opera 3</p>
	                                </figure>
	                            </div><!--/imageWithCaption-->
	
	                            <ul class="listLinks">
	                                <li><a href="<%= Url.Content("~/Home/Works") %>" title="Barclays Art Prize: Vota la tua opera preferita">Vota la tua opera preferita</a></li>
	                                <li><a href="<%= Url.Content("~/Home/Prize") %>" title="Barclays Art Prize: Premio">Premio</a></li>
	                                <li><a href="<%= Url.Content("~/Home/Rule") %>" title="Barclays Art Prize: Regolamento">Regolamento</a></li>
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
	                                    We&#8217;re using our skills, time, money and expertise to support the communities in which we operate.
	                                </p>
	
	                                <ul class="listLinks">
	                                    <li>
	                                        <a href="<%= Url.Content("~/Home/Innovation") %>" title="Barclays Art Prize: Scopri di più su Barclays Innovation Center">Scopri di pi&#249;</a>
	                                    </li>
	                                </ul>
	
	                            </div>
	                        </div><!--/widthSix-->
	
	                        <div class="widthSix">
	                            <div class="imageWithCaption">
	                                <img src="../img/Satellite_2.jpg" alt="Apertura nuovo centro di innovazione" />
	                            </div>
	                        </div><!--/widthSix-->
	                    </div><!--/inner-->
	                </section><!-- FINE TERZA SLIDER --->
                </div><!--/cycle-slideshow -->
</asp:Content>

<asp:Content ID="footer" ContentPlaceHolderID="footer" runat="server">
    <ul id="lensNavigator">
        <li id="previous"><a href="#" class="prev" title="">Previous</a></li>
        <li id="next"><a href="#" class="next" title="">Next</a></li>
    </ul>
</asp:Content>
