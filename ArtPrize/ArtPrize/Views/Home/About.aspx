﻿<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="meta" ContentPlaceHolderID="meta_og" runat="server">
    <meta name="description" content="Barclays e l’Accademia di Belle Arti di Brera hanno invitato i ragazzi a reinterpretare i valori su cui si fonda il marchio Barclays." />
    <meta property="og:title" content="Barclays Art Prize for young talents" />
    <meta property="og:description" content="Barclays e l’Accademia di Belle Arti di Brera hanno invitato i ragazzi a reinterpretare i valori su cui si fonda il marchio Barclays"/>

    <meta property="og:type" content="website" />
    <meta property="og:url" content="http://www.barclays.it/ArtPrize/About" />
    <meta property="og:image" content="http://www.barclays.it/ArtPrize/img/about/barclays-artprize-about.png" />
    <meta property="og:site_name" content="Barclays Art Prize" />
    <title>Barclays Art Prize About</title>
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
							<a href="<%= Url.Content("~/About") %>" id="about_artprize">About Barclays Art Prize</a>
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
                                <div id="player" class="player is-splash">
                                    <video preload="none">
                                        <source type="video/mp4" src="<%= Url.Content("~/img/about/Video-Barclays-Light.mp4") %>"/>
                                    </video>
                                    <div id="info" class="info">
                                        
                                    </div>
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
	                        <p>Barclays e l’Accademia di Belle Arti di Brera hanno invitato i ragazzi a reinterpretare i valori su cui si fonda il marchio Barclays. Intorno al tema del concorso `Accessible Art' sono state realizzate opere che raccontano l'affermazione della cultura dell’Accessibilità ad ogni sistema, da quello della finanza a quello dell’arte contemporanea. I brand values del gruppo, Rispetto, Integrità, Servizio, Eccellenza e Stewardship, hanno inspirato anche le due commissioni composte dai professori Andrea del Guercio, Elisabetta Longari, Anna Mariani, e da esponenti del gruppo Barclays, che hanno selezionato le tre opere finaliste secondo il merito artistico dei partecipanti e il rispetto della tematica del concorso. Adesso tocca a te esprimere la tua preferenza. L’autore dell’opera più votata vincerà un viaggio per due persone, destinazione Tate Modern di Londra. Tu potresti essere estratto e aggiudicarti un viaggio per due persone in una città d’arte italiana.</p>
	                    </div>
	
	                    <ul class="listLinks">
	                        <li><a href="<%= Url.Content("~/opere-in-gara") %>" title="Barclays Art Prize: Opere in gara">Opere in gara</a></li>
	                        <li><a href="<%= Url.Content("~/Premio") %>" title="Barclays Art Prize: Premio">Premio</a></li>
	                        <li><a href="http://www.accademiadibrera.milano.it/" title="Barclays Art Prize: Premio" target="_blank">Accademia delle Belle Arti di Brera</a></li>                        
	                    </ul>
                        <!--social links -->
	                    <ul class="social-links">
	                    	<li>
	                    		<div class="fb-like" data-send="false" data-layout="button_count" data-width="450" data-show-faces="false"></div>
	                    	</li>
	                    	<li><a href="https://twitter.com/share" class="twitter-share-button" data-lang="it" data-text="Vota anche tu la tua opera preferita su">Tweet</a>
	                    	</li>
	                    </ul>
	                    <!--social links -->
	
	                </div><!--/secondary-->
	
	            </div><!--/inner-->
	
	        </section>
</asp:Content>
<asp:Content ContentPlaceHolderID="Script" ID="socialScript" runat="server">
<div id="fb-root"></div>
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
<script type="text/javascript">
    $(function () {
        $('#about_artprize').addClass("current");
    });
</script>
<script src="http://releases.flowplayer.org/5.3.2/flowplayer.min.js"></script>
<link rel="stylesheet" type="text/css"
href="http://releases.flowplayer.org/5.3.2/skin/minimalist.css" />
<!-- Aggiungere script player video -->
<script type="text/javascript">
    $(function () {
        $('#player').flowplayer({
            'splash': true,
            onFail: function () {
                document.getElementById("info").innerHTML =
              "Visualizza il video installando l'ultima versione di Flash Player";
            }
        });
    });
</script>
</asp:Content>


