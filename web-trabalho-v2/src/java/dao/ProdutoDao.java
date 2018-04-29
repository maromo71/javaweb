/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.Produto;

/**
 *
 * @author maromo
 */
public class ProdutoDao {

    public final Connection connection;

    public ProdutoDao() {
        this.connection = new ConnectionFactory().getConnection();
    }

    //Adicionar um jogador no BD
    public void adicionar(Produto produto) throws SQLException {
        String sql = "insert into tbl_produtos "
                + "(nomeProduto, ativo, preco, qtdEstoque, principalFornecedor)"
                + " values(?, ?, ?, ?, ?);";
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setString(1, produto.getNomeProduto());
            stmt.setBoolean(2, produto.isAtivo());
            stmt.setDouble(3, produto.getPreco());
            stmt.setInt(4, produto.getQtdEstoque());
            stmt.setString(5, produto.getPrincipalFornecedor());
            stmt.execute();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    //Listar os jogadores do time
    public List<Produto> listarProdutos() throws SQLException {
        List<Produto> lista = new ArrayList<>();
        String sql = "Select * from tbl_produtos; ";
        try {
            ResultSet rs;
            PreparedStatement stmt = connection.prepareStatement(sql);
            rs = stmt.executeQuery(sql);
            while (rs.next()) {
                Produto p = new Produto();
                p.setIdProduto(rs.getInt("idProduto"));
                p.setNomeProduto(rs.getString("nomeProduto"));
                p.setAtivo(rs.getBoolean("ativo"));
                p.setPreco(rs.getDouble("preco"));
                p.setQtdEstoque(rs.getInt("qtdEstoque"));
                p.setPrincipalFornecedor(rs.getString("principalFornecedor"));
                lista.add(p);
            }
            return lista;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
