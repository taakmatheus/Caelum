public class Cliente {
    public string nome {get; private set;}
    public string cpf {get; private set;}
    public string rg {get; private set;}
    public string endereco {get; private set;}
    

    //construtores
    public Cliente(String nome, string cpf, string rg, string endereco) {
        this.nome = nome;
        this.cpf = cpf;
        this.rg = rg;
        this.endereco = endereco;
    }

    public Cliente() {}


}