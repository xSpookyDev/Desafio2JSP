<%@page import="cl.praxis.model.Habitacion"%>
<%@page import="cl.praxis.model.HabitacionBusiness"%>
<%@page import="cl.praxis.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String nombreComprador = request.getParameter("nombre");
    String apellidoComprador = request.getParameter("apellido");
    String emailComprador = request.getParameter("email");
    
    String medioPago = request.getParameter("medioPago");
    
    int dias = 1;
    String diasStr = request.getParameter("dias");
    if (diasStr != null && !diasStr.isEmpty()) {
        dias = Integer.parseInt(diasStr);
    }
    
    String fechaEntrada = request.getParameter("fechaEntrada");

    // Librerias requeridas
    HabitacionBusiness eventob = new HabitacionBusiness();

    // inicializa Objeto Habitacion
    int idEvento = Integer.parseInt(request.getParameter("idevento"));
    Habitacion cuarto = eventob.getHabitacionById(idEvento);

    // Obtiene el valor a pagar
    int valorPagar = eventob.calculaValorCompra(cuarto.getPrecio(), dias); 
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
                    <h1>Detalle Solicitud Venta Ticket: <strong><%=cuarto.getNombre()%></strong></h1>
                    <hr />
                </div>
            </div>
            <div class="container px-4 px-lg-5 mt-5">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Item</th>
                            <th scope="col">Valor</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Nombre</td>
                            <td><%=nombreComprador%></td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Apellido</td>
                            <td><%=apellidoComprador%></td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>Email</td>
                            <td><%=emailComprador%></td>
                        </tr>
                        <tr>
                            <th scope="row">4</th>
                            <td>Medio de Pago</td>
                            <td><%=medioPago%></td>
                        </tr>
                        <tr>
                            <th scope="row">5</th>
                            <td>Días</td>
                            <td><%=dias%> Días</td>
                        </tr>
                        <tr>
                            <th scope="row">6</th>
                            <td>Fecha de Entrada</td>
                            <td><%=fechaEntrada%></td>
                        </tr>
                        <tr>
                            <th scope="row">7</th>
                            <td>Valor a Pagar</td>
                            <td><strong>CL$ <%=valorPagar%></strong></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </section>
        <br /> <br />
    </form>
    <%@include file="assets/html/footer.jsp"%>
</body>
</html>

