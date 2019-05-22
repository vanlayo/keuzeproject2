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
        <section class="packages pt-5">
            <div class="container py-lg-4 py-sm-3">

                <div class="row">               

                    <div class="col-lg-12 contact-left-form">
                        <h1 class="heading text-center mb-5">VakantiePark</h1>
                        
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
                           

                        <form action="ParkServlet" >                

                            <div class="form-row mt-5">
                                <div class="col-12">
                                    <label for="naam">Geef begin letters in: </label>         
                                </div>
                                <div class="col-5 contact-forms">
                                    <label for="attractieNaam" class="sr-only">attractie Naam</label>
                                    <input type="text" class="form-control" id="naam" name="naam" placeholder="Geef de begin letters in">

                                </div>
                                <input type="submit" class="btn btn-outline-primary"  value="Toon Specifiek Park op begin letters" name="vakantiePark" />

                            </div>
                        </form>
                        <br>
                        <div class="row">
                             <div class="col-12 d-flex justify-content-center">
                                <a href="ParkServlet?vakantiePark1=1" class="btn btn-outline-primary mx-1">Toon Specifiek Park id 1</a>
                                <a href="ParkServlet?alleVakantiePark=1" class="btn btn-outline-primary mx-1">Toon alle Parken</a>
                                <a href="ZoekParkServlet?uitgebreid=1" class="btn btn-outline-primary mx-1">uitgebreid zoeken</a>                         
                                <a href="ZoekParkServlet?filter=1" class="btn btn-outline-primary mx-1">filter</a>
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
