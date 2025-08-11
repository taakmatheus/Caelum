public with sharing class Cliente {

    private String _nome;
    private String _cpf;
    private String _rg;
    private string _endereco;
    private int _idade;

    public String nome { get { return _nome; } set { _nome = value; } }
    public String cpf { get { return _cpf; } set { _cpf = value; } }
    public String rg { get { return _rg; } set { _rg = value; } }
    public string endereco { get { return _endereco; } set { _endereco = value; } }
    public int idade { get { return _idade; } set { _idade = value; } }
    
    public Cliente() {}

    public Cliente(String nome){
        this.nome = nome;
    }

    public Cliente(String none, int idade){
        this.nome = none;
        this.idade = idade;
    }

    public Cliente(String nome, String cpf, String rg, String endereco, int idade) {
        this.nome = nome;
        this.cpf = cpf;
        this.rg = rg;
        this.endereco = endereco;
    }

    public bool EMaiorIdade(){
        return idade >= 18;
    }


}