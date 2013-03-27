<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

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
					<a href="<%= Url.Content("~/Innovation") %>" id="link_barclays_ic">Barclays Innovation Center</a>
					</span>
				</li>
			</ol>
		</div>
		<!--/secondaryNavigationContainer -->        
	</div>
	<!-- /Breadcrumb nav -->

</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <section class="lens" id="innovation-center"><!-- INIZIO SECONDO SLIDER --->
	            <div class="inner">
	                <div class="widthFive primary">
	                    <h2>Barclays Innovation Center</h2>
	                    <h3>di piazza della Repubblica, Milano</h3>
	                    <div class="listNewsItems">
	                        <ul>
	                            <li>
	                                <p><a href="#tab-1" title="La nuova filiale Barclays nel cuore di Milano">Barclays Premier Flagship<br/>
                                        <small>Via dei Mercanti 10, Milano</small></a>
                                    </p>
	                                <img src="http://placehold.it/180x110">
	                            </li>
	
	                            <li>
	                                <p></p><a href="#tab-2" title="Barclays Innovation Center di Piazza della Repubblica a Milano - Work in progress">
                                      Barclays Innovation Center<br/>
                                      <small>Piazza della Repubblica a Milano<br/>Work in progress</small>
                                    </a></p>
	                                <img src="http://placehold.it/180x110">
	                            </li>
	                                
	                            <li>
	                                 <p><a href="#tab-3" title="Barclays fornitore globale di servizi finanziari">
                                       Barclays Art Prize <br/>
                                       <small>for young talents</small>
                                    </a></p>
	                                <img src="http://placehold.it/180x110">
	                            </li>
	                        </ul>
	                    </div><!--/listNewsItems-->
	                </div><!-- fine primary -->
	
	                <div class="widthSeven secondary">

	                    <!--tab1-->
                        <div id="tab-1">
                            <div class="imageWithCaption cycle-slideshow"
                                                            data-cycle-fx="scrollHorz"
                                                            data-cycle-timeout="2000"
                                                            data cycle-swipe="true"
                                                            data-cycle-slides="> figure"
                                                            data-cycle-loader="wait">
                            <div class="cycle-pager"></div>

                            <figure>
                                <img alt="Barclays Innovation Center" src="../img/Satellite.jpg">
                                <p>Barclays Premier Flagship. La nuova filiale nel cuore di Milano</p>
                            </figure>
                            <figure>
                                <img alt="Barclays Innovation Center" src="../img/Satellite_2.jpg">
                                <p>Barclays Premier Flagship. La nuova filiale nel cuore di Milano</p>
                            </figure>
                            <figure>
                                <img alt="Barclays Innovation Center" src="../img/Satellite_3.jpg">
                                <p>Barclays Premier Flagship. La nuova filiale nel cuore di Milano</p>
                            </figure>
                            <figure>
                                <img alt="Barclays Innovation Center" src="../img/Satellite_4.jpg">
                                <p>Barclays Premier Flagship. La nuova filiale nel cuore di Milano</p>
                            </figure>
                            <figure>
                                <img alt="Barclays Innovation Center" src="../img/Satellite_5.jpg">
                                <p>Barclays Premier Flagship. La nuova filiale nel cuore di Milano</p>
                            </figure>
                       </div><!--/imageWithCaption-->
                            <h3>
                                Barclays Premier Flagship - Via dei Mercanti 10, Milano
                            </h3>
                            <p class="rte">
                            Una fusione perfetta tra banca e design: ricercatezza negli arredi e stile italiano fanno da cornice a uno spazio concepito per sviluppare relazioni professionali e personali, ed ospitare seminari, eventi e incontri dedicati.
                            </p>
                        </div><!--tab1-->

                        <!--tab2-->
                        <div id="tab-2">
                            <div class="imageWithCaption">
                                <figure>
                                    <img alt="Barclays Innovation Center di Piazza della Repubblica a Milano" src="http://placehold.it/560x345">
                                    <p>Barclays Innovation Center di Piazza della Repubblica a Milano</p>
                                </figure>
                            </div>	<!--/imageWithCaption-->

                            <h3>Barclays Innovation Center di Piazza della Repubblica a Milano - Work in progress</h3>
                            <p class="">
                            I lavori di restyling della filiale sono quasi terminati. La nuova flagship rappresenterà un luogo di eccellenza tecnologica e sperimentazione di tutte le innovazioni del mondo del banking. Saranno a disposizione della clientela tool finanziari e supporti tecnologici, insieme ad aree dedicate ai bambini, spazi per incontri ed eventi.
                            </p>
                        </div><!--tab2-->

                        <!--tab3-->
                        <div id="tab-3">

                            <div class="imageWithCaption cycle-slideshow"
                                                                data-cycle-fx="scrollHorz"
                                                                data-cycle-timeout="2000"
                                                                data cycle-swipe="true"
                                                                data-cycle-slides="> figure"
                                                                data-cycle-loader="wait">
                                 <div id="cycle-pager-tab-3" class="cycle-pager"></div>

                                <figure>
                                     <img alt="concorso Barclays Art Prize for young talents" src="../img/innovation/ic-visual.png">
                                     <p>La prima edizione del concorso Barclays Art Prize for young talents</p>
                                 </figure>
                                 <figure>
                                     <img alt="concorso Barclays Art Prize for young talents opera 1" src="http://placehold.it/560x345&text=opera01">
                                     <p>NOME AUTORE TITOLO OPERA 1</p>
                                 </figure>
                                 <figure>
                                     <img alt="concorso Barclays Art Prize for young talents opera 2" src="http://placehold.it/560x345&text=opera02">
                                     <p>NOME AUTORE TITOLO OPERA 2</p>
                                 </figure>
                                 <figure>
                                     <img alt="concorso Barclays Art Prize for young talents opera 3" src="http://placehold.it/560x345&text=opera03">
                                     <p>NOME AUTORE TITOLO OPERA 2</p>
                                 </figure>
                            </div><!--/imageWithCaption-->


                            <h3> Barclays Art Prize for young talents</h3>
                            <p class="">
                            Barclays investe nel talento dei giovani artisti emergenti. Scopri questa
                            prima edizione del concorso Barclays Art Prize for young talents, vota la tua opera
                            preferita e scopri come vincere un weekend in una città d'arte italiana.
                            </p>

                            <ul class="listLinks">
                                <li><a href="about.html" title="About Barclays Art Prize">Il concorso</a></li>
                                <li><a href="opere-in-gara.html" title="Barclays Art Prize: Opera in gara">Vota le opere in gara</a></li>
                            </ul>
                        </div><!--tab3-->

	                    <ul class="listLinks">
							<li><a href="<%= Url.Content("~/About") %>" title="About Barclays Art Prize">Il concorso</a></li>
							<li><a href="<%= Url.Content("~/opere-in-gara") %>" title="Barclays Art Prize: Opere in gara">Opere in gara</a></li>
							<li><a href="<%= Url.Content("~/Regolamento") %>" title="Barclays Art Prize: Regolamento">Regolamento</a></li>
							<li><a href="<%= Url.Content("~/Premi") %>" title="Barclays Art Prize: Premio">Premio</a></li>  
	                    </ul>
	
	                </div><!-- fine secondary -->
	
	            </div><!-- fine inner -->
	
	        </section>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
