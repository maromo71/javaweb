package br.edu.faculdade.mvcsample.model.dao;

import br.edu.faculdade.mvcsample.model.entity.Computador;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ComputadorDao {
    private final Connection connection;
    
    public ComputadorDao(){
        this.connection = new ConnectionFactory().getConnection();
    }
    
    //Adicionar um registro na tabela tbComputador
    public void adicionar(Computador computador) throws SQLException{
        StringBuilder sb = new StringBuilder();
        sb.append("insert into tbComputador(descricao, marca, qtdMemoria, preco)");
        sb.append(" values(?, ?, ?, ?)");
        try {
            PreparedStatement stmt = connection.prepareStatement(sb.toString());
            stmt.setString(1, computador.getDescricao());
            stmt.setString(2, computador.getMarca());
            stmt.setInt(3, computador.getQtdMemoria());
            stmt.setDouble(4, computador.getPreco());
            stmt.execute();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    
    //Alterar um registro na tabela tbComputador
    public void alterar(Computador computador) throws SQLException{
        StringBuilder sb = new StringBuilder();
        sb.append("update tbcomputador set descricao=?, marca=?, qtdMemoria=?, preco=? ");
        sb.append(" where idComputador=?; ");
        try {
            PreparedStatement stmt = connection.prepareStatement(sb.toString());
            stmt.setString(1, computador.getDescricao());
            stmt.setString(2, computador.getMarca());
            stmt.setInt(3, computador.getQtdMemoria());
            stmt.setDouble(4, computador.getPreco());
            stmt.setInt(5, computador.getIdComputador());
            stmt.execute();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } 
    }
    
    //Excluir um registro na tabela tbComputador
    public void excluir(int idComputador) throws SQLException{
        StringBuilder sb = new StringBuilder();
        sb.append("Delete from tbComputador where idComputador=?;");
        try {
            PreparedStatement stmt = connection.prepareStatement(sb.toString());
            stmt.setInt(1, idComputador);
            stmt.execute();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    
    //Listar todos os computadores na tela
    public List<Computador> listar() throws SQLException{
        List<Computador> lista = new ArrayList<>();
        StringBuilder sb = new StringBuilder();
        ResultSet rs = null;
        sb.append("Select * from tbComputador");
        try {
            PreparedStatement stmt = connection.prepareStatement(sb.toString());
            rs = stmt.executeQuery(sb.toString());
            while(rs.next()){
                Computador computador = new Computador();
                computador.setIdComputador(rs.getInt("idComputador"));
                computador.setDescricao(rs.getString("descricao"));
                computador.setMarca(rs.getString("marca"));
                computador.setQtdMemoria(rs.getInt("qtdMemoria"));
                computador.setPreco(rs.getDouble("preco"));
                lista.add(computador);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally{
            if(rs !=null) rs.close();
        }
        return lista;
    }
    //Listar apenas um computador na tela
    public Computador listarEspecifico(int idComputador) throws SQLException{
        Computador computador = null;
        StringBuilder sb = new StringBuilder();
        ResultSet rs = null;
        sb.append("Select * from tbComputador where idComputador=?; ");
        try {
            PreparedStatement stmt = connection.prepareStatement(sb.toString());
            stmt.setInt(1, idComputador);
            rs = stmt.executeQuery();
            while(rs.next()){
                computador = new Computador();
                computador.setIdComputador(rs.getInt("idComputador"));
                computador.setDescricao(rs.getString("descricao"));
                computador.setMarca(rs.getString("marca"));
                computador.setQtdMemoria(rs.getInt("qtdMemoria"));
                computador.setPreco(rs.getDouble("preco"));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally{
            if(rs !=null) rs.close();
        }
        return computador;
    }
    
}
