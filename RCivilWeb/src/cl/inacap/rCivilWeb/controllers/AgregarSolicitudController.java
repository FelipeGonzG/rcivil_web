package cl.inacap.rCivilWeb.controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cl.inacap.rCivilModel.dao.SolicitudesDAOLocal;
import cl.inacap.rCivilModel.dto.Solicitud;

/**
 * Servlet implementation class AgregarSolicitudController
 */
@WebServlet("/AgregarSolicitudController.do")
public class AgregarSolicitudController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Inject
	private SolicitudesDAOLocal solicitudesDAO;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AgregarSolicitudController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("WEB-INF/vistas/agregarSolicitud.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<String> errores = new ArrayList<>();
		
		String rut = request.getParameter("rut-txt").trim();
		if(rut.isEmpty()) {
			errores.add("Debe ingresar su Rut");
		}
		String nombre = request.getParameter("nombre-txt").trim();
		if(nombre.isEmpty()) {
			errores.add("Debe ingresar su nombre");
		}
		String tipo = request.getParameter("tipo-select").trim();
		if(tipo.isEmpty()) {
			errores.add("Ingrese el tipo de Solicitud que desea realizar");
		}
		
		if(errores.isEmpty()) {
			Solicitud solicitud = new Solicitud();
			solicitud.setRut(rut);
			solicitud.setNombre(nombre);
			solicitud.setTsolicitud(tipo);
			solicitudesDAO.save(solicitud);
			request.setAttribute("mensaje", "Solicitud Ingresada de forma exitosa");
		}else {
			request.setAttribute("errores", errores);
		}
		doGet(request, response);
		
	}

}
