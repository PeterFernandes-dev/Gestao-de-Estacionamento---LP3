package br.computacao.AppEstacionamento.servlet;

import java.io.IOException;
import java.sql.Date;

import javax.net.ssl.SSLEngineResult.Status;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.computacao.AppEstacionamento.dao.CarroDao;
import br.computacao.AppEstacionamento.dao.CarroVagaDao;
import br.computacao.AppEstacionamento.model.Carro;
import br.computacao.AppEstacionamento.model.Fatura;
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
		
		CarroVagaDao dao = new CarroVagaDao();
		long cvid = Long.parseLong(request.getParameter("id"));
		carroVaga delcv = dao.findById(carroVaga.class, cvid).get();
		
		dao.delete(delcv);
		
		response.sendRedirect("conVC.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CarroVagaDao dao = new CarroVagaDao();
        if(request.getParameter("cvid") == null)
        {
        	carroVaga novoCV = new carroVaga();
        	Fatura fat = new Fatura();
        	Carro cr = new Carro();
        	
        	novoCV.setDataEntrada(Date.valueOf(request.getParameter("dataEntrada")));
        	novoCV.setDataSaida(Date.valueOf(request.getParameter("dataSaida")));
        	novoCV.setPrecoTotal(Double.parseDouble(request.getParameter("preco")));
        	fat.setSituacao(request.getParameter("situacao"));
        	fat.setTipoPagamento(request.getParameter("tipoPagamento"));
        	novoCV.setFatura(fat);
        	cr.setId(Long.parseLong(request.getParameter("id")));
        	novoCV.setCarro(cr);
        	
            dao.save(novoCV);


        }
        else {

            long carroid = Long.parseLong(request.getParameter("cvid"));
            carroVaga cv = dao.findById(carroVaga.class, carroid).get();
            Fatura fat = new Fatura();

            
            cv.setDataEntrada(Date.valueOf(request.getParameter("dataEntrada")));
            cv.setDataSaida(Date.valueOf(request.getParameter("dataSaida")));
            cv.setPrecoTotal(Double.parseDouble(request.getParameter("preco")));
        	fat.setSituacao(request.getParameter("situacao"));
        	fat.setTipoPagamento(request.getParameter("tipoPagamento"));
        	cv.setFatura(fat);
            dao.update(cv);
        }

        response.sendRedirect("conCarro.jsp");
	}

}
