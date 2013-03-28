<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<int>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <% ViewData["ArtworkId"] = Model; %>

    <section id="vote-art-<%= Model %>" class="lens">
	    <div class="inner">
	        <div class="widthSix primary">
	            
	            <!-- imageWithCaption -->
				<div class="imageWithCaption">
					<img alt="Art Prize Barclay" src="http://placehold.it/460x546&amp;text=opera0<%= Model %>" />
				</div><!--/imageWithCaption-->

	                    
	            <ul class="listLinks">
	                <li><a href="<%= Url.Content("~/Premi") %>" title="Barclays Art Prize: Premio">Premio</a></li>
	                <li><a href="<%= Url.Content("~/Regolamento") %>" title="Barclays Art Prize: Regolamento">Regolamento</a></li>
	                <li><a href="<%= Url.Content("~/opere-in-gara") %>" title="Barclays Art Prize: Opere in gara">Torna alle altre opere</a></li>                    
	            </ul>
	
	        </div>
	
	        <div class="widthSix secondary">
	            <h2>Vota la tua opera preferita, partecipa al concorso e vinci un week end d’arte. Registrati subito.</h2>
	            <div class="rte">
					<% Html.RenderPartial("Add", new ArtPrize.Models.Vote() { ArtworkId = Model }); %>
	            </div>
	        </div><!--/secondary-->
	
	    </div><!--/inner-->
	
	</section>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="meta_og" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="header" runat="server">

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
							<a href="<%= Url.Content("~/opere-in-gara") %>" id="link_vota_artprize">Vota</a>
							</span>
						</li>
					</ol>
				</div>
				<!--/secondaryNavigationContainer -->
			</div>
			<!-- /Breadcrumb nav -->

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="footer" runat="server">
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="Script" runat="server">
<script type="text/javascript">
    $(document).ready(function () {
        $('#vota_artprize').addClass("current");
    });
</script>
</asp:Content>
