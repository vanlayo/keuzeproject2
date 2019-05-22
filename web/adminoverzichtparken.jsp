<%-- 
    Document   : deletepark
    Created on : May 22, 2019, 10:06:58 AM
    Author     : yourivanlaer
--%>

<%@page import="fact.it.www.beans.Park"%>
<%@page import="fact.it.www.beans.Regio"%>
<%@page import="java.util.ArrayList"%>
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
                        <h1 class="heading text-center mb-5">Lijst van pagina overzichten</h1>

                        <%ArrayList<Park> parken = (ArrayList<Park>) request.getAttribute("parken");%>

                        <% if (parken != null) { %>

                            <table class="table">
                                <thead>
                                  <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">First</th>
                                    <th scope="col">Last</th>
                                    <th scope="col">Handle</th>
                                  </tr>
                                </thead>
                                <tbody>
                                    <% for (Park park : parken) { %>
                            
                            <tr>
                                    <th scope="row">1</th>
                                    <td>Mark</td>
                                    <td>Otto</td>
                                    <td>@mdo</td>
                                  </tr>

                            <%}%>
                                  
                                  
                                </tbody>
                              </table>

                            
                            
                            <%} else {%>
                            <p>Er is geen park gevonden</p>        
                            <%}%>





                    </div>
                </div>
        </section>
        <!-- tour packages -->



        <jsp:include page="temp/footer.jsp" />
    </body>
</html>