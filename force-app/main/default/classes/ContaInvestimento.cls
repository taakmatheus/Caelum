public class ContaInvestimento extends ContaBanco {
    public double CalcularTributo(){
        return this.saldo * 0.02;
    }
}