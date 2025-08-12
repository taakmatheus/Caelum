public class ContaPoupanca extends ContaBanco implements InterfaceTributos{
    public override void saca(double valor){
        if (valor < 0.0){
            throw new ValorNegativoException();
        }
        if(valor + 0.10 > this.saldo){
            throw new SaldoInsuficienteException();
        }
        else{
            this.saldo -= valor + 0.10;
        }
    }
}