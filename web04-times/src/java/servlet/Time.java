package servlet;

import dao.JogadorDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Jogador;

public class Time extends HttpServlet  {

    public List<Jogador> lista = new ArrayList<>();
    
    public void adicionarNoTime(Jogador j)throws SQLException, ClassNotFoundException {
        lista.add(j);
        //Agora grava no banco
        JogadorDAO dao = new JogadorDAO();
        dao.adicionar(j);
    }
    
    public List<Jogador> listaDeJogadores() throws SQLException, ClassNotFoundException{
        JogadorDAO dao  = new JogadorDAO();
        return dao.listarJogadores();
    }
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Jogador j = new Jogador();
        j.setNome(req.getParameter("nomeJogador"));
        j.setApelido(req.getParameter("apelidoJogador"));
        j.setPosicao(req.getParameter("posicaoJogador"));
        j.setIdade(Integer.parseInt(req.getParameter("idadeJogador")));
        try {
            this.adicionarNoTime(j);
        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        }
        
        PrintWriter out = resp.getWriter();
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Primeira Servlet</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1>Time e Lista de Jogadores</h1><hr />");
        try {
            for (Jogador jogador : this.listaDeJogadores()) {
                out.println("<p>");
                out.println("Jogador: " + jogador.getNome() + "<br />");
                out.println("Apelido: " + jogador.getApelido()+ "<br />");
                out.println("Posição: " + jogador.getPosicao()+ "<br />");
                out.println("Idade: " + jogador.getIdade()+ "<br />");
                out.println("</p>");
            }
            out.println("<hr />");
        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException();
        }
        out.println("<a href=\"index.html\">Home</a>");
        out.println("</body>");
        out.println("</html>");
        
    }
    
   

}
