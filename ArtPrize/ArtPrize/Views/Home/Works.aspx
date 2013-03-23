<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
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
							<a href="<%= Url.Content("~/Home/Works") %>" id="link_vota_artprize">Vota</a>
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
    <section id="opera-one" class="lens"><!-- PRIMA SLIDER --->
            <div class="inner">
                <div class="widthSix primary">
                    <h2>Titolo opera 01<br/>
                       Nome autore</h2>
                    <div class="rte">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget justo magna, vel tempor risus. Aenean velit tortor, hendrerit ut lobortis non, scelerisque sit amet erat. Suspendisse non neque a libero dictum posuere. Aliquam pretium diam et elit aliquet dignissim vel commodo leo. Fusce tempus semper ultrices. Ut pellentesque malesuada viverra. Maecenas velit erat, blandit eu venenatis eu, porta nec metus. Quisque imperdiet tincidunt orci, nec ullamcorper metus ornare nec. Ut quis quam sit amet nisl congue hendrerit. Vivamus ligula libero, blandit eget pulvinar quis, lacinia eget enim. Aliquam lacinia, nulla sed auctor aliquet, tortor massa eleifend ipsum, quis facilisis mauris massa et ligula.</p>
						<p>Sed sed dui ut velit facilisis malesuada a sit amet velit. Nam ipsum augue, tristique vel lacinia vitae, gravida id leo. Vivamus accumsan lobortis euismod. Aenean eget pellentesque augue. Pellentesque in lacus risus.
                        </p>
                    </div>
                    <span><%= ((System.Collections.Generic.Dictionary<int,int>)ViewData["votes"])[1] %></span>
                </div><!--/primary-->

                <div class="widthSix secondary">
                    <div class="imageWithCaption">
                        <img src="http://placehold.it/460x546&text=opera01" alt="Titolo opera 1" />
                    </div>
                    
                    <!--buttons-->
                    <div class="dialogButtons">
                        <!--social links -->
	                    <ul class="social-links">
                            <!-- link button da modificare -->
	                        <li>
	                    	    <div class="fb-like" data-send="false" data-layout="button_count" data-width="120" data-show-faces="false"></div>
	                        </li>
	                        <li><a href="https://twitter.com/share" class="twitter-share-button" data-via="agatacruciani" data-lang="it">Tweet</a>
	                        </li>
	                    </ul>
	                    <!--social links -->

						<a href="#zoom-op01" id="zoom-op01" class="btn zoom-btn" title="Ingrandisci Opera 1">Ingrandisci</a>
						<a href="<%= Url.Content("~/Vote/Works/1") %>" id="vote-op01" class="btn vote-btn btn-cyan75">Vota questa opera</a>
					</div><!--/dialogButton-->
                    
            	</div><!--/secondary-->
            </div><!--/inner-->
            	
            </section><!-- OPERA 01 --->

            <!-- OPERA 02 -->
            <section id="opera-two" class="lens"><!-- PRIMA SLIDER --->
            <div class="inner">
                <div class="widthSix primary">
                    <h2>Titolo opera 02<br/>
                       Nome autore</h2>
                    <div class="rte">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget justo magna, vel tempor risus. Aenean velit tortor, hendrerit ut lobortis non, scelerisque sit amet erat. Suspendisse non neque a libero dictum posuere. Aliquam pretium diam et elit aliquet dignissim vel commodo leo. Fusce tempus semper ultrices. Ut pellentesque malesuada viverra. Maecenas velit erat, blandit eu venenatis eu, porta nec metus. Quisque imperdiet tincidunt orci, nec ullamcorper metus ornare nec. Ut quis quam sit amet nisl congue hendrerit. Vivamus ligula libero, blandit eget pulvinar quis, lacinia eget enim. Aliquam lacinia, nulla sed auctor aliquet, tortor massa eleifend ipsum, quis facilisis mauris massa et ligula.</p>
						<p>Sed sed dui ut velit facilisis malesuada a sit amet velit. Nam ipsum augue, tristique vel lacinia vitae, gravida id leo. Vivamus accumsan lobortis euismod. Aenean eget pellentesque augue. Pellentesque in lacus risus.
                        </p>
                    </div>
                    <span><%= ((System.Collections.Generic.Dictionary<int,int>)ViewData["votes"])[2] %></span>
                </div><!--/primary-->

                <div class="widthSix secondary">
                    <div class="imageWithCaption">
                        <img src="http://placehold.it/460x546&text=opera02" alt="Titolo opera 2" />
                    </div>
                    
                    <!--buttons-->
                    <div class="dialogButtons">
                        <!--social links -->
	                    <ul class="social-links">
                            <!-- link button da modificare -->
	                        <li>
	                    	    <div class="fb-like" data-send="false" data-layout="button_count" data-width="120" data-show-faces="false"></div>
	                        </li>
	                        <li><a href="https://twitter.com/share" class="twitter-share-button" data-via="agatacruciani" data-lang="it">Tweet</a>
	                        </li>
	                    </ul>
	                    <!--social links -->

						<a href="#zoom-op02" id="zoom-op02" class="btn zoom-btn" title="Ingrandisci Opera 2">Ingrandisci</a>
						<a href="<%= Url.Content("~/Vote/Works/2") %>" id="vote-op02" class="btn vote-btn btn-cyan75">Vota questa opera</a>
					</div><!--/dialogButton-->
                    
            	</div><!--/secondary-->
            </div><!--/inner-->
            	
        </section><!-- OPERA 02 --->

        <!-- OPERA 03 -->
        <section id="opera-three" class="lens"><!-- PRIMA SLIDER --->
            <div class="inner">
                <div class="widthSix primary">
                    <h2>Titolo opera 03<br/>
                       Nome autore</h2>
                    <div class="rte">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget justo magna, vel tempor risus. Aenean velit tortor, hendrerit ut lobortis non, scelerisque sit amet erat. Suspendisse non neque a libero dictum posuere. Aliquam pretium diam et elit aliquet dignissim vel commodo leo. Fusce tempus semper ultrices. Ut pellentesque malesuada viverra. Maecenas velit erat, blandit eu venenatis eu, porta nec metus. Quisque imperdiet tincidunt orci, nec ullamcorper metus ornare nec. Ut quis quam sit amet nisl congue hendrerit. Vivamus ligula libero, blandit eget pulvinar quis, lacinia eget enim. Aliquam lacinia, nulla sed auctor aliquet, tortor massa eleifend ipsum, quis facilisis mauris massa et ligula.</p>
						<p>Sed sed dui ut velit facilisis malesuada a sit amet velit. Nam ipsum augue, tristique vel lacinia vitae, gravida id leo. Vivamus accumsan lobortis euismod. Aenean eget pellentesque augue. Pellentesque in lacus risus.
                        </p>
                    </div>
                    <span><%= ((System.Collections.Generic.Dictionary<int,int>)ViewData["votes"])[3] %></span>
                </div><!--/primary-->

                <div class="widthSix secondary">
                    <div class="imageWithCaption">
                        <img src="http://placehold.it/460x546&text=opera03" alt="Titolo opera 3" />
                    </div>
                    
                    <!--buttons-->
                    <div class="dialogButtons">
                        <!--social links -->
	                    <ul class="social-links">
                            <!-- link button da modificare -->
	                        <li>
	                    	    <div class="fb-like" data-send="false" data-layout="button_count" data-width="120" data-show-faces="false"></div>
	                        </li>
	                        <li><a href="https://twitter.com/share" class="twitter-share-button" data-via="agatacruciani" data-lang="it">Tweet</a>
	                        </li>
	                    </ul>
	                    <!--social links -->

						<a href="#zoom-op03" id="zoom-op03" class="btn zoom-btn" title="Ingrandisci Opera 3">Ingrandisci</a>
						<a href="<%= Url.Content("~/Vote/Works/3") %>" id="vote-op03" class="btn vote-btn btn-cyan75">Vota questa opera</a>
					</div><!--/dialogButton-->
                    
            	</div><!--/secondary-->
            </div><!--/inner-->
            	
        </section><!-- OPERA 03 --->

        <!-- BIG IMG MODAL OPENING -->   
        <div id="opera-modal1" class="modal">
            <div class="dialog-wrap">
            	<a id="close-op01" class="close" href="#close" title="chiudi"><img src="../img/icon-close.gif" alt="chiudi"/></a>
              	<img src="http://placehold.it/1024x1200&text=opera01%20big" alt="Opera 01 artista bla bla bla"/>
            </div>
        </div>
            
        <div id="opera-modal2" class="modal">
            <div class="dialog-wrap">
            	<a id="close-op02" class="close" href="#close" title="chiudi"><img src="../img/icon-close.gif" alt="chiudi"/></a>
              	<img src="http://placehold.it/1024x1200&text=opera02%20big" alt="Opera 01 artista bla bla bla"/>
            </div>
        </div>
            
        <div id="opera-modal3" class="modal">
            <div class="dialog-wrap">
            	<a id="close-op03" class="close" href="#close" title="chiudi"><img src="../img/icon-close.gif" alt="chiudi"/></a>
              	<img src="http://placehold.it/1024x1200&text=opera03%20big" alt="Opera 01 artista bla bla bla"/>
            </div>
        </div>
        <!-- /BIG IMG MODAL OPENING -->
    </div><!--/cycle-slideshow-->

</asp:Content>



<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
    <ul id="lensNavigator">
        <li id="previous"><a href="#" class="prev" title="">Previous</a></li>
        <li id="next"><a href="#" class="next" title="">Next</a></li>
    </ul>
</asp:Content>

<asp:Content ID="socialScript" ContentPlaceHolderID="Script" runat="server">
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
</asp:Content>
