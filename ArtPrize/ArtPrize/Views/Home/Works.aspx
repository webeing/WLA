<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
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
				
				<ol id="lensIndicator">
					<li class="selected"><span>Lens view: </span><em>0</em></li>
					<li class=""><span>Lens view: </span><em>1</em></li>
					<li class=""><span>Lens view: </span><em>2</em></li>
				</ol>
			</div>
			<!-- /Breadcrumb nav -->
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <section id="opera-one" class="lens lensTypeNews vote-art"><!-- PRIMA SLIDER --->
            <div class="inner">
                <div class="widthSix primary">
                    <h2>Titolo opera 01<br/>
                       Nome autore</h2>
                    <div class="rte">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget justo magna, vel tempor risus. Aenean velit tortor, hendrerit ut lobortis non, scelerisque sit amet erat. Suspendisse non neque a libero dictum posuere. Aliquam pretium diam et elit aliquet dignissim vel commodo leo. Fusce tempus semper ultrices. Ut pellentesque malesuada viverra. Maecenas velit erat, blandit eu venenatis eu, porta nec metus. Quisque imperdiet tincidunt orci, nec ullamcorper metus ornare nec. Ut quis quam sit amet nisl congue hendrerit. Vivamus ligula libero, blandit eget pulvinar quis, lacinia eget enim. Aliquam lacinia, nulla sed auctor aliquet, tortor massa eleifend ipsum, quis facilisis mauris massa et ligula.</p>
						<p>Sed sed dui ut velit facilisis malesuada a sit amet velit. Nam ipsum augue, tristique vel lacinia vitae, gravida id leo. Vivamus accumsan lobortis euismod. Aenean eget pellentesque augue. Pellentesque in lacus risus.
                        </p>
                    </div>

                    <ul class="listLinks">
                        <li><a href="premi.html" title="Barclays Art Prize: Premi">Premi</a></li>
                        <li><a href="regolamento.html" title="Barclays Art Prize: Regolamento">Regolamento</a></li>
                    </ul>
                </div><!--/primary-->

                <div class="widthSix secondary">
                  <div class="imageWithCaption">
                        <img src="../img/artprize-opera01_min.jpg" alt="Barclays Group Chief Executive, Antony Jenkins" data="/Satellite?blobcol=urldata&amp;blobkey=id&amp;blobtable=MungoBlobs&amp;blobwhere=1330696348854&amp;ssbinary=true">

                        <p>Barclays Group Chief Executive, Antony Jenkins</p>
                    </div>
                    
                    <!--buttons-->
                    <div class="dialogButtons">
						<button id="" class="zoom-btn">Ingrandisci</button>
						<button id="" class="download-btn">Download</button>
						<button id="vote-op01" class="vote-btn">Vota questa opera</button>
					</div>
                    
            	</div><!--/secondary-->
            </div><!--/inner-->
            	
            </section><!-- OPERA 01 --->

</asp:Content>



<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
    <ul id="lensNavigator">
        <li id="previous"><a href="#" class="prev" title="">Previous</a></li>
        <li id="next"><a href="#" class="next" title="">Next</a></li>
    </ul>
</asp:Content>
