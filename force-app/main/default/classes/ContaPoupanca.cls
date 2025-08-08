public class ContaPoupanca extends Conta implements ITributavel  {
    public double saldo {get; private set;}
    
    public ContaPoupanca(Integer numero, Cliente titular) {
        super(numero, titular);
    }
    //substituindo o saque colocando a taxa de 10 centavos
    public override boolean sacar(double valorSaque) {
        if(this.saldo > valorSaque) {          
            this.saldo -= (valorSaque += 0.10);
            return true;
        } else {
            return false;
        }
    }
    
    public double calcularTributo() {
        return this.saldo * 0.03;
    }
}