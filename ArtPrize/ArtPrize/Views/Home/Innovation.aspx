<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="ContentHeader" ContentPlaceHolderID="header" runat="server">

    <!-- Breadcrumb nav -->
			<div class="" id="secondaryNavigation">
				<div class="secondaryNavigationContainer">
					<ol>
						<li class="preSelected">
							<span id="home">
							<a title="Home" href="http://www.barclays.it/artprize/">Home</a>
							</span>
						</li>
						<li class="selected">
							<span>
							<a href="http://www.barclays.it/artprize/innovation.html" id="barclays_ic">Barclays Innovation Center</a>
							</span>
						</li>
					</ol>
				</div>
				<!--/secondaryNavigationContainer -->
			</div>
			<!-- /Breadcrumb nav -->

</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <section class="lens bleedHalf lensTypeNews lazyloaded" id="innovation-center"><!-- INIZIO SECONDO SLIDER --->
	            <div class="inner">
	                <div class="primary">
	                    <h2>Barclays Innovation Center</h2>
	                    <h3>di piazza della Repubblica, Milano</h3>
	                    <div class="listNewsItems">
	                        <div class="inner">
	                            <ul>
	                                <li>
	                                    <p><a href="http://www.barclays.it/Premier_Flagship_Milano_Tour_Virtuale.aspx" title="La nuova filiale Barclays nel cuore di Milan">La nuova filiale nel cuore di Milano</a></p>
	                                    <img src="../img/innovationcenter_min.jpg">
	                                </li>
	
	                                <li>
	                                    <p><a href="http://www.barclays.it/Barclays_Italia.aspx" title="Barclays fornitore globale di servizi finanziari">
	                                        Fornitore globale di servizi finanziari
	                                    </a></p>
	                                    <img src="../img/innovationcenter_min_2.jpg">
	                                </li>
	                            </ul>
	                        </div>
	                    </div>
	                </div><!-- fine primary -->
	
	                <div class="secondary">
	                    <div class="imageWithCaption">
	                    	<figure>
		                        <img alt="Barclays Innovation Center" src="../img/Satellite.jpg">
		                        <p>La nuova filiale nel cuore di Milano</p>
	                        </figure>
	                        <figure>
	                            <img alt="Barclays Innovation Center" src="../img/Satellite_2.jpg">
	                            <p>Barclays caption image.....</p>
	                        </figure>
	                        <figure>
	                            <img alt="Barclays Innovation Center" src="../img/Satellite_3.jpg">
	                            <p>Barclays caption image.....</p>
	                        </figure>
	                        <figure>
	                            <img alt="Barclays Innovation Center" src="../img/Satellite_4.jpg">
	                            <p>Barclays caption image.....</p>
	                        </figure>
	                        <figure>
	                            <img alt="Barclays Innovation Center" src="../img/Satellite_5.jpg">
	                            <p>Barclays caption image.....</p>
	                        </figure>
	                        <figure>
	                            <img alt="Barclays Innovation Center" src="../img/Satellite_6.jpg">
	                            <p>Barclays caption image.....</p>
	                        </figure>
	                    </div>
	
	                    <div class="newsItemsPagination">
	                        <div class="newsItemsPaginationWrapper">
	                            <a href="#" class="previous">Previous</a>
	                            <ol>
	                                <li class="">
	                                    <span>Page view: </span>
	                                    <em unselectable="on">1</em>
	                                </li>
	                                <li class="selected">
	                                    <span>Page view: </span>
	                                    <em unselectable="on">2</em>
	                                </li>
	                                <li class="">
	                                    <span>Page view: </span>
	                                    <em unselectable="on">3</em>
	                                </li>
	                            </ol>
	                            <a href="#" class="next ">Next</a>
	                        </div>
	                    </div>
	
	                    <ul class="listLinks">
							<li><a href="about.html" title="About Barclays Art Prize">Il concorso</a></li>
							<li><a href="opere-in-gara.html" title="Barclays Art Prize: Opera in gara">Opera in gara</a></li>
							<li><a href="regolamento.html" title="Barclays Art Prize: Regolamento">Regolamento</a></li>
							<li><a href="premio.html" title="Barclays Art Prize: Premio">Premio</a></li>  
	                    </ul>
	
	                </div><!-- fine secondary -->
	
	            </div><!-- fine inner -->
	
	        </section>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
