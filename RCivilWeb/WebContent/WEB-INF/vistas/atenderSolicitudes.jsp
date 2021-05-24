<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
	<jsp:include page="../templates/header.jsp"></jsp:include>
	<main class="container mt-6">
	     <div class="columns is-centered">
	         <div class="column is-8">
	             <table class="table is-hovered is-bordered is-fullwidth">
	                   <thead class="has-background-light">
	                        <tr>
	                            <th>Numero de atencion</th>
	                            <th>Nombre del cliente</th>
	                            <th>Tipo de Solicitud</th>
	                            <th>Atender Solicitud</th>
	                        </tr>
	                   </thead>
	                   <tbody>
	                       <c:forEach var="solicitud" items="${solicitudes}">
	                             <tr>
	                                <td></td>
	                                <td>${solicitud.nombre}</td>
	                                <td>${solicitud.tsolicitud}</td>
	                                <td>
	                                   <a href="AtenderSolicitudesController.do?nombreEliminar=${solicitud.nombre}"
	                                   class ="has-text-danger">Atender</a>
	                                </td>
	                             </tr>
	                       </c:forEach>
	                   </tbody>
	             </table>
	         </div>
	     </div>
	</main>
	</body>
	</html>