﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>



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
					<a href="<%= Url.Content("~/Home/Works") %>" id="link_vota_artprize">Vota</a>
					</span>
				</li>
			</ol>
		</div>
		<!--/secondaryNavigationContainer -->
	</div>
	<!-- /Breadcrumb nav -->

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

     <section id="vote-art-02" class="lens">
	    <div class="inner">
	        <div class="widthSix primary">
	            
	            <!-- imageWithCaption -->
				<div class="imageWithCaption">
					<img alt="Art Prize Barclay" src="http://placehold.it/460x546&amp;text=opera02" />
				</div><!--/imageWithCaption-->

	                    
	            <ul class="listLinks">
	                <li><a href="<%= Url.Content("~/Home/Prize") %>" title="Barclays Art Prize: Premio">Premio</a></li>
	                <li><a href="<%= Url.Content("~/Home/Rule") %>" title="Barclays Art Prize: Regolamento">Regolamento</a></li>
	                <li><a href="<%= Url.Content("~/Home/Works") %>" title="Barclays Art Prize: Opere in gara">Torna alle altre opere</a></li>                    
	            </ul>
	
	        </div>
	
	        <div class="widthSix secondary">
	            <h2>Per votare l’opera, partecipare al concorso
	                    e vincere un week end d’atrte devi essere
	                    Registrato.</h2>
	            <div class="rte">
					<% Html.RenderAction("Add"); %>
	            </div>
	        </div><!--/secondary-->
	
	    </div><!--/inner-->
	
	</section>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">

</asp:Content>
