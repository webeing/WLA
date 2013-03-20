<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

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
							<a href="http://www.barclays.it/artprize/about.html" id="about_artprize">About Barclay Art Prize</a>
							</span>
						</li>
					</ol>
				</div>
				<!--/secondaryNavigationContainer -->
			</div>
			<!-- /Breadcrumb nav -->

</asp:Content>

<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
    <section id="barclays-strategic-review" class="lens lensTypeAperture lazyloaded">
	            <div class="inner">
	                <div class="widthSix primary">
	                    <div class="aperture">
	                        <span class="curtain left">
	                            <span class="edge">
	                                <span class="top"></span>
	                                <span class="bottom"></span>
	                            </span>
	                        </span>
	                        
	                        <!-- Video About -->
	                        <div class="videoWithCaption">
	    					    <div data-source="http://www.media.barclays.co.uk/player/?id=160023-6776516&amp;autostart=n&amp;enablesharing=n&amp;showrelated=n&amp;r=73893" data-height="259" data-width="460" class="linkToVideo">
	    					    	<iframe width="460" scrolling="no" height="259" frameborder="0" id="video0" src="http://www.media.barclays.co.uk/player/?id=160023-6776516&amp;autostart=n&amp;enablesharing=n&amp;showrelated=n&amp;r=73893&amp;cookie=y">
	    					    	</iframe>
	    					    </div>
	    					</div><!--/videoWithCaption-->
	                        <!--/Video About -->
	
	                        <span class="curtain right">
							<span class="edge">
								<span class="top"></span>
								<span class="bottom"></span>
							</span>
						</span>
	                    </div>
	
	                </div>
	
	                <div class="widthFive secondary">
	                    <h2>Barclays Art Prize</h2>
	                        <h3>For Young Talents</h3>
	                    <div class="rte">
	                        <p>In questa prima edizione del concorso i ragazzi sono stati invitati a reinterpretare gli asset del brand e a presentare delle opere dal tema &grave;Accessible Art&grave; Rispetto, Integrit&agrave;, Servizio, Eccellenza e Stewardship sono i brand values di Barclays che hanno inspirato anche le due commissioni di esperti nella selezione delle tre opere finaliste. La parola adesso passa agli utenti che, sempre nel rispetto di tali valori, sono chiamati ad esprimere la loro preferenza.</p>
	                        
	                    </div>
	
	                    <ul class="listLinks">
	                        <li><a href="opere-in-gara.html" title="Barclays Art Prize: Opera in gara">Opera in gara</a></li>
	                        <li><a href="regolamento.html" title="Barclays Art Prize: Regolamento">Regolamento</a></li>
	                        <li><a href="premio.html" title="Barclays Art Prize: Premio">Premio</a></li>
	                        <li><a href="http://www.accademiadibrera.milano.it/" title="Barclays Art Prize: Premio" target="_blank">Accademia delle Belle Arti di Brera</a></li>                        
	                    </ul>
	
	                </div>
	
	            </div>
	
	        </section>
</asp:Content>


