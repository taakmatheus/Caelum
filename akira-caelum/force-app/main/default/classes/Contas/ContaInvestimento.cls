public class ContaInvestimento extends Conta implements I{
    public double CalculaTributos () {
        return this.saldo * 0.03;
    }
}