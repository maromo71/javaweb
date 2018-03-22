package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.Jogador;

/**
 *
 * @author maromo
 */
public class JogadorDAO {

    public final Connection connection;

    public JogadorDAO() {
        this.connection = new ConnectionFactory().getConnection();
    }

    //Adicionar um jogador no BD
    public void adicionar(Jogador jogador) throws SQLException {
        String sql = "insert into jogador "
                + "(nomeJogador, apelidoJogador, posicaoJogador, idadeJogador)"
                + " values(?, ?, ?, ?);";
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setString(1, jogador.getNome());
            stmt.setString(2, jogador.getApelido());
            stmt.setString(3, jogador.getPosicao());
            stmt.setInt(4, jogador.getIdade());
            stmt.execute();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    //Listar os jogadores do time
    public List<Jogador> listarJogadores() throws SQLException {
        List<Jogador> lista = new ArrayList<>();
        String sql = "Select * from jogador; ";
        try {
            ResultSet rs;
            PreparedStatement stmt = connection.prepareStatement(sql);
            rs = stmt.executeQuery(sql);
            while (rs.next()) {
                Jogador j = new Jogador();
                j.setNome(rs.getString("nomeJogador"));
                j.setApelido(rs.getString("apelidoJogador"));
                j.setPosicao(rs.getString("posicaoJogador"));
                j.setIdade(rs.getInt("idadeJogador"));
                lista.add(j);
            }
            return lista;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
}
