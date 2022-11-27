package br.computacao.AppEstacionamento.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.computacao.AppEstacionamento.dao.CarroDao;
import br.computacao.AppEstacionamento.model.Carro;

/**
 * Servlet implementation class ServletCarro
 */
@WebServlet({ "/ServletCarro", "/controllerCarro" })
public class ServletCarro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletCarro() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CarroDao dao = new CarroDao();
		long carroid = Long.parseLong(request.getParameter("id"));
		Carro delcarro = dao.findById(Carro.class, carroid).get();
		
		dao.delete(delcarro);
		
		response.sendRedirect("conCarro.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CarroDao dao = new CarroDao();
        if(request.getParameter("carroid") == null)
        {
        	Carro novoCarro = new Carro();

        	novoCarro.setPlaca(request.getParameter("placa"));
        	novoCarro.setCor(request.getParameter("cor"));
        	novoCarro.setModelo(request.getParameter("modelo"));
        	
            dao.save(novoCarro);

        }
        else {

            long carroid = Long.parseLong(request.getParameter("carroid"));
            Carro carro = dao.findById(Carro.class, carroid).get();

            
            carro.setPlaca(request.getParameter("placa"));
        	carro.setCor(request.getParameter("cor"));
        	carro.setModelo(request.getParameter("modelo"));
            dao.update(carro);
        }
        
        
        response.sendRedirect("conCarro.jsp");
		
	}

}
