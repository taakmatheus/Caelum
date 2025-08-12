public with sharing class ContaInvestimento  extends Conta implements Tributavel{
    public ContaInvestimento() {
    }
    public ContaInvestimento(Cliente titular) {
        this.titular = titular;
    }

    public override void saca(Double valor){
        this.saldo -=(valor + 0.10);
    }
    
    public override void deposita(Double valor){
        this.saldo += valor;
    }

    public double calculaTributo() {
        return this.saldo * 0.03;
    }
}