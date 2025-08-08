public class ContaInvestimento extends Conta{

    public double saldo{get; private set;}

    //Construtor
    public ContaInvestimento(integer numero, Cliente titular){super(titular);}

    public double calcularTributo(){
        return this.saldo * 0.03;
    }

}