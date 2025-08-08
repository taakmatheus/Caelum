public class ContaCorrente extends Conta{
    public double saldo {get; private set;}

    public ContaCorrente(Cliente titular){
        super(titular);
    }
    
    public override boolean sacar(double valorSaque) {
        if(this.saldo > valorSaque) {          
            this.saldo -= (valorSaque += 0.15);
            return true;
        } else {
            return false;
        }
    }

    public double calculaTributo() {
        return this.saldo * 0.02;
    }
}