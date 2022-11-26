package br.computacao.AppEstacionamento.servlet;

import java.io.IOException;

import javax.net.ssl.SSLEngineResult.Status;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.computacao.AppEstacionamento.dao.CarroDao;
import br.computacao.AppEstacionamento.dao.CarroVagaDao;
import br.computacao.AppEstacionamento.dao.VagaDao;
import br.computacao.AppEstacionamento.model.Carro;
import br.computacao.AppEstacionamento.model.Cobertura;
import br.computacao.AppEstacionamento.model.Vaga;
import br.computacao.AppEstacionamento.model.carroVaga;


/**
 * Servlet implementation class ServletCarroVaga
 */
@WebServlet({ "/ServletCarroVaga", "/controllerCV" })
public class ServletCarroVaga extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletCarroVaga() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*VagaDao dao = new VagaDao();
        if(request.getParameter("carroid") == null)
        {
        	Vaga novoVaga = new Vaga();
        	
        	novoVaga.setCobertura(Cobertura.valueOf(request.getParameter("cobertura").toUpperCase()));
        	novoVaga.setStatus(Status.valueOf(request.getParameter("status").toUpperCase()));
        	//novoVaga.setStatus(Status.valueOf(request.getParameter("status").toUpperCase()));
        	novoVaga.setPlaca(request.getParameter("placa"));
        	
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
	}*/

}
}
