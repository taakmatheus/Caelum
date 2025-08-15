public with sharing class Cliente {
    public String nome {get; private set;}
    public String cpf {get; private set;}
    public String rg {get; private set;}
    public String endereco {get; private set;}
    public Integer idade {get; private set;}

    public Cliente(String nome, String cpf, String rg, String endereco, Integer idade) {
        this.nome = nome;
        this.cpf = cpf;
        this.rg = rg;
        this.endereco = endereco;
        this.idade = idade;
    }

}