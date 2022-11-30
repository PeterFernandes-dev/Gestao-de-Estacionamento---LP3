package br.computacao.AppEstacionamento.servlet;

import java.io.IOException;
import java.sql.Date;
import java.sql.Time;

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
import br.computacao.AppEstacionamento.model.Fatura;
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
		
		CarroVagaDao dao = new CarroVagaDao();
		long cvid = Long.parseLong(request.getParameter("id"));
		carroVaga delcv = dao.findById(carroVaga.class, cvid).get();
		
		Vaga vg = new Vaga();
		
		VagaDao vdao = new VagaDao();
		vg = vdao.findById(Vaga.class, delcv.getVaga().getId()).get();
		vg.setStatus(br.computacao.AppEstacionamento.model.Status.VAZIA);
		
		vdao.save(vg);
		
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
        	Vaga vg = new Vaga();
        	VagaDao vgdao = new VagaDao();
        	
        	novoCV.setDataEntrada(Date.valueOf(request.getParameter("dataEntrada")));
        	novoCV.setHoraEntrada((request.getParameter("horaEntrada")));
        	novoCV.setDataSaida(Date.valueOf(request.getParameter("dataSaida")));
        	novoCV.setHoraSaida((request.getParameter("horaSaida")));
        	fat.setSituacao(request.getParameter("situacao"));
        	fat.setTipoPagamento(request.getParameter("tipoPagamento"));
        	novoCV.setFatura(fat);
        	cr.setId(Long.parseLong(request.getParameter("id")));
        	
        	vg.setId(Long.parseLong(request.getParameter("Vagaid")));
        	vg = vgdao.BuscaVaga(vg.getId());
        	
        	vg.setStatus(br.computacao.AppEstacionamento.model.Status.OCUPADA);
        	vgdao.update(vg);
        	novoCV.setCarro(cr);
        	novoCV.setVaga(vg);
        	
        	//vg = vgdao.BuscaVaga(vg.getId());
        	//vg.setStatus(br.computacao.AppEstacionamento.model.Status.OCUPADA);
        	
        	novoCV.setPrecoTotal(
        			novoCV.Calcular(
        					novoCV.getDataEntrada(),
        					novoCV.getDataSaida(), 
        					novoCV.getHoraEntrada(), 
        					novoCV.getHoraSaida(), 
        					vg.getPreco()));
        	
            dao.save(novoCV);

        }
        else {

            long carroid = Long.parseLong(request.getParameter("cvid"));
            carroVaga cv = dao.findById(carroVaga.class, carroid).get();
            Fatura fat = new Fatura();

            
            cv.setDataEntrada(Date.valueOf(request.getParameter("dataEntrada")));
            cv.setHoraEntrada((request.getParameter("horaEntrada")));
            cv.setDataSaida(Date.valueOf(request.getParameter("dataSaida")));
            cv.setHoraSaida((request.getParameter("horaSaida")));
            cv.setPrecoTotal(Double.parseDouble(request.getParameter("preco")));
        	fat.setSituacao(request.getParameter("situacao"));
        	fat.setTipoPagamento(request.getParameter("tipoPagamento"));
        	cv.setFatura(fat);
            dao.update(cv);
        }

        response.sendRedirect("carrosEstacionados.jsp");
	}

}
