package aplicacao;

public class Usuarios {
    
    private int id;
    private String nome;
    private String cpf;
    private String senha;
    private int tipo;



    public Usuarios(String cpf, String senha) {
        this.cpf = cpf;
        this.senha = senha;
    }

    public Usuarios(int id, String nome, String cpf, String senha, int tipo) {
        this.id = id;
        this.nome = nome;
        this.cpf = cpf;
        this.senha = senha;
        this.tipo = tipo;
    }

    public Usuarios() {
    }

    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public char getTipo() {
        return (char) tipo;
    }

    public void setTipo(int tipo) {
        this.tipo = tipo;
    }
    
    
    
}
