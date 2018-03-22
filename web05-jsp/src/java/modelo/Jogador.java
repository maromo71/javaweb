
package modelo;

import java.io.Serializable;

/**
 *
 * @author maromo
 */
public class Jogador implements Serializable {
    private String nome;
    private String apelido;
    private String posicao;
    private int idade;

    public Jogador() {
        nome ="";
        apelido="";
        posicao="";
        idade =0;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getApelido() {
        return apelido;
    }

    public void setApelido(String apelido) {
        this.apelido = apelido;
    }

    public String getPosicao() {
        return posicao;
    }

    public void setPosicao(String posicao) {
        this.posicao = posicao;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }
    
    
    
}
