package br.computacao.AppEstacionamento.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.computacao.AppEstacionamento.dao.CarroDao;
import br.computacao.AppEstacionamento.dao.VagaDao;
import br.computacao.AppEstacionamento.model.Carro;
import br.computacao.AppEstacionamento.model.Cobertura;
import br.computacao.AppEstacionamento.model.Status;
import br.computacao.AppEstacionamento.model.Vaga;

/**
 * Servlet implementation class ServletVaga
 */
@WebServlet({ "/ServletVaga", "/controllerVaga" })
public class ServletVaga extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletVaga() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		VagaDao dao = new VagaDao();
		long vagaid = Long.parseLong(request.getParameter("id"));
		Vaga delvaga = dao.findById(Vaga.class, vagaid).get();
		
		dao.delete(delvaga);
		
		response.sendRedirect("conVaga.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		VagaDao dao = new VagaDao();
        if(request.getParameter("vagaid") == null)
        {
        	Vaga novoVaga = new Vaga();
        	
        	novoVaga.setCobertura(Cobertura.valueOf(request.getParameter("cobertura").toUpperCase()));
        	novoVaga.setStatus(Status.valueOf(request.getParameter("status").toUpperCase()));
        	novoVaga.setIdentificacao(request.getParameter("identificacao"));
        	novoVaga.setPreco(Double.parseDouble(request.getParameter("preco")));
        	
            dao.save(novoVaga);


        }
        else {

        	long vagaid = Long.parseLong(request.getParameter("vagaid"));
        	Vaga vaga = dao.findById(Vaga.class, vagaid).get();

        	vaga.setCobertura(Cobertura.valueOf(request.getParameter("cobertura").toUpperCase()));
        	vaga.setStatus(Status.valueOf(request.getParameter("status").toUpperCase()));
        	vaga.setIdentificacao(request.getParameter("identificacao"));
        	vaga.setPreco(Double.parseDouble(request.getParameter("preco")));
            dao.update(vaga);
        	
        }

        response.sendRedirect("conVaga.jsp");
	}

}
