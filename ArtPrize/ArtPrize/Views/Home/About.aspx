<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

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
							<a href="<%= Url.Content("~/Home/About") %>" id="about_artprize">About Barclay Art Prize</a>
							</span>
						</li>
					</ol>
				</div>
				<!--/secondaryNavigationContainer -->
			</div>
			<!-- /Breadcrumb nav -->

</asp:Content>

<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
    <section id="barclays-about-artprize" class="lens">
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
	                    </div><!--/aperture-->
	                </div><!--/primary-->
	
	                <div class="widthSix secondary">
	                    <h2>Barclays Art Prize</h2>
	                        <h3>for young talents</h3>
	                    <div class="rte">
	                        <p>In questa prima edizione del concorso, realizzata in partnership con l’Accademia di Belle Arti di Brera, i ragazzi sono stati invitati a reinterpretare i valori su cui si fonda il marchio Barclays e a presentare delle opere dal tema &grave;Accessible Art&acute;, rappresentando lo sviluppo e l&grave;affermazione della cultura dell’Accessibilità ad ogni sistema, da quello della finanza a quello dell’arte contemporanea. I brand values del gruppo, Rispetto, Integrit&agrave;, Servizio, Eccellenza e Stewardship, hanno inspirato anche le due commissioni di esperti che si sono riunite il 21 e il 27 marzo scorsi per selezionare le tre opere finaliste. Le due giurie, composte dai professori Andrea del Guercio, Elisabetta Longari, Anna Mariani, e da esponenti del gruppo Barclays, hanno scelto le tre opere finaliste secondo il merito artistico dei partecipanti e il rispetto della tematica del concorso.
	                        Adesso tocca a te esprimere la tua preferenza.
	                        L’autore dell’opera più votata vincerà un viaggio per due persone, destinazione Tate Modern di Londra.
	                        Tu potresti essere estratto e aggiudicarti un viaggio per due persone in una città d’arte italiana.</p>
	                        
	                    </div>
	
	                    <ul class="listLinks">
	                        <li><a href="<%= Url.Content("~/Home/Works") %>" title="Barclays Art Prize: Opere in gara">Opere in gara</a></li>
	                        <li><a href="<%= Url.Content("~/Home/Prize") %>" title="Barclays Art Prize: Premio">Premio</a></li>
	                        <li><a href="http://www.accademiadibrera.milano.it/" title="Barclays Art Prize: Premio" target="_blank">Accademia delle Belle Arti di Brera</a></li>                        
	                    </ul>
                        <!--social links -->
	                    <ul class="social-links">
	                    	<li>
	                    		<div class="fb-like" data-send="false" data-layout="button_count" data-width="120" data-show-faces="false"></div>
	                    	</li>
	                    	<li><a href="https://twitter.com/share" class="twitter-share-button" data-via="agatacruciani" data-lang="it">Tweet</a>
	                    	</li>
	                    </ul>
	                    <!--social links -->
	
	                </div><!--/secondary-->
	
	            </div><!--/inner-->
	
	        </section>
</asp:Content>
<asp:Content ContentPlaceHolderID="Script" ID="socialScript" runat="server">
<script>
    /* facebook button */
    (function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/it_IT/all.js#xfbml=1";
        fjs.parentNode.insertBefore(js, fjs);
    } (document, 'script', 'facebook-jssdk'));
    /* twitter button */
    !function (d, s, id) { var js, fjs = d.getElementsByTagName(s)[0]; if (!d.getElementById(id)) { js = d.createElement(s); js.id = id; js.src = "//platform.twitter.com/widgets.js"; fjs.parentNode.insertBefore(js, fjs); } } (document, "script", "twitter-wjs");
</script>
</asp:Content>


