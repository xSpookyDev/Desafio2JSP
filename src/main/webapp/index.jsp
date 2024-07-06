<%@page import="cl.praxis.model.Habitacion"%>
<%@page import="cl.praxis.model.HabitacionBusiness"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cl.praxis.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
 
    HabitacionBusiness eventob = new HabitacionBusiness();
  
    List<Habitacion> listaEventos = eventob.getHabitaciones();
%>
<!DOCTYPE html>
<html lang="es">
<%@include file="assets/html/head.jsp"%>
<body>
    <%@include file="assets/html/header.jsp"%>
    <form method="post" action="procesa.jsp">
        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row justify-content-center">
                    <h1>Eventos Disponibles (<%=listaEventos.size()%>)</h1>
                    <hr />
                </div>
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <% for (int x = 0; x < listaEventos.size(); x++) { %>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <img class="card-img-top" src="<%=listaEventos.get(x).getImagen()%>"
                                alt="<%=listaEventos.get(x).getNombre()%>" />
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <h5 class="fwbolder"><%=listaEventos.get(x).getNombre()%></h5>
                                    <p><%=listaEventos.get(x).getDescripcion()%></p>
                                    CL$ <%=listaEventos.get(x).getPrecio()%>
                                </div>
                            </div>
                            <input type="radio" id="evento_<%=x%>" name="idevento"
                                value="<%=listaEventos.get(x).getId()%>" checked>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center">
                                  
                                </div>
                            </div>
                        </div>
                    </div>
                    <% } %>
                </div>
            </div>
        </section>
        <!-- Formulario -->
        <section>
            <div class="container px-4 px-lg-5 mt-5">
                <h1>Información de arriendo</h1>
                <hr />
                <div class="row g-3">
                    <div class="col-md-6">
                        <label for="inputNombre" class="form-label">Nombre</label>
                        <input type="text" class="form-control" id="nombre" name="nombre" value="Arturo Erasmo">
                    </div>
                    <div class="col-md-6">
                        <label for="inputApellido" class="form-label">Apellido</label>
                        <input type="text" class="form-control" id="apellido" name="apellido" value="Vidal Pardo">
                    </div>
                    <div class="col-md-6">
                        <label for="inputEmail" class="form-label">Email</label>
                        <input type="email" class="form-control" id="email" name="email" placeholder="ejemplo@correo.com">
                    </div>
                    <div class="col-md-6">
                        <label for="inputMedioPago" class="form-label">Medio de Pago</label>
                        <select id="medioPago" name="medioPago" class="form-select">
                            <option value="efectivo">Efectivo</option>
                            <option value="tarjeta">Tarjeta de Crédito</option>
                        </select>
                    </div>
                    <div class="col-md-6">
                        <label for="inputDias" class="form-label">Días</label>
                        <input type="number" class="form-control" id="dias" name="dias" value="1" min="1">
                    </div>
                    <div class="col-md-6">
                        <label for="inputFechaEntrada" class="form-label">Fecha de Entrada</label>
                        <input type="date" class="form-control" id="fechaEntrada" name="fechaEntrada">
                    </div>
                    <div class="col-12">
                        <hr />
                        <button type="submit" class="btn btn-primary">Enviar Solicitud de Compra</button>
                    </div>
                </div>
            </div>
        </section>
        <br /> <br />
    </form>
    <%@include file="assets/html/footer.jsp"%>
</body>
</html>
