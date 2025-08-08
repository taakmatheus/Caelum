public class Cliente {
    private string nome;
    private string cpf;
    private string rg;
    private string endereco;
    

    //construtores
    public Cliente(String nome, string cpf, string rg, string endereco) {
        this.nome = nome;
        this.cpf = cpf;
        this.rg = rg;
        this.endereco = endereco;
    }

    public Cliente() {}

    //gets e sets-----------------
    public void setNome(string nome) {
        this.nome =nome;
    }

    public string getNome() {
        return this.nome;
    }
    
    public void setCpf(string cpf) {
        this.cpf = cpf;
    }

    public string getCpf() {
        return this.cpf;
    }

    public void setRg(string rg) {
        this.rg = rg;
    }

    public string getRg() {
        return this.rg;
    }

    public void setEndereco(string endereco) {
        this.endereco = endereco;
    }

    public string getEndereco() {
        return this.endereco;
    }
    //fim gets e sets-----------------
}