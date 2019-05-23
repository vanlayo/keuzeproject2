<%-- 
    Document   : startparken
    Created on : 20-mei-2019, 10:35:31
    Author     : lukak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="temp/head.jsp" />
    <body>
        <jsp:include page="temp/nav.jsp" />

        <!-- banner -->
        <section class="banner_inner" id="home">
            <div class="banner_inner_overlay">
            </div>
        </section> 
        
        
                <!-- how to book -->
<section class="book py-5">
	<div class="container py-lg-5 py-sm-3">
		<h2 class="heading text-capitalize text-center"> Welkom op onze pretparken</h2>            
    
                    
                     <form action="MaakServlet" method="POST"> 
                         <div class="form-row mt-5">
                             <div class="col-8 contact-forms">
                                  <label for="attractieNaam" class="sr-only">attractie Naam</label>
                                    <input type="text" class="form-control" id="attractieNaam" name="attractieNaam" placeholder="attractie Naam">
                             </div>
                             <div class="col-4">
                                 <input type="submit" class="btn btn-outline-light mb-2 btn-lg" name="zoekAttractie" value="Zoek de attractie op" />
                             </div>
                         </div>
                     </form>
			
	</div>
</section>
<!-- //how to book -->



        <section class="packages pt-5">
            <div class="container py-lg-4 py-sm-3">

                <div class="row">               

                    <div class="col-lg-12 contact-left-form">
                       


                        <%String foutmelding = (String) request.getAttribute("foutmelding");%>
                        <%if (foutmelding != null) {%>
                        <div class="alert alert-danger">
                            <strong>Alert!</strong> 
                            <ul>
                                <%=foutmelding%>
                            </ul>
                        </div>
                        <%}%>
                        <%String melding = (String) request.getAttribute("melding");%>
                        <%if (melding != null) {%>
                        <div class="alert alert-success">
                            <strong>Alert!</strong> 
                            <ul>
                                <%=melding%>
                            </ul>
                        </div>
                        <%}%>

                        <div class="row">
                            <div class="col">
                                 <h1 class="heading text-center mb-5">VakantiePark</h1>
                            <form action="ParkServlet" >                

                                <div class="form-row">
                                    <div class="col-12">
                                        <label for="naam">Ga op zoek naar u park</label>         
                                    </div>
                                    <div class="col-5 contact-forms">
                                        <label for="attractieNaam" class="sr-only">attractie Naam</label>
                                        <input type="text" class="form-control" id="naam" name="naam" placeholder="Geef de begin letters in">

                                    </div>
                                    <input type="submit" class="btn btn-outline-primary"  value="Zoek naar u specifiek park" name="vakantiePark" />
                                    <a href="ParkServlet?vakantiePark1=1" class="btn btn-outline-primary mx-1">Zoek op park id 1</a>

                                </div>
                            </form>
                                </div>
                            </div>
                           

                        <div class="row mt-5">
                            <div class="col-lg-4 col-md-6 col-sm-6 service-grid-wthree text-center mb-5">
                                <div class="ser-fashion-grid">
                                    <div class="about-icon mb-md-4 mb-3">
                                        <span class="far fa-building fa-3x" aria-hidden="true"></span>
                                    </div>
                                    <div class="ser-sevice-grid mb-3">
                                        <h4 class="pb-3">Overzicht Parken</h4>
                                        <p>Hier kan je alle parken bekijken die beschikbaar zijn. Je kan ook filteren op allerlei criteria die je zelf kan invoeren en zo jouw park kiezen.</p>
                                    </div>
                                    <a href="ParkServlet?alleVakantiePark=1" class="btn btn-outline-primary mx-1">Toon alle Parken</a>

                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-sm-6 service-grid-wthree text-center mb-5">
                                <div class="ser-fashion-grid">
                                    <div class="about-icon mb-md-4 mb-3">
                                        <span class="fas fa-search fa-3x" aria-hidden="true"></span>
                                    </div>
                                    <div class="ser-sevice-grid mb-3">
                                        <h4 class="pb-3">Uitgebreid zoeken</h4>
                                        <p>Hier kan je uitgebreid op parken zoeken. Doormiddel van een aantal criteria die je zelf kan invoeren. En zo dan het park vinden wat jij zoekt.</p>
                                    </div>
                                    <a href="ZoekParkServlet?uitgebreid=1" class="btn btn-outline-primary mx-1">uitgebreid zoeken</a>      

                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-sm-6 service-grid-wthree text-center mb-5">
                                <div class="ser-fashion-grid">
                                    <div class="about-icon mb-md-4 mb-3">
                                        <span class="fas fa-user-shield fa-3x" aria-hidden="true"></span>
                                    </div>
                                    <div class="ser-sevice-grid mb-3">
                                        <h4 class="pb-3">Admin Pagina</h4>
                                        <p>Hier kan je doorgaan naar de admin pagina. Zo kan je zowel parken als vakantiehuizen aanpassen verwijderen en toevoegen</p>
                                    </div>
                                    <a href="ParkServlet?adminoverzichtparken=1" class="btn btn-outline-primary mx-1">admin overzicht park</a>

                                </div>
                            </div>
                        </form>
                        <div class="row">
                             <div class="col-12 d-flex justify-content-center">
                                
                                <a href="ParkServlet?alleVakantiePark=1" class="btn btn-outline-primary mx-1">Toon alle Parken</a>
                                <a href="ZoekParkServlet?uitgebreid=1" class="btn btn-outline-primary mx-1">uitgebreid zoeken</a>      
                                <a href="ParkServlet?voegparktoepagina=1" class="btn btn-outline-primary mx-1">Voeg nieuw park toe</a>
                                <a href="ParkServlet?adminoverzichtparken=1" class="btn btn-outline-primary mx-1">admin overzicht park</a>
                            </div>                       
                        </div>
                    </div>



                </div>
            </div>
        </section>
        <!-- tour packages -->




        <jsp:include page="temp/footer.jsp" />
    </body>
</html>
