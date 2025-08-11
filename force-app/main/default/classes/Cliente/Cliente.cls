public with sharing class Cliente {

    private String _nome;
    private String _cpf;
    private String _rg;
    private string _endereco;
    private Integer _idade;
    protected Boolean _emancipado;

    public String nome { get { return _nome; } set { _nome = value; } }
    public String cpf { get { return _cpf; } set { _cpf = value; } }
    public String rg { get { return _rg; } set { _rg = value; } }
    public string endereco { get { return _endereco; } set { _endereco = value; } }
    public Integer idade { get { return _idade; } set { _idade = value; } }
    public Boolean emancipado { get { return _emancipado; } set { _emancipado = value; } }

    public Boolean podeAbrirContaSozinho{ get { return ( (EMaiorIdade() || emancipado) && String.IsBlank(cpf)); } }

    public Cliente() {}

    public Cliente(String nome){
        this.nome = nome;
    }

    public Cliente(String none, Integer idade){
        this.nome = none;
        this.idade = idade;
    }

    public Cliente(String nome, String cpf, String rg, String endereco, Integer idade, Boolean emancipado) {
        this.nome = nome;
        this.cpf = cpf;
        this.rg = rg;
        this.endereco = endereco;
        this.idade = idade;
        this.emancipado = emancipado;
    }

    public Boolean EMaiorIdade(){
        return idade >= 18;
    }


}