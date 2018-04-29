package br.edu.faculdade.mvcsample.controller;

import br.edu.faculdade.mvcsample.model.dao.ComputadorDao;
import br.edu.faculdade.mvcsample.model.entity.Computador;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Computador/ComputadorController")
public class ComputadorController extends HttpServlet {

    public ComputadorController() {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String cmd = request.getParameter("cmd");
            if(cmd.equalsIgnoreCase("editar")){
                int id = Integer.parseInt(request.getParameter("id"));
                editar(request, response);
                request.getRequestDispatcher("editar.jsp").forward(request, response);
            }
            if(cmd.equalsIgnoreCase("excluir")){
                int id = Integer.parseInt(request.getParameter("id"));
                excluir(request, response);
                request.setAttribute("msg", "Excluído com sucesso!");
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
        } catch (Exception e) {
            request.setAttribute("msg", "Erro: " + e.getMessage());
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        try {
            String cmd = request.getParameter("cmd");

            if (cmd.equalsIgnoreCase("adicionar")) {
                adicionar(request, response);
                request.setAttribute("msg", "Gravado com sucesso!");
                request.getRequestDispatcher("listar.jsp").forward(request, response);
            }
            if (cmd.equalsIgnoreCase("alterar")) {
                alterar(request, response);
                request.setAttribute("msg", "Gravado com sucesso!");
                request.getRequestDispatcher("listar.jsp").forward(request, response);
            }
        } catch (Exception e) {
            request.setAttribute("msg", "Erro: " + e.getMessage());
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }

    public void adicionar(HttpServletRequest request, HttpServletResponse response) 
            throws Exception {
        Computador c = new Computador();
        c.setDescricao(request.getParameter("txtDescricao"));
        c.setMarca(request.getParameter("txtMarca"));
        c.setPreco(Double.parseDouble(request.getParameter("txtPreco")));
        c.setQtdMemoria(Integer.parseInt(request.getParameter("txtMemoria")));
        ComputadorDao dao = new ComputadorDao();
        dao.adicionar(c);
    }

    public void alterar(HttpServletRequest request, HttpServletResponse response) 
            throws Exception {
        Computador c = new Computador();
        c.setIdComputador(Integer.parseInt(request.getParameter("txtIdComputador")));
        c.setDescricao(request.getParameter("txtDescricao"));
        c.setMarca(request.getParameter("txtMarca"));
        c.setPreco(Double.parseDouble(request.getParameter("txtPreco")));
        c.setQtdMemoria(Integer.parseInt(request.getParameter("txtMemoria")));
        ComputadorDao dao = new ComputadorDao();
        dao.alterar(c);
    }

    public void editar(HttpServletRequest request, HttpServletResponse response) 
            throws Exception {
        ComputadorDao dao = new ComputadorDao();
        Computador c;
        int id = Integer.parseInt(request.getParameter("id"));
        c = dao.listarEspecifico(id);
        request.setAttribute("txtIdComputador", c.getIdComputador());
        request.setAttribute("txtDescricao", c.getDescricao());
        request.setAttribute("txtMarca", c.getMarca());
        request.setAttribute("txtPreco", c.getPreco());
        request.setAttribute("txtMemoria", c.getQtdMemoria());
    }

    public void excluir(HttpServletRequest request, HttpServletResponse response) 
            throws Exception {
        Computador c = new Computador();
        c.setIdComputador(Integer.parseInt(request.getParameter("id")));
        ComputadorDao dao = new ComputadorDao();
        dao.excluir(c.getIdComputador());
    }

}
