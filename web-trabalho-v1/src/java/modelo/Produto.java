package modelo;

public class Produto {
    private int idProduto;
    private String nomeProduto;
    private boolean ativo;
    private double preco;
    private int qtdEstoque;
    private String principalFornecedor;

    public int getIdProduto() {
        return idProduto;
    }

    public void setIdProduto(int idProduto) {
        this.idProduto = idProduto;
    }

    public String getNomeProduto() {
        return nomeProduto;
    }

    public void setNomeProduto(String nomeProduto) {
        this.nomeProduto = nomeProduto;
    }

    public boolean isAtivo() {
        return ativo;
    }

    public void setAtivo(boolean ativo) {
        this.ativo = ativo;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }

    public int getQtdEstoque() {
        return qtdEstoque;
    }

    public void setQtdEstoque(int qtdEstoque) {
        this.qtdEstoque = qtdEstoque;
    }

    public String getPrincipalFornecedor() {
        return principalFornecedor;
    }

    public void setPrincipalFornecedor(String principalFornecedor) {
        this.principalFornecedor = principalFornecedor;
    }
    
    
}
