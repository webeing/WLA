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

                <h2>Premio</h2>

                <div class="rte">
                    <p>
                        Barclays investe nel talento dei giovani artisti emergenti. La prima edizione del concorso Barclays Art Prize For Young Talents si rivolge agli studenti e agli ex studenti dell'Accademia di Belle Arti di Brera. Scopri come vincere un weekend in una citt&#224; d'arte italiana.
                        Barclays investe nel talento dei giovani artisti emergenti. La prima edizione del concorso Barclays Art Prize For Young Talents si rivolge agli studenti e agli ex studenti dell'Accademia di Belle Arti di Brera. Scopri come vincere un weekend in una citt&#224; d'arte italiana.
                        Barclays investe nel talento dei giovani artisti emergenti. La prima edizione del concorso Barclays Art Prize For Young Talents si rivolge agli studenti e agli ex studenti dell'Accademia di Belle Arti di Brera. Scopri come vincere un weekend in una citt&#224; d'arte italiana.
                        Barclays investe nel talento dei giovani artisti emergenti. La prima edizione del concorso Barclays Art Prize For Young Talents si rivolge agli studenti e agli ex studenti dell'Accademia di Belle Arti di Brera. Scopri come vincere un weekend in una citt&#224; d'arte italiana.
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
