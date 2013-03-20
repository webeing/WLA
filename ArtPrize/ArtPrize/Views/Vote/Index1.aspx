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
							<a href="http://www.barclays.it/artprize/vota.html" id="about_artprize">Vota</a>
							</span>
						</li>
					</ol>
				</div>
				<!--/secondaryNavigationContainer -->
			</div>
			<!-- /Breadcrumb nav -->

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

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
	                        
	                        <!-- imageWithCaption -->
							<div class="imageWithCaption">
								<img data="" alt="Art Prize Barclay" src="../img/fire.jpg" />
							</div><!--/imageWithCaption-->
	                        <!--/Video About -->
	
	                        <span class="curtain right">
							<span class="edge">
								<span class="top"></span>
								<span class="bottom"></span>
							</span>
						</span>
	                    </div>
	                    
	                    <ul class="listLinks">
	                        <li><a href="<%= Url.Content("~/Home/Prize") %>" title="Barclays Art Prize: Premio">Premio</a></li>
	                        <li><a href="<%= Url.Content("~/Home/Rule") %>" title="Barclays Art Prize: Regolamento">Regolamento</a></li>
	                        <li><a href="<%= Url.Content("~/Home/Works") %>" title="Barclays Art Prize: Opera in gara">Torna alle altre opere</a></li>                   
	                    </ul>
	
	                </div>
	
	                <div class="widthSix">
	                    <h2>Per votare<br/>devi essere registrato</h2>
	                    <div class="rte">
							<% Html.RenderAction("Add"); %>
	                    </div>
	                </div>
	
	            </div>
	
	        </section>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
    <ul id="lensNavigator">
        <li id="previous"><a href="#" class="prev" title="">Previous</a></li>
        <li id="next"><a href="#" class="next" title="">Next</a></li>
    </ul>
</asp:Content>
