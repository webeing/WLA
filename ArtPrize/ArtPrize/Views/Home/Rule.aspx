<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="ContentHeader" ContentPlaceHolderID="header" runat="server">
    <!-- Breadcrumb nav -->
			<div class="" id="secondaryNavigation">
				<div class="secondaryNavigationContainer">
					<ol>
						<li class="preSelected">
							<span id="home">
							<a title="Home" href="http://www.barclays.it/artprize/" title="">Home</a>
							</span>
						</li>
						<li class="selected">
							<span>
							<a href="http://www.barclays.it/artprize/about.html" title="" id="about_artprize">Regolamento</a>
							</span>
						</li>
					</ol>
				</div>
				<!--/secondaryNavigationContainer -->
			</div>
			<!-- /Breadcrumb nav -->
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div id="inner">
                <div class="inner">
                    <div class="widthNine">
                        <div class="inner" id="contentHeader">
                            <div class="widthOne">
                                <h1>Regolamento</h1>
                            </div>
                        </div>

                        <div class="rte"><p>Barclays is committed to safeguarding the privacy of your information. By “your information” we mean any information about you, which you or third parties provide to us.</p>
                            <p>The Barclays Privacy Principles, set out below, explain how your information will be treated by Barclays.</p>
                            <p>Barclays Privacy Principles</p>

                            <ul>
                                <li>We will only collect &amp; use your information where we have lawful grounds and legitimate business reasons to do so.</li>
                                <li>We will be transparent in our dealings with you, and will tell you about how we will collect and use your information.</li>
                                <li>If we have collected your information for a particular purpose we will not use it for anything else unless you have been informed and where relevant your permission obtained.</li>
                                <li>We will not ask for more information than we need for the purposes for which we are collecting it.</li>
                                <li>We will update our records when you inform us that your details have changed.</li>
                                <li>We will continue to review and assess the quality of our information</li>
                                <li>We will implement and adhere to information retention policies relating to your information and will ensure that your information is securely disposed of at the end of the appropriate retention period.</li>
                                <li>We will observe the rights granted to you under applicable privacy and data protection laws and will ensure that queries relating to privacy issues are promptly and transparently dealt with.</li>
                                <li>We will train our staff on their privacy obligations.</li>
                                <li>We will ensure we have appropriate physical and technological security measures to protect your information regardless of where it is held.</li>
                                <li>We will ensure that when we outsource any processes, the supplier has appropriate security measures in place and will contractually require them to comply with these Privacy Principles.</li>
                                <li>We will ensure that suitable safeguards are in place before personal information is transferred to other countries.You are not required to provide any personal information on the public areas of this website. However, you may choose to do so by completing the forms on various pages of the site. We will only use the information you provide to us on these pages in order to process the relevant form. Please see the privacy wording on the relevant form for a more detailed explanation of how your information will be used.</li>
                            </ul>
                            <p>If you are a Barclays customer or already have a relationship with us you will have been advised by various methods as to how we collect and use your information.</p>
                            <p>For information about “cookies” and how they are used on Barclays websites, please read our <a href="http://group.barclays.com/cookie-policy">Cookie Policy</a>.</p>
                            <p>If you have any questions about Privacy at Barclays please contact the Barclays Privacy &amp; Data Protection Team at:</p>
                            <p>Barclays Head Office<br>
                                1 Churchill Place<br>
                                London<br>
                                E14 5HP</p>
                        </div>

                    </div>

                    <div class="widthThree" id="panel">
                        <div class="panelSectionLinks">
                            <h3>In questa sezione:</h3>
                            <ul class="twoLevels">
                                <li>
                                    <h3><a href="#" title="Barclays Art Prize: Privacy">Privacy</a></h3>

                                </li>

                                <li>
                                    <h3><a href="#" title="Barclays Art Prize: Premi">Premi</a></h3>

                                </li>
                            </ul>
                        </div>
                    </div>
                    
                </div>
            </div>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
