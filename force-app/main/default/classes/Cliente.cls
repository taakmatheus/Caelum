public with sharing class Cliente {
    private String nome;
    private String cpf;
    private String rg;
    private String endereco;

    public Cliente(String nome, String cpf, String rg, String endereco) {
        this.nome = nome;
        this.cpf = cpf;
        this.rg = rg;
        this.endereco = endereco;
    }

    public String getNome() {
        return this.nome;
    }

    public String getCpf() {
        return this.cpf;
    }

    public String getRg() {
        return this.rg;
    }

    public String getEndereco() {
        return this.endereco;
    }
}