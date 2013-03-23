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
					<a href="<%= Url.Content("~/Home/Innovation") %>" id="link_barclays_ic">Barclays Innovation Center</a>
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
	                                <p><a href="http://www.barclays.it/Premier_Flagship_Milano_Tour_Virtuale.aspx" title="La nuova filiale Barclays nel cuore di Milan">La nuova filiale nel cuore di Milano</a></p>
	                                <img src="http://placehold.it/180x110">
	                            </li>
	
	                            <li>
	                                <p><a href="http://www.barclays.it/Barclays_Italia.aspx" title="Barclays fornitore globale di servizi finanziari">
	                                    Fornitore globale di servizi finanziari
	                                </a></p>
	                                <img src="http://placehold.it/180x110">
	                            </li>
	                                
	                            <li>
	                                <p><a href="http://www.barclays.it/Barclays_Italia.aspx" title="Barclays fornitore globale di servizi finanziari">
	                                    Fornitore globale di servizi finanziari
	                                </a></p>
	                                <img src="http://placehold.it/180x110">
	                            </li>
	                        </ul>
	                    </div><!--/listNewsItems-->
	                </div><!-- fine primary -->
	
	                <div class="widthSeven secondary">
	                    <div class="imageWithCaption cycle-slideshow"
                        	                            data-cycle-fx="scrollHorz" 
                                                        data-cycle-timeout="2000" 
                                                        data cycle-swipe="true" 
                                                        data-cycle-slides="> figure" 
                                                        data-cycle-loader="wait">
	                        <div class="cycle-pager"></div>
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
	                    </div><!--/imageWithCaption & cycle-slideshow-->

	                    <ul class="listLinks">
							<li><a href="<%= Url.Content("~/Home/About") %>" title="About Barclays Art Prize">Il concorso</a></li>
							<li><a href="<%= Url.Content("~/Home/Works") %>" title="Barclays Art Prize: Opere in gara">Opere in gara</a></li>
							<li><a href="<%= Url.Content("~/Home/Rule") %>" title="Barclays Art Prize: Regolamento">Regolamento</a></li>
							<li><a href="<%= Url.Content("~/Home/Prize") %>" title="Barclays Art Prize: Premio">Premio</a></li>  
	                    </ul>
	
	                </div><!-- fine secondary -->
	
	            </div><!-- fine inner -->
	
	        </section>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
