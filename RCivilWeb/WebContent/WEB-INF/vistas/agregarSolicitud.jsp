<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
	<jsp:include page="../templates/header.jsp"></jsp:include>
	<main class="container mt-6">
	    <c:if test="${mensaje !=null }">
	       <div class="columns is-centered mb-5">
	           <div class="column is-5">
	               <div class="notification is-light">
	                   <p>${mensaje}</p>
	               </div>
	           </div>
	       </div>
	    </c:if>
	    <c:if test="${errores !=null }">
	          <div class="columns is-centered mb-5">
	              <div class="column is-5">
	                  <div class="notification is-light">
	                      <h6>Complete todos los campos</h6>
	                      <ul>
	                         <c:forEach var="error" items="${errores }">
	                                <li>${error }</li>
	                         </c:forEach>
	                      </ul>
	                  </div>
	              </div>
	          </div>
	    </c:if>
	    <div class="columns is-centered">
	        <div class="column is-6">
	           <form method="POST" action="AgregarSolicitudController.do">
	              <div class="card">
	                  <div class=" card-header has-background-light">
	                    <span class="card-header-title">Agregar Solicitud</span>
	                  </div>
	                  <div class="card-content">
	                      <div class="field">
	                         <label class="label" for="rut-txt">Rut</label>
	                         <div class="control">
	                             <input type="text" class="input" id="rut-txt" name="rut-txt">
	                         </div>
	                      </div>
	                      <div class="field">
	                         <label class="label" for="nombre-txt">Nombre</label>
	                         <div class="control">
	                             <input type="text" class="input" id="nombre-txt" name="nombre-txt">
	                         </div>
	                      </div>
	                      <div class="field">
	                          <label class="label" for="tipo-select">Tipo de Solicitud</label>
	                          <div class="control">
	                             <div class="select">
	                                 <select name="tipo-select" id="tipo-select">
	                                       <option>Solicitud de Cedula de Identidad</option>
	                                       <option>Retiro de Cedula de Identidad</option>
	                                       <option>Solicitud de Certificado de Nacimiento</option>
	                                       <option>Solicitud de Certificado de Defunción</option>
	                                 </select>
	                             </div>
	                          </div>
	                      </div>
	                  </div>  
	                  <div class="card-footer has-text-centered">
	                     <div class="card-footer-item">
	                      <button type="submit" class="button">Ingresar Solicitud</button>
	                     </div>
	                  </div>
	              </div>
	           </form>
	        </div>
	    </div>
	     
	</main>

</body>
</html>