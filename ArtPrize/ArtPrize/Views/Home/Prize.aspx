<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="ContentHeader" ContentPlaceHolderID="header" runat="server">
    <!-- Breadcrumb nav -->
			<div class="" id="secondaryNavigation">
				<div class="secondaryNavigationContainer">
					<ol>
						<li class="preSelected">
							<span id="home">
							<a title="Home" href="<%= Url.Content("~/Index") %>" title="">Home</a>
							</span>
						</li>
						<li class="selected">
							<span>
							<a href="<%= Url.Content("~/Premi") %>" title="" id="link_prize">Premio</a>
							</span>
						</li>
					</ol>
				</div>
				<!--/secondaryNavigationContainer -->
			</div>
			<!-- /Breadcrumb nav -->
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <section id="premio" class="lens"><!-- PRIMA SLIDER --->
        <div class="inner">
            <div class="widthSix primary">

                <h2>Vota e parti con Barclays</h2>

                <div class="rte">
                    <p>
                      Vota la tua opera preferita e potrai essere estratto per vincere un viaggio per due persone
                      in una città d’arte italiana<span class="cyan75">*</span>.
                      Per te due notti in albergo in camera doppia, un’auto a disposizione all’aeroporto di arrivo per 3
                      giorni e il viaggio aereo verso la destinazione preferita con partenza venerdì e ritorno di domenica.
                      E l’artista che vince riceverà in premio un viaggio per due persone con soggiorno a Londra e
                      ingresso ad una mostra della Tate Modern.<span class="cyan75">**</span>
                      Un’esperienza dove piacere e cultura si intrecciano per lasciare a te e al tuo artista preferito un
                      ricordo indimenticabile.</p>
                      <p>
                      <span class="cyan75">*</span> Il premio non è sostituibile, né modificabile, né convertibile in denaro. Offerta soggetta a condizioni e secondo disponibilità.<br/>

                      <span class="cyan75">**</span> per le condizioni consulta il regolamento del concorso.
                      </p>
                </div>

                <ul class="listLinks">
                    <li><a href="<%= Url.Content("~/opere-in-gara") %>" title="Barclays Art Prize: Opere in gara">Vota le opere in gara</a></li>
                </ul>

            </div>

            <div class="widthSix secondary">
                <div class="aperture">
					<span class="curtain left">
						<span class="edge">
							<span class="top"></span>
							<span class="bottom"></span>
						</span>
					</span>
						
					<div class="imageWithCaption">
						<img src="../img/premio.jpg" alt="Barclays Art Prize premio"/>
					</div>
						
					<span class="curtain right">
						<span class="edge">
							<span class="top"></span>
							<span class="bottom"></span>
						</span>
					</span>
				</div><!--/aperture-->
            </div><!--/secondary-->

        </div><!--/inner-->
    </section>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
